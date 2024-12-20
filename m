Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F956800
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 01:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734659754; cv=none; b=F7X1il40KWpGWivLA4uo7eE4CbXKu863Ou/+uJ4uWRtNBvrVnklvy+0yfzX9HUvExTfwIpSEof9pstS2XcbTiZeyBjEWBGRlavAcGEdbHEuhlyNZDIt10rJ6f1EgNet/DThVcQtZJJhQ/VraIa0r+IS/SU9ZTnIPdMiPl6ol0TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734659754; c=relaxed/simple;
	bh=VC0fiolPK3Ds/RLTwS1C2srgunS4OJXrqxU9IjQ0XnM=;
	h=To:Subject:From:Message-Id:Date; b=QVHqlPcee6/9tMiPPbuQqlWfo+pTO5hCODHa2sPsdqsPWH0LZIr/VlQunH0dABtTBKzowfk+Uw6LAuZiNFL16DRJ1g4bmTTSzfFm3WKqW2ScuP3dNMFi/hrpXCnp+ncqsWOOQJbTJKKb02m82mMDBuUSDtDwv3qObLIFWQxyW0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uioRGVQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uioRGVQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD13C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734659753;
	bh=VC0fiolPK3Ds/RLTwS1C2srgunS4OJXrqxU9IjQ0XnM=;
	h=To:Subject:From:Date:From;
	b=uioRGVQZ+Kx4rzzfqBiGt90uWuCYYL42/c2upR1I07XsFOTzWw2AgdvjjY4Clf23O
	 esGhMUMEqC/e0jrpgkEsWjdYu+qctUSF6I5sP9Xm6TT6YrCDBPrPpxW8ixbSZtROZz
	 5uBH9xrlWJ4moUxtjVWAgIi58p7zAPQrwYU8Fflj6HaXQKDvYNEYwrJln1ubeqpzF0
	 ukf3yHj3qJBckJjsRtkkVRL1epK1pGto1BrcE+J5UmZdfo+NDIqYLoEtt2pT9xb7DP
	 JSrqAcnbhRfeiGcxn1u24vu2hnIhxKY/ihoAL6hcfkAZg9M2d28+/a7sOWRh1VddRm
	 bRj+I3mqaLpFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FE1E77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465975361.1081.1380077424423915201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7795141ebb89596fd3a561925c2e8a90e8be0f2b54a54a57e484e688e824b3d
Date: Fri, 20 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734659753
