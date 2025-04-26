Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D9517A2F0
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745639994; cv=none; b=FBTaVXHwPRRD9ro/el+832vGrrpbgylZwTGzFseLz/esco8QZRLLqCGUiuyZQMut7DbiBeYRttgslySn8ht3bzohQ7fWK9c+K52d+2a3B3i9dKlt+57urxBDhcNND7/qK478qzyBQoTnGXbXJ3kfRhUqgdAWppZGKMLJ2Duggag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745639994; c=relaxed/simple;
	bh=JZN2er9ZgW6zcRlteIZMd5nfVWDlLfQUnVqHIQkvKac=;
	h=To:Subject:From:Message-Id:Date; b=XP53x/4TUVcJMGiYrgOCASjkuz56Tg/d9Y1YX9pVqvaa78eLYVzkKbgbbePmH5nVFJvWRS6BUQbdTdt4q1+lrnMOYBiW5/T3tnuUW2Elz71DBSzIakfxQR8aSXKROU1KG8jtr9cqe0OOQdGns/EOEMbYUGSoekAj86tTp/1xZvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syDLiD++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syDLiD++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745639993;
	bh=JZN2er9ZgW6zcRlteIZMd5nfVWDlLfQUnVqHIQkvKac=;
	h=To:Subject:From:Date:From;
	b=syDLiD++JN1kHmiAvdPpa0iCv8ednQBbFfzFkTD91bRJM47pc6Sb7NAFPlqYqGsi0
	 0mmjIBun5bEZILthCrGBi8hWixH4QuitfiVROs8LbFQkXJ39DCMvvBkEX7q1ZYRHHT
	 KFYhc3VZcySB8NQjGizLeyJUUhSGg58xtasLYuEKv+d68O2VM3L1vXlZ8SqNTZkqDi
	 kniEbCUrNcWitszmxywDOdAda2A4JIh1hnFxwoI3TEG4yKxDy8jI6xuIv6A2sIAASm
	 iw/6mE43yzNx+Q2+MQ0+d/mlzUhdFeGBCfFrrtqH84RGdEdlmc1GH8MoqlmjIhk1/F
	 ak3B9nwb+9rlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C87C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563999357.5186.2739547295534647005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d558dbf627062d1ee38a5764b12cc0ea00973ed72eaf6700809f53a24ac153
Date: Sat, 26 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745639993
