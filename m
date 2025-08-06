Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3FB21765E
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754519394; cv=none; b=avEPUPP2pyWbkGG21kJkwyxV5VHZFzXrzVOYImkgK+wIlKv9ybelLCs45rlyaiY5YqtJHeWgPywQP1KoaWGJTWfnQUY+Q4MaOYTNrW4gRLgcJOlHR0drb+TFYQl8JVebnTgzptKoPxGxCnhtL90ux4lUJSOkIFAne/WLriGj7c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754519394; c=relaxed/simple;
	bh=8/GiYeW9pOq889tOItm4o3ZgbeWMUduYiscN9/kuU1Q=;
	h=To:Subject:From:Message-Id:Date; b=NpcV6nhU4VhANkGLBQPDS50Fm3Fx+RXk4/K/+gpgnk0wYvkB3F5Lmr8DTmdbCvEr6F9RzS/slS3tQbSJH3JbtqB20m3JhNpVoroJGJLqTaQotWTQJ6PxrmNuELJTeazgi4nh+tw+ctkbZQbS6Fe/IwS6bCnbrag9MS3p4TaphbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuQDiIjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuQDiIjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA80C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754519393;
	bh=8/GiYeW9pOq889tOItm4o3ZgbeWMUduYiscN9/kuU1Q=;
	h=To:Subject:From:Date:From;
	b=BuQDiIjKInDcrkHXt1sRGsnx6D5+0ayfaZjpXP44GDBu6ehMZUFauhwUPTZqd6gwL
	 A6n0P8HleACS3LWAlJuGo52MdpYz6ix5hy+teyDh4u/49mpXoGCH+CetxSeq83p2bQ
	 CZQ0h2MuvikDvs9XFEZFW6H0JMDaPl9N+46YewCTD7ZaI4ohPZdpj3YJSFQMsdjUyU
	 J2jitnFlGMrM1J+FrefwsNJJAc7UZxwbU/YDCIloHsZrffG51tM/5063DYNuew5v4U
	 qp54YlZwWFUFVIfBd1+TFv8d7G3e2/U5cuvZmNgCYQIQxqqjExoPyLWArc5NsZMY3l
	 prwwrf5ks/bsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23DC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451939357.12418.12070074465940303999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26691ec457b457f25de34d8f709853017aef743ac74b6f430351ebb0c00fb283
Date: Wed, 06 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754519393
