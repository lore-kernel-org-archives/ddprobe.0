Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3369513FF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728006354; cv=none; b=G9/2j4z8HQD3Ja4kSKM3MRO6rRZRJRR6VhDllWv+V+LYsy/iOcLqrloPpTwrkGPNjWyzWi8PQ7rkK7EPlbpaOhhHMi01JHSWHXPWk9kt0GgufbEy64T+fr7M4aOWJQLfYXorzBU11hpjbzkEm4pHbrQW02UFc0aANxF7FUYXxkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728006354; c=relaxed/simple;
	bh=7jxdqpr1/UFOeGanX2CHC/M3LVih/jopaIUjqg1yFoo=;
	h=To:Subject:From:Message-Id:Date; b=uGaCoii25V/IDX2OLKt7hkWsWRlYuikWOrqxZe+vR9y69Kf/aBKP61G0JXXXB8AyEc08m5Dsyt/kCZuf2rndQzaYyPXVgRuPXJd0IC3Uwgkv2c12htUQ0BgoG7aHXb7g0fXHFGeXxpSX+lFhfW8tbNU+/FHXs0yKOS7OCUQAawA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUL+DnpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUL+DnpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAC1C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728006353;
	bh=7jxdqpr1/UFOeGanX2CHC/M3LVih/jopaIUjqg1yFoo=;
	h=To:Subject:From:Date:From;
	b=oUL+DnpI0hiQvEPNM1V+1cGyG08jjHIno4QQlDcafnT5ke1Z9Xpy33BDdBysHZisU
	 AnecU4HecD3+RlGlWVOIin54eb0t0cci4O/Dvat8WfIQdMaDpJEoKuO7Eg9cqM+pCA
	 8YYYS8c9tTw90ixeB9BzrT/UJ3C4eoA5p8pYFEriUFKx6b5FeLZtW4e8viWQNVXrcX
	 ENvNcHd1u7adAOltiq3LPr036PDaiTYwIa6+jDeLPQ9T0uBFpetphXSw7BHGqxEQcf
	 EddnJLH6WDv1zrc5+rtI44JWz3P60jWhRcamiJ+UP5WLjMoIG6Ix+436Db5S+Q4yZQ
	 JWQhaRm77oWnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E34ECF34DD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800635363.26827.6623563737446687887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8671481ee70e88dbcf5c68970c326425a518b56349e56a1d4c447e35f97f04
Date: Fri, 04 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728006353
