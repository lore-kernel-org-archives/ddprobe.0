Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A54DDAB
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758749994; cv=none; b=HzwGqpmNfN4oZNq36lfHsbiBRArENRCQ4jGo2Y7fRvKXgeds70FbDK3BxpoV2t02jZSdn7hguXlT8rRc6/AKS1BcsHA4ESHM3NCEzBvqKseXccWKRq18dKU077yB3x2JE64OMhvlsRo98y/xJe3Y78x/EhzOH08mqc3igxxTq+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758749994; c=relaxed/simple;
	bh=o81I976QuOdtAoFv9zrLvpZNQsOeFJuoWP9hUeHCamE=;
	h=To:Subject:From:Message-Id:Date; b=bNeJ4xRKmqIq1RmQeoTJr0JEFnnb8lfQI7aWUvXitNbBFIU+AnnQ9ISWTb3znhm4f2aRV53vFYLvqrRaoEssEuhzXBNIsEk/XEk2pmSW9pFg3cGo/bEfXnyTi3KqIGvIWvQ6NOhc5NgHjza2APU153i/gxSwPrULkn06R/ESAJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T107Il2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T107Il2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A438EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758749993;
	bh=o81I976QuOdtAoFv9zrLvpZNQsOeFJuoWP9hUeHCamE=;
	h=To:Subject:From:Date:From;
	b=T107Il2kyo/I+3PedE5iO7afpVGsjhCz8sgUxh87egtFcLxdRLUR7pVF3OrpPLwVA
	 cFaCPdMSZqpRrDSLlFLXPZq7bpsjtOHPXQPWo/9L1b5rnUDskPQf4ZUpe9/sZ37cI7
	 cjV3S3Bzu+AaAaWh0wkbX5/ok5p1ZFT7dP6jTwpuM1jlCPON2Xx5rVkQD4mGUYt+tF
	 +tO5QuFSSUWQB0tfVlZdUCXjlmqY3B1dcaylpfGRQA9RcliYqU4gqM5v1zhtuH1z8O
	 TJ6XprXPv443b5PNagBN70I13/m2TXeyBL2Jm+PDfwXHE+MeT07dwNJV/ENzW7TEPu
	 e0YaEr6KehUkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90205CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874999358.24452.12407308642150170497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42563dd73fd13ba230217f7f6b1d8b90e438624faf67efc88ca8c8201bc86707
Date: Wed, 24 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758749993
