Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061553F6C50
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783547914; cv=none; b=qauQRC3+MWJph0cgaUQcF34b2lrP/8YS2qTObwAh0lg40KnF+5PJdaQvesxMsso6s0MxyqV7VwjbLw+wxaOJyXXaP/TMARyUjp7BvT9VkU5AVe/E5fauSZYV9GRBbgvDp9Af7SoH79eBguNtvFc6NL6YA+aSYxCNphFvYPIYT/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783547914; c=relaxed/simple;
	bh=Lcd+YqvlopAO3FprHzJ36W9KX2PP1Dy2vP4JI5uoCjA=;
	h=To:Subject:From:Message-Id:Date; b=DOKxLCCsed0+KpDVaw5QC+XPlvAyNbuMBo8FIGBjq+emNiTYz+R3hvKVKfFDyIzZJrC7D1W0pdgFGAZS7FMP7kIZ9kPntvfvl5v0/0Da2IlihZefMEZ6+rRoddshm/Q2kZ5UJrbT79zitp2vPYK++bwGKWENlH0BxZxJEF07kk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQFG7Qlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQFG7Qlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C939AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783547913;
	bh=Lcd+YqvlopAO3FprHzJ36W9KX2PP1Dy2vP4JI5uoCjA=;
	h=To:Subject:From:Date:From;
	b=cQFG7Qlkjqixx/M+2PJqpyyAXFPMsoDC5PZb/BGp/PrAcFX7M4t1Z5H41HckLCMen
	 vinIT0+KzATetLO0qpa/nhHyhGbwt+tRChmWxIxhp1S2goGeTeMg8D70UoFOf8BJGb
	 DXcKLessxOHzE+KwGzqS9luUl25P3XaUPpSOaDFXS0mZ8qQVig+y3NI3MTIjG0bO6N
	 2xIfLJHfjouLnx+l8abYFOgwg5mXHVtz8ZZB1H4wuGOaSAY+SCbVTPZ6ftHlYo3sx7
	 43XKNhrLOSk/Ylnw7J/C4hf1qMzWoGbd2VcrHQE/ykwt9JEOVEM29e5cKJScU166Ux
	 fde+bfCLeQwZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A797DC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354791367.19920.9826379613436210919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be204b84db0ac7e0310fe5327e243d3997be0ed12ca2f10e99f1b0db829ce07
Date: Wed, 08 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783547913
