Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7FD15AF6
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733627154; cv=none; b=dqWodzY7ttLOPPPOd+pXWp7GQTOjNXCJD468sHVeNC55syPcOO+4/0fnUkm1zucRalWwvgwY+3GNOYsIZ5+AVtWnUY672QBWiRefOb6ulinQ6lutugcj6J93zlXAOD4aEt1MHG8m2d8GnQ04THoK7HIohuziIy1g/pF3akAKBgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733627154; c=relaxed/simple;
	bh=HHoKSbMAJ1prZoMNsz6DoI6RBQMVgh/tWK6uVe3yLgE=;
	h=To:Subject:From:Message-Id:Date; b=XQLQmZWzvnfYLQtvm03LRavrn7+hmeOYpB2NHQoiPUHaNAT3JLXPFR1W1wraKi0spCpdRxV8shcAdUiuq+OIOyCEcDMEJRlhmAO4xz73s2fI1FvFgwJ2CZgbBOp/h/tWh7BmL1IB+8qRFxHWl/B9opyw3s0VU3fPHcOJmIykFlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAFYareJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAFYareJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD28CC4CEDE
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733627153;
	bh=HHoKSbMAJ1prZoMNsz6DoI6RBQMVgh/tWK6uVe3yLgE=;
	h=To:Subject:From:Date:From;
	b=tAFYareJ99nMCmUIazx3fJz0+JaNaD7KbirKcA2OnlSQ39qgtBxUxa2QwjtmN/SNI
	 zjxyDc5YjWEZInPciEBubGX4Sbc0aMb28kMd/2yjsLrKL37J7OLgdAB5wBicLd+Yc+
	 HwyQMP5DHRbfn5XZ3jUpyy0gMiUvOVy3zIAJqNYtZp+zlDlV+6Lrolh8xxEWbqS+ii
	 QQbO7TfoignN2rBu9QFE5BLwWZdRVp0j9gCB46hyuqxfLAhW8NZR5XxeKTn1cQkeuU
	 +r55Q6R1JhlqbjB3vvlziBIlh6igRr6DrkKVJ4qQjxjuUKAXtdfpsirvZdUeA37IN1
	 Uh5zG5bG1z2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F72E7717F
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173362715358.1427.14153502205156466634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553a6223ce9cfb6ea0f0466c12dcc8de08f427240e9697acb9607bbc1b03b364
Date: Sun, 08 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733627153
