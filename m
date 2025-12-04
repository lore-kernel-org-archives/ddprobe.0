Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A8033DEE5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764847374; cv=none; b=SgsOfM9GZf2NPdtmgg3RJkzCRGdsCvx9HzoH6HOBGu32n+JYdlA7PnCaTkPy2JSqfDd5aSrFoQAlerCpXtEBqKaQRHkloMlVqQ9Gkg7/aZ8chvqsi/ebvoQak/N7vjgYu4R6VC1jo824EOoNItfwfSJtbsJX3H/0dRUQbATyON8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764847374; c=relaxed/simple;
	bh=i/dJII3KJQimlzM5zHwv9Ft2RPaeue55LgQXERGpOc0=;
	h=To:Subject:From:Message-Id:Date; b=jio6wGwWCCt8vUB52z5vNf1q5AH1Ro1i5v3Wz948lY6B+2oqNBtSiITbK7H7655CWQAMvs+9Qo2quE3ORyBImaGopDTTXEbjqLiQvfBlgAH6yePljblDs3hacwlwsThlmJpXOSHXkGDKJaHyHFDSDSBcw3vjWJR35rW0HeR+w88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVdvCB5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVdvCB5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E41C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764847373;
	bh=i/dJII3KJQimlzM5zHwv9Ft2RPaeue55LgQXERGpOc0=;
	h=To:Subject:From:Date:From;
	b=XVdvCB5RL4iAPMAXGjqORUKcfS1quXyiUQut5DQEdpGyGWVgAZJhc+m96SQz+tQ3C
	 tR4O8MZxjYraHY+WKNIQTKJUk4P6zU7RpOF2495kwi5eUkQtkkVtY6R0y/kRI3D3+w
	 39uVQQsk17X3KigC3Xn24IOlV9meemXCePsc93Fru4jEih9Idzu+TGlC8sy/OdHYtA
	 PI0x6N19uF/jGBrJJvTefswwjtLoJ7EVyNXQ/gjHtvzOOq9+rJdswodAlknFT5eJM2
	 dJFUnmqtOTVH6KXV+dTWQ7DL2P8bjRPc7YtH6h7vBMQagtnZmqQC4EOMo0uYzhLuPs
	 pFWPdSx3zszPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C03AD1F9BD
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484737360.17238.96515258861819150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9496c12512cc8da7161b4b049ad8b040c3b6713c39952c54e7bd0f5139854670
Date: Thu, 04 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764847373
