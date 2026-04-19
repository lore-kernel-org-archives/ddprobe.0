Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2501BBA34
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776595654; cv=none; b=AwCEa/mCA51wvbCwpf5bzQFWltioJF0MfdWz/Mhnq0aafT9Bdu+3sFR2qcLzjYoDfXMaTP/jrBafwOkzoq2KcsC1uAzbN8Q7bpRpcd3RnaiZwk6X0f0vK7fmozeWnDRVLD2QmaoGhVsqSK7Sn2l0I6ncZAEMdZJLwU9AbalPZn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776595654; c=relaxed/simple;
	bh=QuqS3sUYLG1n48kutIWJ76j83aK4GA1BVlXIX/g+FWg=;
	h=To:Subject:From:Message-Id:Date; b=ibLXoAJRwuyV0w8j3Z2IH+7yQ/C0YwXVOPv6tJd/o7mrKZ+u9R/6pBM1Abie7zNaX8sGAZRbRMQQQHgXR3NrXXCk/VCyunmTqavwklFDnns+InQD6O/8/GmLBwk+03Vn0P0sLNJHCZQ8BCZBvzbFacczXPexy5b6hWxM0FObyyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mN8qv/BP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN8qv/BP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B54C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776595653;
	bh=QuqS3sUYLG1n48kutIWJ76j83aK4GA1BVlXIX/g+FWg=;
	h=To:Subject:From:Date:From;
	b=mN8qv/BPxPWjdhGAmXIN+frUnQ0MkdvwVtFg/+Zqi6l4i90VDrQOGVTmDD6OZH57X
	 Cb88VmaQSJjWiEAG8RiQKOX+TSLACM2GEXPvKHvgsMJpBuxMXnfOg+Wh2PoQu+ASbn
	 yrCOGUqh13JbLKaJtEAfgZvVkuBxI7XWw9WsFWs1La9NwaKX1Ri5lzPON1Kym3Cfvc
	 3plVU+1mrs3uJtMYyK1dreYL1vL/WOgezRUcrWvy/OkgNgV6QnAidNr4wOz+cnuet+
	 JS1ZXv3FUcCMTeAeT+TdETBSaRG/TwlNKUUDB9p52r48NHaVm2LZVUTzAF0Ry9Yc0+
	 B1nFtTgPLLRzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC1EA7194
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659565368.12685.11825525434473374515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2ea0c3036e3612403ba99dc8b7ef53215b72a5a739a4739034ae266a0f59ac
Date: Sun, 19 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776595653
