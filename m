Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1063630A5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790878835; cv=none; b=IAGwAe5pZ2ld6vCZR0knm6hO7CenZd8gcjpDm9dtsuIzZkyRffCrz8bk/Ik1wpgBl0ieDQ1S4/hbJB9IbWJEdrCvCc9TQToj5cnXc/kGwWu0wBsOqlL8fZUwTRVY1oQhcbEw6IVXZv/1/AIT/LNcmqzlToubq+3xWNZsEw/iO/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790878835; c=relaxed/simple;
	bh=JSOof0uYTI8diBwGqgHN4G3h8I1vH848tQliUcObWe4=;
	h=To:Subject:From:Message-Id:Date; b=EukzFF9hRINkt/adjUBnf+IJajiOC2N1VpCzeQHcTRyrRP4O5bTTe/kS7+XpXH7I0tTg2aMeYRba8Kx0Ihjzd3BMQm5N4XAOXOANrc5klKQAd3utQwK8war/1Tl+KlIWf4RgopZ/PbtJAkr+DzImQffQrcyFg2urfIrt2c+QgJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9e1MfvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9e1MfvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EC9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790878833;
	bh=JSOof0uYTI8diBwGqgHN4G3h8I1vH848tQliUcObWe4=;
	h=To:Subject:From:Date:From;
	b=q9e1MfvGdgNjLH5yRqjC7/XKDJIB4INv36CtMgz0hOrPC/hNe1T2EDGxqbeFelFuH
	 mn2Rlv77p/dKjMCsgB2u9oe2g4SlCTwJno88ei8nYouCqmot4v4lW5Zdd0iNMOsD5h
	 /aCJRgCzyYQYX37igUaDZWY4qIkXQXCq3wf3OJS+TCu3BB/Vpt3MflRYqDKve9YfnO
	 q7+DDXhEGnUcF4UPqKaosWQVJE+SXhtPZDqIZnncriPrIlowD12ebs2/zglNZHJULR
	 UZRGnTYn7hgYb7WoILnLvfhGfLC5PCBHyYBWTSkjUjQ1JxOGv2Kwws9db9vipv7ubc
	 02/AxQJxdbihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B124FCA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087883368.17042.8275908063735915742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6757fd4b1faab7bbb82e48ff7d6de8386e920e78a81a376cc2012b378b9c23c
Date: Thu, 01 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790878833
