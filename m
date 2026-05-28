Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38913343888
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779945154; cv=none; b=YPCTKhIy/IMI7/Kyi6yOny4GVdZpwEGw/CHxddJr/wEINjKSQCx3WB5+ClJtx1sewQTh8TpqPT8OQ7r3NYW2I2HX/iiMedtTamuuz3+2azoN4XBMu6Pn6kXBZs4C0gqTYYve7yfeP9L2n3vYAkR6rtEAxQ5gUYEgZr1f6C5zgtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779945154; c=relaxed/simple;
	bh=FU+9MZJZN3vcXq5juBMJqeL+ITsyDH1Syjn4fuMCqX8=;
	h=To:Subject:From:Message-Id:Date; b=DgYgB3zay2oMoRCu/GPhxEgLWUlh56F2c8tfCCPpf/BXtvFL2cBG5EdeXxmKgMDQWIbQ3DhAaGB8i89NO5PoJfmi+ppbpsVRd8ohksn8Luldqz00ICPZKxr6GSWRVmT77+MpKyX0IOLHS7n7iK97ytVh26pMS9niW1yJtUSdfYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IV8exa3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IV8exa3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9439C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779945153;
	bh=FU+9MZJZN3vcXq5juBMJqeL+ITsyDH1Syjn4fuMCqX8=;
	h=To:Subject:From:Date:From;
	b=IV8exa3QsrTRV9+SIHhBRAmEx3iLq5k586ihoje1k8MNSqtlZf8NX1n+nWqDq4oDi
	 wJreOu/+UoX23KQfy4nnyR424UaTmdhvzDoWKMFxekrHq933SbJTp0UUpXQBE5760Z
	 bdIkuAO/CqhgzumExe6byJ4ACxyE6VhjcQ7ZL+EAHk1NMfVMaev8lOX9uxU6e1TSvC
	 EzkmwIAuXpRrVxTFTlerGfDmlO3d7sz7fugthSHihh8XRjrFUqhjpWeUFLehXO4bqI
	 BU1kG/So1undQaw6xuYoB1ovCJBINybmtcXcZmhANYiZqOJMp3P6ySXNwnSGi2y4zY
	 eMENy+PP9J+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC14CCD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994515368.20252.15595980940433965953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc20ba952bb20546820eb4213c857c8ad542c03d51a36e7b935496beb976dcc9
Date: Thu, 28 May 2026 05:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779945153
