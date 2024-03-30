Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED22C364
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711781897; cv=none; b=Lcap0vO9bxYjr6TlXKYfls9fLa44b7VTB7u1zWHquqMT3Eq/vznOkB4jpxBeLrsqRya9P79uPJpJLJlpkYvbbyK8vOpyCIvlsxGEr+LF/P+7AXiRtYeBtm/lBj34z5J6rlMZu/3Ep2ELWOXa1CxF2bAd27uo3MAR/lPUCjatF7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711781897; c=relaxed/simple;
	bh=c0Q8h/4kbVGhzK8aeN6cyoBb4CdiOLMxfa7RnnkFlwg=;
	h=To:Subject:From:Message-Id:Date; b=CZAwhP6ZTQuzmDa8H78/E0iOS3nqSuYZfzQ+PE/urXS/2gRG+n4JFoXfHeJo6HG79RACKveoirtSKiI8C43csMmUNJEoKItEMkNIqQ2mATg/K7oRMGR5wkddb9kSMXVeuvp2ZrwTMn8ucBQmTAkU7gSAb9TvklX/J84STd/dR5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvpmArpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvpmArpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772A1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711781896;
	bh=c0Q8h/4kbVGhzK8aeN6cyoBb4CdiOLMxfa7RnnkFlwg=;
	h=To:Subject:From:Date:From;
	b=EvpmArpVU2w/vWLd785EVM6YQxv3noHy15UDUyaHVuZrj1XJeX3EDYOvM5UjtB6rq
	 bQshcR9UlZGKQXww4gORxr4iAYnHzyk5jxbEY3ls8OJlxlyUtKHnCyUg6Xb2a0cVM6
	 wPMzwCHQ+P8cAv1fkJZ7ggta24lHMaUbn60AmVNbjTBIxAyARox0zhixmt25fYPn/0
	 jjXVVVgD+9xOI3jw0tywQBZA68F4HBTDRVJ/jhDTLhJYME35DQfj1yb7GrHgvDHIPT
	 9L6/87R5+TJ4RF2dMgDwZkb+QBVkB648LuNr70FxfXcST99on4SrhiYjYy6hrstCF9
	 QNgYStIfClo8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A06C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178189639.25385.15690479458901093529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100c1cdd83d2b0dee6eaeedc488c8456825f5b2875d57701fc2198fb66aa050c
Date: Sat, 30 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711781896
