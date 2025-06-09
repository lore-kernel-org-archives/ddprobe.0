Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB6041C69
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749484794; cv=none; b=FTRxxb+vgs0xcBBr0aJJ+MAEJoXnXacukU5tmBtuLFmnCwP+SFhRxfHfbdCCkgqlhmgZCGILYChxr5BttUnzdHitZxyjgLTSnQz/ZyCpr3M6UF8gBBLsnq/YFMMSSdfyYJNcSe3c9A9efaRPT407UWj2RVw+MQNwo1YWaUDyBkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749484794; c=relaxed/simple;
	bh=SV0o7ynlush7PJpAPajXYolDBENM4EY45V3MXdLYprI=;
	h=To:Subject:From:Message-Id:Date; b=uO6jzdZ4k8o3PsnMNo7UsVHEVEdQyEd7kzKH3+yLoN0QWXe/1Yng5qM0nmTGJCbq9lD5SqsxCz8b05dSBrbocds0vsLCvbRTOP8cEGHEYEJlOp3IB+zVjwxDd+tMNamzQkPyUCRbfxzxC2GNrMPSdn7vGnQ6uxXKZb5gF+myJW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6LGIejB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6LGIejB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E6C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749484793;
	bh=SV0o7ynlush7PJpAPajXYolDBENM4EY45V3MXdLYprI=;
	h=To:Subject:From:Date:From;
	b=A6LGIejB4r0YXOU4DyjcEde2vN+20cJLfr6XIqSd4m0jCLLVwE9C0XKEtA1YYPOu2
	 ahjm2a7HXjlSJPVkwi425s2l+xcvgrOXhlA4fAWTPOsxW5cEwUs73zCCAM1tRXN2qN
	 6JjVYLI7LyQMIAEC86TcoPD4R2lzSVNcsHuVWMaGDgjws9i1UHHNLP4KlA6Eso9cKI
	 sYsm/jdU5b80decen0e5IRAGeZt1vnJ5Bzcv1Nd463m4MesoYX9D5IDaaC75s8AEJI
	 gKuWQkLJsQS4nSjUBPWcpyKyQxf9MHPMQ2nvasGT96Y+4nAnZTrjwShF7s9Q86xlNI
	 jE+wcpCpPY1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91700C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948479357.22853.3147072772929665782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dedacb6772e19aca9c559b679fd885ebcfd36663cee2ebe31db2610504e69c
Date: Mon, 09 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749484793
