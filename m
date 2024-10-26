Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E8C217F32
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729907154; cv=none; b=hxVcfP2gY0wb0Sgyytl1tOYYIaz11CPQ3sWzwYD6WDxbVLHsDggfl4pe+Ok58WzlHr9ToSEvaoKMZ9zYTMGwH0BlsL9w4A93XTUpUI+OekHJz28I2AVrDnQqEEV6MZzfo1vlFwGUBjyJQGDsmqlnSvhuoegl8X68LEkILJsIsjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729907154; c=relaxed/simple;
	bh=589LVj6JrwqOCfC8u26PNKgwB+CavJ9TdywGECORk5E=;
	h=To:Subject:From:Message-Id:Date; b=AGDn4mGaGDIMZB3zVI0BXEA2VfrNcRp9+I3/BIaQT8y4odbjyZ5BiCBwamLXO8PtHdjd4DAMMaoNxQy9O+PpG3NpNjn5zK+YQKute1tjMWr5UCWaygfhS1fNl57Fq2Xizcs7+88NXlj9vXJW18P3193uo6QG5Z/WAQuIOlr2j4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd8FR0Ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd8FR0Ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA61C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729907153;
	bh=589LVj6JrwqOCfC8u26PNKgwB+CavJ9TdywGECORk5E=;
	h=To:Subject:From:Date:From;
	b=Bd8FR0OktojwgsXH638KPwhN95z+Ca+cuQoiJoXZTB7CXc36JAXvlezj1aZubvnrY
	 zJG+KZ78Q63w9X5LMKfANS56F/TPH/Mp08HbMF63eQuWJKefucr4oAVNwM5bWobHX6
	 Rn0NdpdhNsNqLpdVGTxGGODl5f2zNy6ar8R/3vf2u3HF1+hAkT8Jy4FQTlr8bGsciI
	 y/LpJAkN7SI3KbTed2Lvwv3aT7hX8+X6ciQU2FPMnheVdb6Y1JSy7T79mYrDIcb1oX
	 P39k61Ntvwm9jLsBPxQNAEvK0WiTW7oLkrIS0ZSh+HcHJd9Ru+EPnGSYiINJo1hjfg
	 B5enuiMyX0xCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F16D149F9
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172990715360.18502.1767475240719915890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e1bbc6b2ebe7fe9361c822523aef354bc0749e0cd06a38bf5201c3ffab7e04
Date: Sat, 26 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729907153
