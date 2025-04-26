Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305781C36
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745700594; cv=none; b=FCgsLUbb1E4PzDEbTUisjlPPIzcTqtVRlQ1Tx+0vFSOJPdFtJH1kyzuZXaPJWZQJrwWYqELhny9DcLcZHkcIDLsY6Hwr1Ro2KdXRo1/r8cnZB70/U4k8XnLlDovrI0hokBaCRyw0VjHS6M4PBLJQ/PsMaVpy3hwy1MobubGeUNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745700594; c=relaxed/simple;
	bh=fkRGyLFYMZ07NcXnPbeYGAc1z2OEH4FS2oQWPrqk3Pw=;
	h=To:Subject:From:Message-Id:Date; b=br2mQCpwu31CK4871RVapKdGPGXnOY3WPowBfv3RTIa+cFfh/ZRLZ8SWOKTvLitcMsctMF8cnmud88sF+zL+qGyIzoieCZDXdo6YDOrvl1CfOc1MzcBbDiinYHrnaMIuO6lPwnBhZO+mhzNehDm0IEHxEFqb98l4mVJic52Szwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRfghGeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRfghGeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1217C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745700593;
	bh=fkRGyLFYMZ07NcXnPbeYGAc1z2OEH4FS2oQWPrqk3Pw=;
	h=To:Subject:From:Date:From;
	b=kRfghGeh6q1f8+WEmDQWkLm2miNaS36BuXO9W+9sGCBMHyisSfHgNIOoWVSyo9iSv
	 9kuQEJ2LOkM2VCo2CGIZjnRI/q0BxwwfcuPuj9G2s1TAjPPpflHF4r2zVKTd7HNPcQ
	 CvuQ8Iz6W2RMbKXjCCIaDX5ogiF8fwvDPHnBK7ijaVlKEhmrOtBHD4mBXzqW840TYi
	 byos0wMFcgFfQCGQSpqe9LrxINXvzUGi8d31SHjEGDOxOdUSP9GYtqx7Lt4s+FUIgS
	 EHUfRbKsi/fClL9CiNIfsdLojvAr+e99FIwd/GVA1Arn9ff5mMu5o9kXVIdlXM5OTT
	 YsV/ER+OAZbew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E24EC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570059357.3082.9559174630138942839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361a29454b43f30c90dd9559194d7eb51d96a3ed43c16173cf08ab956060a759
Date: Sat, 26 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745700593
