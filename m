Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6D186348
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752733794; cv=none; b=Ade3yu5ahK7/fiu9RtiV0Ftma8ytn4uZf75O6SFB/yegCH1moAC7wke1mhgpAXIXmMuR+tFGjW39yEyErT0XGoTJlJFE3fDjid8xJMwCdZ89h2RKyR9+3B1T+9RHSc2zgIpo9AnXjlO35DKTivPpe1svDkzzmc6pqo/aEIhfmnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752733794; c=relaxed/simple;
	bh=7xzeitCbw85FQb5EZ4use+q/K5/oUWDigZ2FitCrhFQ=;
	h=To:Subject:From:Message-Id:Date; b=TZTHloO5HQFoEnXpv6FNmzoqI9wPrOXi+Oj4gonv5FwUWEJM298f0WPfQnpaHorGeERNtgD0RWHoMCY1sLTUupB1UdiQPAKoUpXWCqDLLO5lmrP3ozBHAU6ZbliIMVvciSZ99kM6LZE7voD4BFyaD0bmxo2GDQ/JiqkEET39Yis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3dgf7Gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3dgf7Gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752733793;
	bh=7xzeitCbw85FQb5EZ4use+q/K5/oUWDigZ2FitCrhFQ=;
	h=To:Subject:From:Date:From;
	b=N3dgf7Gj9NUMmLJeBFBIF8S9aPj3YYBs2x3pPFca8/UZDGVW+WQU3fh/Nc1yzIN87
	 AzIdDpiHd4IaZg4VU/u1b0m/wjVTdFxXF9JKApN8MkqM/LngPMd/SwLAHPOyST2jex
	 +LpN2LjDgZmYHDuHeDKtp62ENc1TMN68HGp70MDL+ZCC3ZArJlm4WEMy4dhjwsLvr1
	 ARjK6bOIoDXpwVfirL1qzo6bS1bI675g3OUMBoUx+QkqAiFV36jLPNO6+1u4WtkaJj
	 3uetE2PRC0q1zCo/chJzQ2vzosDni9xooniuwPzISJxqDxSjBWijIzVPVloc8CN9uB
	 +Le9nfHt118Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2EFC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273379357.3644.983936719565201076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6a52d52800df48a84bd500cd6a7714cc28df7e892502b2520c7a8231716621
Date: Thu, 17 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752733793
