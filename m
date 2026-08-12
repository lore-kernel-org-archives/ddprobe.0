Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA1623507C
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786493434; cv=none; b=RTHNu9MHHafavamLUxfulPJG+fowcmVfEKI6yy4+Lm4T5fbNSil0TSc+HGZzsi2HHqMctuqCz29CLQGHeakHlPsGUYLRYBi9iR5LqB7h7UH6HlR9lEYUGLkYlSC/VWWXbf/nh9KpL3sR6MSMFBxAX5szyRTn0yiLIPMVxU36xzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786493434; c=relaxed/simple;
	bh=l4bQDfrtEvvtrZ2RFcdmzVNmgL9RVAyPDyqBv0QzFBU=;
	h=To:Subject:From:Message-Id:Date; b=XR5eewGcnIpobfA4hMDpKjob0gLfICJLwjOzve64RJ0GU4Am017/8ZOa2vRBgeGl4HP1R+GYhKAhtewKPGP0yz9FwxJKBiZ5dKXHY1Jwvt2/4fOh/ekjhm7Tz3wahUpypVDHlYDGcQ8lhGOGjTKz0bNCAxpU7jBs6Tt6xNcOwp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXlcX8QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXlcX8QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACD7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786493433;
	bh=l4bQDfrtEvvtrZ2RFcdmzVNmgL9RVAyPDyqBv0QzFBU=;
	h=To:Subject:From:Date:From;
	b=GXlcX8QKBiJeMfhDKuYZXKz4qb+qhIR1eeZZqMmoNkjq4YAO+KeNkBImhDoJXNLJ+
	 cFU8KHcOYPioo6VXTnutRgJ371gkDKwWoSX4o5cZEiPuhRfAPQkSkiR2FX5/kfyfKy
	 irhpvWw7gqm4Y4hR4ROE05uqy/QCfrkcUgeJ0s3KQYQyh6NPU+1lOx6KPwHkOBCRW5
	 Ig8oy6VeevizAEh3TB21p9tSBO3/lFGUo/V3XLAh5CZTblgBnpv7E9NUX/Fona/7jH
	 aC82FsF9H9cLDXQszI25rPtElqQcdpKmwv7Vx2TVfWuLAodYLWEpShtTqBXZ4/3/0F
	 seZvfCZVxEasg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D2C5AC67
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649343368.19827.2690138064824927412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e1c258ce99e43977a224348dba64b68ccff7641e3bd720b08b097823949ecd
Date: Wed, 12 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786493433
