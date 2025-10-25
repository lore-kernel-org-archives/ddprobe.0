Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6B72AD3D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761367794; cv=none; b=i456ed1wcneLGuzOm+xRHzjMfEiyx4DXlKC2vgskJsl4Q7vTjXUMu4vpY9gXHpc1Qot8hbIHwY4s0LPOqLO5dPr62015JadZliD90hIr8SaHvFijNHUrQ1tciCF2euc+w0Vjti07xddlrJddriKG1npzj6Xih7qmoIH5mP2NdeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761367794; c=relaxed/simple;
	bh=AfpwNx9XeisA7foqhYh4jjgIcaK3F3tq3yP0sJtMivs=;
	h=To:Subject:From:Message-Id:Date; b=C8W/ChfG7TyKadBEwnXStyzYt9Y79OO8shCNVkf9EKhmz0M7hVnF9enOE/q9mpEK07puJ2VRCJAXO6TtaGO/leDPb1Qk//qbye/ft6iVEpase+oHEXw5IQuzKEFCXT6NhLkxHK9b5GhXRSz4k8aFRWqYQWmIhHjT9uDUTI0PTd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftyev7Zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftyev7Zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A304EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761367793;
	bh=AfpwNx9XeisA7foqhYh4jjgIcaK3F3tq3yP0sJtMivs=;
	h=To:Subject:From:Date:From;
	b=ftyev7Zkf0k2zi++IOeMbeR8Mt+nQ8tBgIPyd1rKo1aX/WifjrDRPl9UuOayQtGGf
	 TxdEYBERjDQyVtvErfEthbdozqRpTwIAtB3xE9e15UHUMfjdAbiV67eiFrU7jfsQdt
	 ynLrqILofO92lJtjcSauo3iRg275mmDwYxsibnpmwQ3YURAkV+PdMaOW5qFXZoYoWG
	 DDAVsOVlbBCYdD9zOAqPkOZgXRObWFiIn5BLERUz9hQfyr5QeZFTikMgIvDFmybZ0w
	 Mf8RvxdGGdDAm+2Etwcf1ddgOSNjiDbVi3dAH2o9Ebzyi1mMYVV0WjkZojTOrpmjjH
	 sqnkwl5kXE3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959ACCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136779358.27419.15125888945339935725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8621abe009cb0768eb883d596a212eaf490d819ca7bc0b97f78304bfc7f3edfc
Date: Sat, 25 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761367793
