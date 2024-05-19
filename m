Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758F122EE3
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716126743; cv=none; b=g3GLi84FAU7vAT5C2yVqORn9w1E3aaqzvAUmVRPZK9Z4gYeikZRCWPUyst5/oeWzUMEF9Law1u+nEQv6tyCJtWbW82uvlNN501nUvJDfv7Zs9dsBeT6naCCcRRit36aNI5ty3Qk+mwvqnCL84IpVqSwwDYIoTRruppgOkS4Kxjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716126743; c=relaxed/simple;
	bh=mlP/TBFyiVfrUDnCiRiw+7r3BF8NoSUgkjX1qwxds24=;
	h=To:Subject:From:Message-Id:Date; b=uu37/QUQdlUnB9713Ral5C6jakipZXW3yJ2jgV1nE5NRzQuQfrZPn3vEOOh0lvWmSJ1oaOLrv+buWPoeJTvx/siu1XZhx8UM0yMzuWfLFC5V7O6Um8EXppvy8QSefecJdz6B/P+MaUaZgBHhr+lrT0mbuRFxb5S2E5YtZ/id17Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7DBu7U7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7DBu7U7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 068E4C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716126743;
	bh=mlP/TBFyiVfrUDnCiRiw+7r3BF8NoSUgkjX1qwxds24=;
	h=To:Subject:From:Date:From;
	b=K7DBu7U7hqiR0vS2oTNYTWV73Y83hKQCcq5kc+mWIZsaWSPq2hUvU8viUyPHqagzs
	 rY1rXZIap3AdM0t/QRgK3VEQ7ZpBGsSf2tSWWSi+8JggQah5BGw9bXX3ntABPFdI3d
	 6cnW+r9oTybnv5VxUejlUNGhDBrelCkgdRrxheNe/hketmgcO0Zd04f7emfXoMkzGy
	 ccIISk8x4zVVwKQsCKvj2RNSagrBNMFOzrBbZJEaD0xw/qiMpVMIpxIPGAGIyPFsZc
	 D+oetppthY0SSFLBXgB8FIIeKnnhspQbt01iZG4Zc5SwNBDA39BsSorZDSDAgTAkpc
	 kHqlTmDQRNBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC7B7C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171612674287.27528.10748224882195764465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a800197af7a717d7450efb3dfede82d10bd18cf81f12513e30fd2930e1372ca2
Date: Sun, 19 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716126742
