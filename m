Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB9D3AFD19
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790228434; cv=none; b=Hz1q1dXC4SsPXI16ip79rNWmemmO/hjJiTqWk7M8Q+myVTi18lREtEk60i0yyVUrvEtUZAtT0D2jpBkvCNeewjg68Ke705aMdDYAXasYfFrlivQg+mbsrqmxxxXDWRJFrP9wLs3UiTXl8qL8YxouG5YSaSof3cKj0/XLiMv9FjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790228434; c=relaxed/simple;
	bh=+jUfHLg4h6drDT/CgzysfjIzQMvOBfXWyOZrAlRq+Q4=;
	h=To:Subject:From:Message-Id:Date; b=og28zIue09duUqunv+O4Ut/ppgGMAJXNP9pBhII1c1ipG61+SQlAY2MV/xZtW39LJUMTILQ7WEwWTw86UUnJsxmBNZ7NB6+qItUmHmaaxqQ30dMLU70U9P/c1hnBZkB6pghGpTrK8sVXNa4Zsfvt5Yp4Z8gPr64BKAr+eTKgHB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZhPodLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZhPodLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C019BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790228433;
	bh=+jUfHLg4h6drDT/CgzysfjIzQMvOBfXWyOZrAlRq+Q4=;
	h=To:Subject:From:Date:From;
	b=GZhPodLsBRcYCklQGymfCrtKdemkTo9B+vowQSTLffewCmwlOk786q77c/YTbVzLM
	 tIayzs/4cKJWHKgdrKWtffzEJ01N+NCWSStRsRVo9sAfaWNc8mk8NduheGaEK3wQMp
	 FqZHZa2e6dc6gzdxD8qkCuRGTaOm1qR09qBH2HE1zI3KCXECxnCQax09/nBDS4ub8Y
	 7KaU2sVXoJCU43+nx5txETGmVWiuws0wVfaz65+yaIARRX36sQVKfxQmhc9nqP90VL
	 nNB2f8c3h64u195invSTNhd4Pwl2wY+OE8FLtsHyboijBPAkIZYl56v/2jxP2JWOpt
	 sLuXqAijZlU8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C3C98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022843368.9796.6189749743840317782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fe0f56e1dc63e040121c1536bc93469878cc8777aed36c7c63b8709dd8312f
Date: Thu, 24 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790228433
