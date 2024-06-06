Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C341802D3
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717667843; cv=none; b=CgTi2NFkA7izLBljLyt9hN/dyuA1+GzDJf2DLYaFPyjUcX0g+aVFCan8BTk7G0lMMhcgbMB5BFqy6HPt/a4PE611Knl6F/7XqpuyZJ5LyziR/i5HH6l07HkkccJT+fVO7+oWPmHvfSuP792+51qPPJRggkZnYZApVD6zL9JC9Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717667843; c=relaxed/simple;
	bh=gaDeOGWzpWxhw6iXZyB11wHTgZOcivTrw1pZczgCdMA=;
	h=To:Subject:From:Message-Id:Date; b=djtZAEDzLG4XEESJjfcr2HFmJ9N6NkBmuJoKPscltqHggOzCqq2gGv7pB5jgfcSM/9XMuQcd+gSYTt6DLRRn+sWNbAhLYkmpTDQFVZWh9IJ8tUrg50wjN79eLTR8TPWHV91Bv8k4pGw4jiU1B4Navi2DFIvNJo/H+066+yclRts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2E8AZma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2E8AZma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E89F1C4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717667842;
	bh=gaDeOGWzpWxhw6iXZyB11wHTgZOcivTrw1pZczgCdMA=;
	h=To:Subject:From:Date:From;
	b=b2E8AZmayBpt2p8MrHyP/ivyrymFNhqNcDA4XBQ6PGRj6bsvE+A3HKc0DBxU6altj
	 2CjAOlhj6BWrcbw8wRBTa9jLKRat5MOGGdDQ9DsIaGIknftyPvB7KobAuL2JUttnEi
	 Veqj3wGeKTLtGL7Gjznsk0NW2Iv5e2MFXrMJbY2Al54nhE/+MNRuYqD3Das2o/ynV2
	 K9Cja2I0j5IxDkVR6eDK3zLb4kanan8Ht5cLj1Q3/3E80XEy/zUPZ19VqWvMaM89hu
	 YnudZAeMQfDJHKmQFb3ITI2Egz1TCJSCEd9kK9ut5+DRaDHtCF2SNgNtR2GTqpLBnV
	 ZXBj5D43rgdpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6165C27C55
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766784285.19126.6908258811138134772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3548f2e809e7d21a41f94e97f8ec3f54e914343993be4a74baa2187411e1be00
Date: Thu, 06 Jun 2024 09:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717667842
