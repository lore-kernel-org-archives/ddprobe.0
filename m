Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C84D17CA1B
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718880023; cv=none; b=ODs9Do8GGq2/Hvft+uU2wukHv8Rfb/r3k8BvuBGAe4kpvir+qR5BlG/6Kry7Gt9mnAWkWqu0N4uRmoPppp0W/5rl2MMW4mnxxxNbRModeC+I7iqkKJc5trGG38o243BqLodv8OBe5E6ppZvDXukGQZTMvoQLjzg6iaObmCta5L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718880023; c=relaxed/simple;
	bh=43G4avk9v+Any/kFGrqCrWHrOWgCjoSSvd3bWKvioeI=;
	h=To:Subject:From:Message-Id:Date; b=FM+6+bVpONtfF2o+4YoHRL2+H6cm2INu98IpR1a0KAdfxv9hhzEJjm/VdaStUrmQCevj5rLeA/nflpv38MruvOmF84/83W7MtzbVg+bvSxpzsDFmOigc1zmqxC6CjTNjcpI/Au+ZdWpZRak7sA7UmYuk4z9BJbLJg4M6jTCDmlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcqvzfcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcqvzfcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D594BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718880022;
	bh=43G4avk9v+Any/kFGrqCrWHrOWgCjoSSvd3bWKvioeI=;
	h=To:Subject:From:Date:From;
	b=FcqvzfcXVh21ECAYltxXDB/RQPeBTRJquCAIwqAJ7KCy5qgU7Kj3if/8pZXmkGpr9
	 0I7MBoPZRNAZ1WIgT5NCydhZf3ElqcNS34NHwCpOgOuTqwM9IVkZfx1zQPtNBoGNfA
	 L93UMTVe84yKiFBxjL69n0enxEo2VZXdbtCyGAm/zpLB6/kZhqed8nl4Bo3lueXKu6
	 BL6T6I8V8QLmS6uY5Skqyo+1jPw7021gz80IqeAP07V1/sFBNYDZou4sE0NwNVCepM
	 4NPFJnl6EgTtBxVigyl9swQ9WuhlKFiLJf0+TxRl5rRfs7XAUa1pMXLX6q35UfqhLb
	 D8PNdThTzQTnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4101C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888002279.13722.18337756434214433569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ca1f91ae0cd169af9577031193e98fa561f14abea99bd58222a63a8ed02ec7
Date: Thu, 20 Jun 2024 10:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718880022
