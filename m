Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50552433E7F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783211314; cv=none; b=cdrEJERdOkD9Y2Kj78KAa4L19+m8krxP1rdBwMuE/wMhGIhg/tCAdwBKwl93MCaCysMF1u5ZZaRsWEfwQ6qIQUs8Wu6yfU5D49JEktbClcyAAFI98TYSBCJvD3oZ32UWcUgeh8uKTWS6yE63WVXJjiKTex/fNck2D+rTlkjYZcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783211314; c=relaxed/simple;
	bh=iyEob1Gr6y5+ygtcAlM0vSV54+Q5MrIdgcDh/uYGscY=;
	h=To:Subject:From:Message-Id:Date; b=q90u3gCC02oBkk7ZR4acH9j+R96ZgDsNYD1ZtvWBhFZApZMxM+yWC2QagFq50gT3EBDoEtoOnMKeMOtO4WwzgYenifFrXEUTFHOm/hilPftM6a27+/imFXi8N3WxRGYfb43yc2NFkccEoF2WWMARkg1Q4hYrKu/gqsb8lDcKxVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEJ3JIE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEJ3JIE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA617C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783211313;
	bh=iyEob1Gr6y5+ygtcAlM0vSV54+Q5MrIdgcDh/uYGscY=;
	h=To:Subject:From:Date:From;
	b=HEJ3JIE0ZunUhzSkzMQuGjRTU+A1FxmVGH48iOOWl2HsFTiwD6o/LGK46ah/PfBnI
	 80J64xZR6Rxrv4aCaVF2tAv1ivuXAiEaoNJII/mKq4lySA1F4YtGnw09QOtKjgHe2R
	 hnMp/cBX4MUGSQd0Z59M/+/X6cDtRnleEISNkwa4iLkG2v3zdoUhSnxfsjq04bA028
	 ZusS6205slM0cpG0eoih55EJGRzdzYsfbSB4F3A3g3OsEnakwk46GDhckdDe970/qS
	 74Hvcgi3nCOBe8RUhRubt1JEIN+b/6BreZ/K+aGr5ZADePF/yVKIunCTrbwzVyFwHh
	 a37N3Nrg7u8dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A843AC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321131368.9839.4977691377069499595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db40d97b0d734c0819ed6e0abf21228708ee53031e3f442efbdbb3ba5dd966a1
Date: Sun, 05 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783211313
