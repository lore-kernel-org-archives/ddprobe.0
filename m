Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BE733B97D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773281094; cv=none; b=Ycc2DWyswTlRYWnOZORQU04PSO8BBo6ZiAdzAj0ktbJ9nh7hlfI99VAz9bLQ2a944+ympdELSQ9rKLMm3SXnz9UD1p3gqymU4R5hhNjadTih9kHAd+0hR8gU+6pdDOSaiVteO0A8kP1Zs0XklnH1PIaJzZZi2UnX/U51x4z82nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773281094; c=relaxed/simple;
	bh=XQ7sM0Bgxtmik9NVQgQ711aOxFYaRTao6GHfMpFjIPU=;
	h=To:Subject:From:Message-Id:Date; b=M7YmkCiR0dqHyTjD1rgZes3YR2qMctsavdXcngJzFoyKP7QogzLcGHdBko22AMEW7QaABdLvqwvxccepTbt+jY4SbCetKGa/UdUTOeZE4USq08PEkG8EMOYXxV2fTaYEEhykG/aDqtJXnuM2huGpumPnJFcnCn1V2DZTtw43sqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiyPJ1Ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiyPJ1Ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F6CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773281093;
	bh=XQ7sM0Bgxtmik9NVQgQ711aOxFYaRTao6GHfMpFjIPU=;
	h=To:Subject:From:Date:From;
	b=FiyPJ1MsnHF5yrupasLxbmsPAM4JL7DO/ybQCSj2SDWSmhm9cWWS5BgJ4j6zqZFXv
	 9NEv3t04mQSGIUuYrEL0VQ5S+Dy/HXgWg5J4S8n25ZptsPkcJzvR2r4wq8L0YFLTW5
	 4R4J2b+7Gx9JlCOm77H/GAPoDyxh/Y8v6FM4PtIwdrYhAVwp2PClzg2TaxLEZRRCVZ
	 yuIbztrRrpWZJddKtMNqZhWbE033i42iEGUa1Xj0c5KieypH2fcU4kaQua/81t4Y8b
	 kjjyrhuDbh4qj2L2xVMUxfIuCIeCsvH5D7BIHGMgmUMBu/S0pTQeuiPuUmr+3Fua+e
	 CDXisvzbIHoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928BD103E2FF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328109358.3479.12071251297697109245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01488cefb3d5dde7a8f9217f985b4c9107f3aac5f5dbdc3dd777960ee4723f3c
Date: Thu, 12 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773281093
