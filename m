Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDB6AD4B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737506753; cv=none; b=s70fNgWjKzMDASkTHXuz4CAB0oWxc9FuqcR3Ysmt9qtT+80+ZBg0l1A7l1PzYJUhQ1rvecQeu/3BAKhqpzl0bXUb78v154DiX59ZlZN6ZPoFpI8BAe+mhpnPQREuFft0cOePOdcxUmTFiEpy9Bj/BvmrbFiRWrjhD2T3508Y59A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737506753; c=relaxed/simple;
	bh=R4M0pGYuQ8mrJTv9O9h6W2gO47P/jszR7RR1G+OHZSE=;
	h=To:Subject:From:Message-Id:Date; b=JsJ9LW3ZHnWcO+9lnfGbkG+VA2ZWpiDNdI4zuyo/ippnARvdKqfrPSbhFisxTDpV57yOQCbEigC5r3AQY6dOneMaUbs8GsnkJCVQgjlsUnzVp0DhsRkVSdH7wwAY1lfElLFN+usVyVAZPYO+0LmpAe47Msr4lCqHf8sgzqtsV70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUbOlVGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUbOlVGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC952C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737506753;
	bh=R4M0pGYuQ8mrJTv9O9h6W2gO47P/jszR7RR1G+OHZSE=;
	h=To:Subject:From:Date:From;
	b=lUbOlVGv3HO5KzU1ojXOf8M7ZwvJmdmA2YoQxVJekb6K6FgoeRrShLnGbDqdZOPkS
	 24NXyPJOfWxAb8nlGXLRrIjET9Xm+XWwOojxp5QesEJZZTKn2ISndRFieGezsG20qG
	 U8qnpPFrp9x5bSojUm4/Rg7QuJfpi2Rhhcz73Rt7/dtZZFjt96NHIMqW1ox+5SRbzM
	 RMmrzww5ECDFm9Jzv/7KQfiLRYI/DWXY27qqM8JJCBYByg/PFLEbq8X2LKMMv1idnd
	 F+hjsDoz2IPdCthat0H1LOY1NwR54/tjS2mmferwR//CeLmwrg8WUVRc67iwkmem65
	 SE+t3RlQXCgEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286BC0218B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750675359.30418.8791640389115434549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55170c1454b061a179babaf6e66fe85495f8000971d7ff5a7b52a60f0dccb747
Date: Wed, 22 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737506753
