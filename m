Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA38299931
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780695874; cv=none; b=RK1UVrswW3ISuARN2DM9tRaL9dZg/JI2PfSsO5yg5MsDJD4/VU/ncZ7guP08JPRrfVGccU42tRBDVPrXfDmbhiRrh8GwJpp1oiOp8fKsJXuGENyS2/QaWgM7ZXiSw9CsSKpUM3ao+ZNKErl4E5gkW3lKy9FKNGDb96E33qsIzeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780695874; c=relaxed/simple;
	bh=3AalF3VvSEbZf1LXXlvjlLmAsqmH6EVLaNh6HfLBGfc=;
	h=To:Subject:From:Message-Id:Date; b=VnThP58TPHHuAPIAFBTRaHzhWOfC7RPShYkhG1Osg+5D3bIq9Vhub4CRc6xDwvieZM2m+u356YecA/asROltLOteM9/icD4M8WYJiEX9Nno420XnhExtnooQCMp1FuCi41shdI0wrCBYxEiM+97R7eUlzG5qH6C9qfw93ODgugI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6GX/tPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6GX/tPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C680CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780695873;
	bh=3AalF3VvSEbZf1LXXlvjlLmAsqmH6EVLaNh6HfLBGfc=;
	h=To:Subject:From:Date:From;
	b=L6GX/tPvGCaUjgofcNri0wBZlyTfNnMtOnaS7eMyr98iR10zLrCsPBihnkwxewvx+
	 u1DqEMX7ZfTJ0MY8AmxBMUbSDFLWpbAsf0E1Ix8ZjnmGGfKpJ7t1GHHQUlNiYX7das
	 9GVx8wORC0eRphhp01fCNdWyWE/AINtMzbQajxSuyBEDQUJVIg24iGX/iE32vQg05A
	 ufiV+ArTFsJ5SIXkLNrsv9BA+5A7kCeC3ZOljZDNySvrLZuq0v010yBadL/ZQI3Xt1
	 acgOaM1bo5jdMjR/ljcvSrY+JXCAeQ7Q9cdWqCBosyI9KJ4nnaO4wLWUZUJ4c8V6E2
	 7UTOO8qWy116g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC50CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069587369.3035.15941362368018014052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f01a4b5cbf2185fe4832c223eb7ceb6f70d9f41101a044ef7128479301d2029
Date: Fri, 05 Jun 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780695873
