Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEB8433C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734893154; cv=none; b=oVqpO7q8hYVHnEIWTUnqQYEB+OAF8Wni3TCe7HKnj9vfvx1qhZDdAYm3QDhRz3oV//0IZQ0jKCixAEPxgv0IypxSrbw95kTD5bTZNVvJd+++ruYoej23DRCwsRcOl4S+OrCLixe8Zrt9SzR3WbdCa2rVn6l6rueMX1giafHQlGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734893154; c=relaxed/simple;
	bh=8JP6eu4YeM9RwpiEfxvhjyorKOR1g83u5lvNP83U7/0=;
	h=To:Subject:From:Message-Id:Date; b=uSkQrEaegy19GRH0NRjt/UklwqLP9PQXm+U6PrL9jvT9OLA12iwLA3kvetWJ+Z5GUyYC3dPjTPTfDobB9dmkXb1rMq8eWUjxo5vyoRPi1Ebd+F6qR4GaChsyJKDIEFW//YfAey9frF+vYoRDphCvF3uMnuybJSfo61qtcA+qfh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLDnYdow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLDnYdow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA751C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734893153;
	bh=8JP6eu4YeM9RwpiEfxvhjyorKOR1g83u5lvNP83U7/0=;
	h=To:Subject:From:Date:From;
	b=BLDnYdowMpFbWCMBaCGFeOTFlalzV351UOEA4xnRRauPzusOmyY5seTw4+fHxPXac
	 zJ2xE5pbJyPBKZ4tK+oRLFCY09Dg2l9+qcDp74CQG/W/MjzTpZstF8KijRFlpxl8ZB
	 WPakko2oitCi/Paoh5MjBmEDH+Pi+lDb5YL+48/DtYB2gXVel/NwpG1Soz7uV2WULv
	 VzQZJPLUX5YC5+OtbC+8NOqNdoKrgn6uMg2EfM8jzIc1uB7KJq1ZkAB5H8U4rKJU8u
	 kn2psvs+62egJmVH+3yQuAXge3uuzRIQgLYTLN9eT9WSejOpr+fskTgMJ/ozvXoMfv
	 q3rLWaNPjhZkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997C2E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489315360.30824.13430157245230125188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82ddbd61692a6917a71c9b7041fa86ebd71cb5615ba0089dd07f46d60a77e68
Date: Sun, 22 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734893153
