Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E56B4B048D
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786753834; cv=none; b=Yxpy/vSm4X+XEAJTY8CKnqjqfIZSGmfsmxBBlgRQtlOFMnEEhq99gFDZi/FJD8LUnXV/DlhCGtd5qjx0OzVrI91BlUsHujRjA0+l0dOCoEaOHTGoBCxEzg1Z9a+pH2pV3POcJ2KjVsT5aAbaoNK/9W1/60JHXZBXRk3Qu6jE/UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786753834; c=relaxed/simple;
	bh=7S9/c+13om1WEuddBEppsVJc+Dc5MTcEsBR/TKmT87A=;
	h=To:Subject:From:Message-Id:Date; b=S+3O4urykh1M2hDX3pGR7/NbI6tZ6jJPDLzmLMFLzRb1DK4BoaAPtm6AUiZoRrkXVyl8KimP2o0C1JxX2CTK+S8lg+A4qHJxIi01gmfJsHsxwOc2CQp333DHT0x4pVKgM1tbpGnqQNTGvS4xFZRw6g7QTPhPrit0GOfNYLzJ+3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M91fOtsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M91fOtsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45DDC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786753833;
	bh=7S9/c+13om1WEuddBEppsVJc+Dc5MTcEsBR/TKmT87A=;
	h=To:Subject:From:Date:From;
	b=M91fOtsPieS1GkZEYx/g/BzTZ8e2hiuKYIvmfclhlYCfyxTvfLaXouVnJhd7CkFmt
	 24SaZQraJZhk/lm3YdaGuPPBfvQiUtl2Tj0LpRUuv/pZ58Ajt8Rx6epehXYp4Q4mH3
	 wluESbaay143/Pq/LzIDUyOxAAOx+X72KBOK9/em5QjepkZ+4Z81z0dEeX3SFHbPLo
	 TbtAXP94cVLFobrSprBv/KvLct2T+r691EvpFCFJO3z2FksUtRPcX4rkEQTU8z+rAS
	 ZkRoFyXglmdG1tU+5AV3KIMZlM2eh8JMN9aUqtlc+OLOlZzi/giSOSx/FZWaM/7ZN0
	 ycqCyxX/QeJOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD110C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675383368.21702.11824015907879214271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed336da7aa12277b48550123f8c9c135aaf962e5317b9019cab9f51e55f562d5
Date: Sat, 15 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786753833
