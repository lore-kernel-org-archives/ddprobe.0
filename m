Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197362E36E4
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751790594; cv=none; b=F4CZYSqmsc8A8b16dn4KFx2bx2+Riw+itjP+Y0tXfMw1us4swVupP1JRO2r40OhGkXNhe7xKEvC7XrI2Mxv3gf0y5CnNe5wZPp1XAMOR8W6o6QjJZeGaGeBdMStoVxvaG4/gtf8mAwnfnLFEJst2fm5bOQbINirJo13awaImDtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751790594; c=relaxed/simple;
	bh=ViL2Tr/rNlD+NkFH8EzkY/nkqe1ROxgFxkab/Og2gjw=;
	h=To:Subject:From:Message-Id:Date; b=oejA22ZXc8JCaFGj6bZZxSueNTdocm/3FZ+pV9tRZjPaLXhDbg0e+eDmdl1SuZJjML5qcDVBX0BfoqwRmZ2ilPF6CoVwzAe4nCzUQ1vipt0gW456zpetPJTn/Q3gva2C+j05Eczv8yvt7PNDeUcnSHG/ungyhdmYWaLieXQY12E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6MxaWNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6MxaWNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D6EC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751790593;
	bh=ViL2Tr/rNlD+NkFH8EzkY/nkqe1ROxgFxkab/Og2gjw=;
	h=To:Subject:From:Date:From;
	b=l6MxaWNVXYzCDyFm26380BAZq5aElj7+e0OfTTwM9tt7irqaJckAtn/X9AwhGYIB5
	 J27CaOsnN29990XnNM8xd9IZVUxbnOcCGR1ft96lArrXNBNGSAtbCB2ApvvYAjKURy
	 yrndeTHuqTvyMb3ceYrWubj0reMFjy/1CYhGbA/xS9UrVKPZr6aBTddEqRkIdRnakq
	 JET2oewTdWLneyShzvmEMHeamSQ+5uQXwwuNpip830wC/HepPlQUVZXpKDlpMv+iSK
	 8rJCVT+hRm6FyBDiEbHOJ7621UP5xxgnmL7pnwAvxKlI7Fe4I/rW5i5jYU4webnyZN
	 aHrQyLFN9CB2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7FC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179059357.27535.10781750784003705865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2daf310dd417c04a056d0868cc7c2cac559abb6b10c00734d1aee2146ba9406
Date: Sun, 06 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751790593
