Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1982868B
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749509394; cv=none; b=penIGT+7VynFSGPp0jI28YepAHA1kZdRIoV/Df1Mmyd3fC4BlGBIh3L/earEkpu53NNPmlU1upGC2yjYDQr3mzu68tmFnBjTHcb5NvOH0r5nhVmlH4ECG3qYAZWNoY4vKTypTYXvebNxZNXRTksTYn+DATpdHt/L5eC7Ov0h1mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749509394; c=relaxed/simple;
	bh=5MyEUlf2y0Ga0TN+bo6w4cvY1Rb4Ly/UJ1dcGxDBOcU=;
	h=To:Subject:From:Message-Id:Date; b=hWAEVIzppZBXPAsSn9lYzojs5usVtDpIOSL0PiMoNid7SjMyAx6P1AMPGOrFEGZMcJ2bRkHs3F+mpojZxcLOsj65ynt6fwADNC3hoMAJVI8tvyqStqtqDsMr5jkIPFqDMBQhqz5rg275M0wMAvSmciC9sdDZJekI0Tns15PFCmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po6JapXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po6JapXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1299C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749509393;
	bh=5MyEUlf2y0Ga0TN+bo6w4cvY1Rb4Ly/UJ1dcGxDBOcU=;
	h=To:Subject:From:Date:From;
	b=Po6JapXzr1E/d0WcnI8RVrTZ5Fu/qrFC42uE5ewb3gJ7mmsrixwNYt3dKR9fjPiJC
	 o1B97sjSG7+/IePiHN9SGYmC3e+ixkDgw1ZyRWwAm4ZsnB6ZpIvwbRuX+n1RV3/70e
	 ODnslI7nnrXxgvGN/hElTpDNye8WYyFt8goBnsvE3QbBiFbjwpgG+XdyeCZj2KF05+
	 EytDggVvgOO3rMkh7wv+R9hiszE32MOfY4ho+LaFK3Gfzzfqf+wJuRs6tBE7BXgOBH
	 0E6OIHersq/lofeq050oVIyQXzkSSZx7RouL9D4QR0RAAg10txhrT3GXSBhx1mM/wF
	 1ucJi8BBhzCnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DAC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950939357.21666.10198523018338844101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3d4bb87825199c62028af044a3075b65602b83cb0942cb5767fdcca7fd7951
Date: Mon, 09 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749509393
