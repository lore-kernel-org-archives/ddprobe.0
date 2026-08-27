Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491C5342538
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787856034; cv=none; b=YV4IfR15IoBoxSngVFuCVy5SMrtCYjN1Q25npzaXYzAQUBOVDld9Tka8E/eCMjY97Z0kCfW9vgq9Oq8IpANHlKqM0ywyXHTEc3eeaeAtYjz19nt4eKsRvGojGNZag/lZVQM2sees5pzj7ocC4wBwnKesY16RI6WRq5yzbxQ7OKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787856034; c=relaxed/simple;
	bh=CYBdq7o7xw6mhQL5fUMW1zCj37TolOojsq1VGLQXFQ4=;
	h=To:Subject:From:Message-Id:Date; b=O4uGzbuXuU5RbJJUg32Slfw+JCzXX9IhXvMlE0i6nTP/yRuGsooJjnmViUFHJXLZELvWArHhyXI9rF81qX+I9pH5guxafWitdUzhOUlpSKjQo07SUqbuWumw/mGIReLjL+Ag/E7h72Ye8PInFb06V4aLEB63vk8/tCY5I+H49I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InxyEbQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InxyEbQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3706C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787856033;
	bh=CYBdq7o7xw6mhQL5fUMW1zCj37TolOojsq1VGLQXFQ4=;
	h=To:Subject:From:Date:From;
	b=InxyEbQMGSQJi6nDUeiNxS53KClP3JUiLz0DIQwAo3OLSGMemzMfZNqVK0bVlojfJ
	 MPXIxcfCj/AJFj+YUXO8fpjELguZlacWC4TrJ1GP3NMnCZSG4vwCUGdea55xWdDmfa
	 J+oWT8Pckzo8Ijumwa4wB2JkMR38aaXhY1DGa/eHeX2/bSWgUhDgQkB/BdCDuuS4Lz
	 tqtj9AAFWkFN8m3V2LXHYTC0dEdN8Yt60oc+LJjL1YFC8tt61B0U5jNI2MGuh7W6am
	 v2v2/4xbAMY2I7MkmjFAj7pRa2idBSJoIW6sWRhwrRvYpx2eIAap2KRq2B2w1xcbDn
	 5zjk98cA8j0MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0988C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785603371.27554.10094916998654407629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a617edd3c91c88e5cc9c22082158c20037732fc88c8c1be58f0118d353d55ee0
Date: Thu, 27 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787856033
