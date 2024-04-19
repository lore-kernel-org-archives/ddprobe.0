Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D657494
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713553823; cv=none; b=OKUActSEawhOfR903b0xU2eiFg0EZR7mPs9lPWJEwhrBByipNAEjaUXjD4Ujo5DtiMPgM7qiqJr22iyF7bK4+Ahgxcebisl6RRInEonZXfTuD5+fzoOm1rw+Y9ZUMpzxb5zb6yLhas384z/fagjvnyhj00TcoD2KLIpSAhyHIjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713553823; c=relaxed/simple;
	bh=64Kj+iogClkfbV1/u3299elLyppcqfC36Ygo0gD5AX8=;
	h=To:Subject:From:Message-Id:Date; b=fxmbhq954zioKZINzBj3VWmrpueFNiWS6N1muYReh8VDgDgg8LpCN/urG+2PXLJabTrCrL6koc2Fxz2KQt+krg6Ui9NjtUVinapDyWSKa/sVLgPqzvhetCoO9BoFFp80wGZnpwfFvSMPDX0BDwz1+iCDtRuiw8xxkpcbOA0ULNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fzw131RK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fzw131RK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FE5EC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713553823;
	bh=64Kj+iogClkfbV1/u3299elLyppcqfC36Ygo0gD5AX8=;
	h=To:Subject:From:Date:From;
	b=Fzw131RKioFemaAB73J3WdN4OGQYToHh2KJE7ieeqT/9bjEj7NYly3n/dakItVRca
	 g80aYknYF8gyJpM2HKR8rGahIXX4bfdz8tjrbL+Eh9X5lsVfc9ZxQhbgD1xxonjkho
	 MGB01ocy7aSx47ehFLAVxGJwCzeVGmsr2WapdABOFz9gFTwPqASz6XC8ruGdBXR1YK
	 jSNLuMrqYgnNDq8RP4xErfsme3SnZtKJ3kUaLNEUP952yRNh5uGtqLRxTOPNXC1kW5
	 CFG97q3Vq9pXyQifyA3iCbe/Ou9+329frpGcbCIep2d+t0Vi9Vi7hmi/MKFc59LaSD
	 UOMED1jYuGMJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE391C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355382285.1628.7435480404153511746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8979d11e08bc00ea4dd857c7914f577a2fb8138e024067c5f81ffccdc4926f9b
Date: Fri, 19 Apr 2024 19:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713553822
