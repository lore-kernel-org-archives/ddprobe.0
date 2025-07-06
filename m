Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616A18E3F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751823594; cv=none; b=MyJf0fUJe4nW7WPBWonG6nhLvd5R0YMgeROd8fDAYax6UoJSN26PwkDuIlbV6OkR9kwh2MxwppWzPz98K5nvcGZnCgyr+4UeyqzCzKyHy+Q4q3V6pwgOsSDSTjeXA2ElvsWrDAykeTTln69KFfDmYCKlvrZaUcedNx+a9hnvwTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751823594; c=relaxed/simple;
	bh=Pz6ASle9TGioqrUncjeDZEM/1woZyU1yufsGUvYiLdc=;
	h=To:Subject:From:Message-Id:Date; b=pzfqFMPemfRkBNkUghKNUoDW7C5Uy+B7LD/sKui6TCEQ33BwYS4mVLA3KUmMg9SBcHY8z/v+i6ablpwZG0FnUgvQyrpiaVR8fqKN3IaRQ3DJQkJ0l5FV/YGchVYLxFWUFC2CJViGi8+Dhrtn/blLQP8oQuLnmRetVJIgkr+Lnxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WT4mTB1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WT4mTB1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41F3C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751823593;
	bh=Pz6ASle9TGioqrUncjeDZEM/1woZyU1yufsGUvYiLdc=;
	h=To:Subject:From:Date:From;
	b=WT4mTB1D4SPJ3ner1Ok7vK2pxIS7ux4nzPegev1zbrm9x2YILPfEXdlH3BTbXFGf4
	 onLVV5VPDl7URkLftJ2/pz9Edn/pGz2sgIXsZoV8JWZwZkoaRi0YIyOwcJ91bFaABR
	 lBH7Gk19yfn/0m0+xXT3HRPB/Yd6hYRzM9lBebjgl+Gt9JsiahgtjujMPPZ9iRbpUu
	 U3Vi9hvGH/V39mWdyNOBKaSRj5b5j6muBppyew4jEg8HCqC6bmp8HNlshBW4c76Q2R
	 TSwiriCUCuO8BFRTiOVTwJ2+bAX4aeQu2QjxuoloFvQz5KEoeF5HFPDfvG85eZwvHm
	 R77qA0X7LDESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C4C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182359357.28582.15856356529695616984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49d835117819499e7259788d418fab187ceb78c31c43cad2f78461f28c30e50
Date: Sun, 06 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751823593
