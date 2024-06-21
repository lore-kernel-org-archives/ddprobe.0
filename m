Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ACF208A8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718982743; cv=none; b=gKiWjm6fVDisolt8adn0nfeYMBUwxG0pg1MsOwRqF5gtBAirO7n0YnDIElfnTWyXzisYfNkLvEBCvJ0gmSEK3itAFwD4l8AgnXx7Jaby4XNRLgIDUpssow/0fXcLaxXZcE1PNmfI0Q0KlaALpaxTjrmggcLZ5MKjl1p4tL25kJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718982743; c=relaxed/simple;
	bh=uxi//4Uha+TkznMkAEWVExi54DChmz5yLGlMCMTtCI8=;
	h=To:Subject:From:Message-Id:Date; b=IAeGBN4iiujeaciPZWC5fJlsvva9HEMII8gezhPN9QkiJolRUVi9SvREw469IA8TL1+prg3NOi4uR/M8PzG11XGOmyr4WvvoGIEb4FwkZ+rudPMuWNtZkdn1fA0VPhGlVrZ880fIrRD6Y+Gvs38ySzBFH6iWeYU7TutExVEuGr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRhIop+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRhIop+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED92DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718982743;
	bh=uxi//4Uha+TkznMkAEWVExi54DChmz5yLGlMCMTtCI8=;
	h=To:Subject:From:Date:From;
	b=bRhIop+r/FwDNglFKktLs33jet/MDOEoaKuTnMHNMeBNtUCjH0xzaNxthkbbHTWm4
	 caB7+/ZAoym4egOeZsLLVvkMYc+yYWm66MxdzC4IPagdW5UQswrorTy3NljVupoRNU
	 ileSJ4avmUxOruFhuPMCYZzYdFuc1Zfw0EuOMBi47mRujKgpjfPJ5fihkEfOJIL5cQ
	 zw/BqPLz7LnHqbhixI4WpE+iU3AMdAaLL7SaoXJGpYoIZefakds4wsVcwMPmAOVeCh
	 2E7Eic+P2xha5f5/Nhm3iXbRdUUMTMM7KnDjfkdKyH1n9yOAHwND+tHF1wgAdqoAsn
	 5y5bYZeZEfaHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A7BC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898274285.15416.4267436356818794600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab13f7d248c064f9e28e745ee7530bf6d0e380a6c387b124251c389ea33660a
Date: Fri, 21 Jun 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718982742
