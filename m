Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272561898F8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759016394; cv=none; b=UfKPfJUAkq76XxCd4yMeAEFFWavH1qIdeec/FSAHpbbRYQ2htSz5bkoUUDN9YUa3uaOksH6RZb+6hAt1+Mbv0IXniJj+y05ROywLSdDhLTWJAfC2T/DH9NXUqh9JF43f8xXT3Ful0BCyMiwv7gsL9yxHIk6FAQRIy1Y8i9nAzn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759016394; c=relaxed/simple;
	bh=M3UlloBSFYXR8VUXdcidfpTjAwseZgu3PALgqb0RHao=;
	h=To:Subject:From:Message-Id:Date; b=AIVHYQjTRVCtE+Twf11l0vVyo/cO11FNpTCCquklEoQ31Tads9HX909APYOFSaJmQz/r5gW6j0CtlL5amjCqB5FLTMSU/3BrR5W3pNYsp7zn5/oyMClpe0L7IOHgj5dwdYOlH+BKkxmj3tzr22TmhGchFhAbLjLlcnS2l03Iank=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmUzuqmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmUzuqmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9820C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759016393;
	bh=M3UlloBSFYXR8VUXdcidfpTjAwseZgu3PALgqb0RHao=;
	h=To:Subject:From:Date:From;
	b=dmUzuqmtvfI7MS9FTX8fjR9P9/BYSYL2iJ/gSOst81LDxci+iia/UH2g7A002Rf/s
	 FoDgzvF6REHrfGS+NagJ+UzUcbhiZzUrJJTHMvQRZKciEDVHunZcVK7p8TFs2y8Lep
	 A5gnRYlkkw9nif0fTt4Kl/qm0Wbu9n5qNqOpOcgaJT1eOxwkl7P7MadpwJNrOJ5pK7
	 bsvuBA3MgixRqn2dCBM/MKUY4c8QRjV3DhIqwHPGFItn/HxJqYOWNhegd3WXFKVEJv
	 8Ba+16ZMxLIDjoYH+8TUoZwNACXQIuURMqH50ERBEKOxCUGx0peI7HxKqAchca2c7w
	 wwPdUV0U32maw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EA1CAC5BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901639358.1217.2083565617138384443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591ee6bc943c55d55ab86af866a22aff19e4982ab4226a2087fbbafdd391b08b
Date: Sat, 27 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759016393
