Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ABF3FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767502434; cv=none; b=PNFMGjctPAMm5Tn2aJiCwxmlkWTQqxuJ8LEEMykGlx4yGBOvSj+upOgBgtXwsFwCPNx1YLtgO9V7/RwvrJxAu8ryTOLridnUpd0GZKry/PYctUe7sl8Qj6Xi2dTvsnXADTP9h7drOrczw593NHcg02H3teu9YdIeeeRr/aZ69bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767502434; c=relaxed/simple;
	bh=cjXYtkifJSicmkg1uLLK1Hao8/uHXo/0sSUw3A/49LE=;
	h=To:Subject:From:Message-Id:Date; b=Ow3qSAcqNcSnbiHTVJZxEkFvt/hQfEanLZ99uJE42Zdiy7jvAL1Q3eCmTRmm27zBy0vWkX1d2KBrDE7R8URZEAYRXm7XPOUsyWWsyFgpxZWRo4Gn4kg5U01+YMCaS6d02+LHxKYca/yf036nEkk2dJcARDpovByJ6VYvPJsPU3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA/Xip0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA/Xip0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0617C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767502433;
	bh=cjXYtkifJSicmkg1uLLK1Hao8/uHXo/0sSUw3A/49LE=;
	h=To:Subject:From:Date:From;
	b=RA/Xip0upmdF0+Q1nOZujt+Lzmt7bLiFvUV2ZQZi5CepVHjpGGhh/XOc1V+VyErxc
	 n1he9+M0xerVYU42IQsQ9s7hQEITj8lixYXgI6Y7AFDsllFXAe47Yyw9q3sMLiD6Tl
	 EuxuUAlD2ayvHC44ceZEiQGUGUnC3qWzT2fzaEiXGLcGbHOnAoZoFY4J5BomGfm6qb
	 AuSnRPd/Ymph5itKo4jycXx5FszR/xEAP+eYqpz8LTpHSUK+FDRGcMvD+wARQjHs2Z
	 yq/tWrCHyfyMeNkkYO87xOQLs4DJ3JmSbei5wO6sCHun7F+AJIF+Yake4OfWfOtGbY
	 14b1sjQxAeeZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9000FC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750243358.17007.11640507834270572412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040da947bdbb2cec99363984c5ec7d1fe0a9259851d33d7bc6c91cbb3f4c5ae7
Date: Sun, 04 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767502433
