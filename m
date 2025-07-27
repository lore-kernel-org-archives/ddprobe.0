Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3ED645
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753605595; cv=none; b=gd7sqiYPSAkRbkoNABF9zRaaXSiwXtvdFbZPeeV8hZV5k46tFTZhcUYaXAtuRlPVpexEfShkApsvuSdfPAgtvJpeB+fNDrWUDefAu4TvfhmcMkCgaMtiQULpuKebkcblKmsqeRDyqgocrsDmYIgR9EuxXxgSgcXnTFbSZBWVrTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753605595; c=relaxed/simple;
	bh=HkhQMBg2PyJiZpiLFI4jRsPWlDIuv98ng2kV0Qikx5U=;
	h=To:Subject:From:Message-Id:Date; b=O8Tol+Tm2lGBrVEpoJMkIzkAOVqNV3JO2A0xt0nTxQ0M3n7uKfNYEPg/EPLdfVwGV9WsLfUDoJkM4i5oGcO1M77Hsb/sNVhaBaOc8zOSy/H/FctVGVmhcuqwxfkoEZzZsV2SulfrKc1BsFiWu/EoHpm/h1Do77zYQGcA33LG8Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEgfVHDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEgfVHDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4623C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753605593;
	bh=HkhQMBg2PyJiZpiLFI4jRsPWlDIuv98ng2kV0Qikx5U=;
	h=To:Subject:From:Date:From;
	b=qEgfVHDIJciXtRkkAapmZ8F063SnNP7xo8ikMR06eBvAIbAdMarNrqAbWSEl5pSdQ
	 1FAQPEDvTK4Iq3QxHlHW/DmOaMcKzj7J9TgX/tikuYzWKh54kpLJKGAdmzFAhyHpn+
	 pILi5DClfRpmZ7sl1J0o8m3NTEXpfK2FCvQn542PXXHturcaDfvoYlSgpl9T9Fc9CX
	 29bF+js3na/XPeRaQP7+PQzCRslw2aHxomChYKD1sx7I3jra6XyZA+kVXjETfVzKE1
	 CUkUiSIm6MYyTlQ/rnF54ozf6FlXb3fKf6xzLylGgW32SEqtCclql+/XqT2F97nDNi
	 ogHdIpHwO1HGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92232C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360559357.31538.11915784072478303830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1717efa987d6dbcb0d52ec062453354179009dd23ddc7bdecf516e27203757f
Date: Sun, 27 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753605593
