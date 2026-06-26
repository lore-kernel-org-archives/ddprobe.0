Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3003FB05C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782473254; cv=none; b=o8qoDl3oA0htjKZoCqBB3A/PcP0/3p5GK979BP+UcDVo6xblMw2ERkDp97gFG0NWN+ghu1NhJPLsS10yIAXjQzThXcG0VJvqtMm4ev6/9EhSybn0NyvZsIHFpAmCk+ItaEsQonzZ/s/JfQ9Az28lWC2V+13I5YhZ1XRni9WKDo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782473254; c=relaxed/simple;
	bh=SxYbkjDdRJYpguoaQyFMjtZ342P2Jr7fNK31uzT8xFg=;
	h=To:Subject:From:Message-Id:Date; b=MOl962F1yCfagnZkTVWg2k1ilND5lFJL0jK2MK+pkIdRSVOryAlkNaaT3efMSJhHIpdn/Vkf0Ckts2FNVork+s6zE7LiRNsnHNos9kh2PyGdvRZUo5E5/SpMKVHvJRgOzMkLeUoulAgkZEETagaQ+mCs2w6p19hvnQJ9XD99up8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFCGnXuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFCGnXuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CD2C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782473253;
	bh=SxYbkjDdRJYpguoaQyFMjtZ342P2Jr7fNK31uzT8xFg=;
	h=To:Subject:From:Date:From;
	b=FFCGnXuMzcjhq3bT1c2dfcnwTGcMG2Fl8dshMVADOyF3TVbw/V9zdVw7Q/lXx0UD4
	 wvecdxSO05W+Onn8vyIDuS3yqMaAr4sfxKYyUaZ32am1xTCeyYLIf3PZdGi3f6s/7o
	 qHN9xfN/D9wY3wdFTbvED3RW2mBaby5yBXlacNbkhKsYj6HAGKlJzvdTr1X0GIJjpK
	 WRbW8wsFPKronkhTLhBIPI3PHnvQGLeMGltNCbFX8NRO0JTcAzQr7WDtstjIK3IABr
	 PZDmLAxK9cIurdc7HijRLd1460glkooozZnj8ILdkkDiGsWhSgSX9AgywCZB3W0gnk
	 jDzS/5IpRzJWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF943CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247325371.14838.7663251318181952123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f2993f7c7e260bcbcea8d3f0ce4bbebd359e57aa703aa6a41f09ce57f51d39
Date: Fri, 26 Jun 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782473253
