Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3841B352C28
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780745674; cv=none; b=jKTRnbyqN5p4ese/4EdEcFKJaZ3+vpYiEus2hptyzPo1Sy9YgLHD5eIOXz6JqV7fRI0UH0xPDwshubP1f4a9wzAnyB7BYj2OHRynOdvUPe1JoeGSjY2qrloaNoIiJO25thrjs+S+An0NVvDPAHF2D5MupWsuKWyx6Tr6qFrKUYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780745674; c=relaxed/simple;
	bh=fLT453D/linRPxBUMeYSs9p7yj2Z4zQxABSY2lPBPuA=;
	h=To:Subject:From:Message-Id:Date; b=hP88Zsyr7Qo2EzgjXHGZy7RlboaHBbwHJn6WwNzqgGqd+5u/PE2ZerbHWboz3Db5bhqe4HJ275gd85Jg/iY3PZMUZ4IYgiHvZJtR2641h3/jvwTehigMFMxqGBh2AvYD60lDEFFjfEKMujgflpaotP67tpqeWjVKBkGzkDcpd6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXtw6Swo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXtw6Swo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64A9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780745673;
	bh=fLT453D/linRPxBUMeYSs9p7yj2Z4zQxABSY2lPBPuA=;
	h=To:Subject:From:Date:From;
	b=cXtw6SwoUag0PJ80dM/5SlxQtzFzgN2Xrvnm84tt+1gRJ/PurOLhRzC8nHF0vj0sj
	 qYy2SSTekZ7g9vdrx6vm3p9/UpOCnDp0p3sQY80fAQvGj4hVqYCedJwhfvuTtK/RyQ
	 BL1/TPN8qkKHHF0AwwU5eojaDndHG2V0tTcYtX+H6QvVzTlk/M2S/oG7TpQdvKJify
	 /0CJQb1TNa8eFmrsT3FSlyl72/zXzq86RgnPvuaWdCvw38mjYWMmOq0yIwE0Fdd6ko
	 fYxkNGc9mgBphqIfRAqkP3mROh5y/OXKh6lpwILfFY12n9uFwxRHhSFiwMVVfIwej4
	 M0Di5uJxfiRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB872CD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074567368.23483.4178569681690622150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00e7ba712dad1c38eb49bdbd297b2456d2748139ab666652e8107511075b79f
Date: Sat, 06 Jun 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780745673
