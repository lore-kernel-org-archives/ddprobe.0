Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412F31CCEE0
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754117394; cv=none; b=btSsVf0Cao9kV95+jECDXiZs4vvWnhrTxXex/jHsbJkg3cbLXiAAiaYwhf+KGLrqVg/1ear02yyQe0W2YRhfK1xTIbvX4k1FoKXT7dfHz2HhcHg4snfYeUDuZb1Os6PXO0WPhplpzaRxozrBk203oEXA1FDTUaMORdxHra2Irag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754117394; c=relaxed/simple;
	bh=dxaadYN6UBWskkZFRhU90xHRFKVO2LWGzjdktrDZ+pg=;
	h=To:Subject:From:Message-Id:Date; b=TVAIFZ5nYuFTWlobS4Yhgh8Te5CLfOpxxCdjy5OtECIrE8LVV8t6LsgTE8sSjyOiGCtFE664gcx292Yj6fPOMfCcaiXyuJuuJ6/VS06PfXCCpSMjHGvE6jCQQvIhOtvIS9yJHastt9y8E91grMtv8KwhZ+a2ffz5o0pLs7YObA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpRGRkLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpRGRkLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6908C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754117393;
	bh=dxaadYN6UBWskkZFRhU90xHRFKVO2LWGzjdktrDZ+pg=;
	h=To:Subject:From:Date:From;
	b=NpRGRkLXOMVPTwxoUyKK7fHFCcsRQeP+6tOjF8sxM2wGfTu0B7uNLPi+TXpWTxSye
	 V/PYHfdYKSvHsuBw/AWo/JMNxLCbqDFMI5fgYHaK2OBM5Fw+qTpCs1dhfDre32Td9J
	 SvaKApoleMyoYUnkvrMvE2LJqLz07mgphyeiuZeyHJagcUk3K8n2+7SvSadxcMfp59
	 d/F4hxb/9EjjcfiqC7a9axz9apImOqaYJ/GMa4KMniIXhLnFFfON60Eq1V7nYaRNq+
	 C+ka6c8lDKEjMr8cVPRcCSL5pVym6iYO9vrb1GvJ82zfAfR7zpm4N90O2mS9yoN1rr
	 /R4HeEGGwyIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94142C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411739357.940.14896219368606890797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6be23d60f296ce07275af1bfbbac8f03cfeaa3db75103567f17d2786caefb8
Date: Sat, 02 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754117393
