Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B7D33FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717215863; cv=none; b=gQeEUg5ZuqBatvtWKMf4/gM25Paj6B3fR52uCAbRg4Wz9Uj5VhaNvMO2KWfcJ1krXjsJbcohwX95T0JTbZr4nfw0eiTldmZU5uGaXfUtRQG4zZTHpb2EOOQOQ5yrPxgi7MslNNTJicjR/MSMFBecLtcyPXlKf7VKk6e7oVWDTrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717215863; c=relaxed/simple;
	bh=KIM/Ncm/AeutTD2ZAXr2cZQI8+VAEjWiqQXg69iwpes=;
	h=To:Subject:From:Message-Id:Date; b=NBVfzQnlEC8vX669/W49ZY6Qsurix9IGaZfHvTrIjXUPkDfTKC7egyb1ANYCqsLfVQya7IYC51Lhje+1XoGmrJkk3OHi55AgrgkhngiDrtdPX1Mt6jxb1kf0R5G5WL+572kB1YzlrweyBJp5YR0naKs3Z8uCOOROBJwpbOBPJfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeO3/RPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeO3/RPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDC60C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717215863;
	bh=KIM/Ncm/AeutTD2ZAXr2cZQI8+VAEjWiqQXg69iwpes=;
	h=To:Subject:From:Date:From;
	b=VeO3/RPsIVuIQy1GZ3tvYLU06XBRqESQjeBeYI8InUhbYuMHNbeCzSFwtVN2b1zLB
	 RlD5fL00EKvY85tykErAXRMiUq1lwEuDHtQvPJ8vBYU991/gVTThqR4+j52X9FSguH
	 +GWdcb16fKSi3zBenvevPF7l2GGdFs8Fmcf9Rgi+DxLm76tB7aiw+i5ZMpidsaAzXI
	 E35Evom8Mt0L94pDpJ0MGcaNFq3LXA7wRxpZ5U9vSWuRyK0LO/r+0RVSN16uDa1AUm
	 LNhwhhXFHusehFeRdT4Onx7qDcCZIgGlAEKegFQy/JrtBfFaprqNo7ypf4YORg40+d
	 l5xtxwGcsEfUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D35DAC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721586279.31531.12522047759507266956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667d732b52711bd2e1d0287e34e523b52b4907b7beae28a6f07e45078ecc9db2
Date: Sat, 01 Jun 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717215862
