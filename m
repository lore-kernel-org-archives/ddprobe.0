Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4623BBC5
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719602063; cv=none; b=S6c6Ws82y7Kn+lEEjqxbPHymqTMI5zveRIAFFj4tNWKmp9xW4U+YlD3jFR7gFJu+hvJaPTiikZbPfdZP4iQdzXEDJgtqkt0Nqa350S18xCAEl1jiR/Ym6HKVL7eOQgKAPOw2FdYcDRdo27L1OInbVYCZnYxwMYpt15IpaH/FUt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719602063; c=relaxed/simple;
	bh=yT6KXNPJXy+9TpDsSAXoZJzI9xnbJoV9SDY8v2Urcho=;
	h=To:Subject:From:Message-Id:Date; b=nL1eIiXfS7dPnx7U0yHvU9sBa+hrmwPFr5kvp++YZmCBfjdPopB725WYzv6Vzvvwthu1Id0E9m8W58OMFasNhhFw+7pDUnXrmFQt1ClkT9WDLOBNY6IWadQKy1hintxNaBlRYprSIRGOrEEz5YZ8+K2R0Mz8lAacgbl/g8tzS4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1PbRmRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1PbRmRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B0AC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719602062;
	bh=yT6KXNPJXy+9TpDsSAXoZJzI9xnbJoV9SDY8v2Urcho=;
	h=To:Subject:From:Date:From;
	b=G1PbRmRG5Pyqt3cYnQ28CU3qkPsSQV8CKfKqhg4Jdwi0R89j9D/zM6RzpeLng71sM
	 m/I3y0w0qRRADxebcnlHO5EfduW67VwnMRGklFAiQdLTbvOv6YwDrTF6lb/+w2izI/
	 BwAh53VVkBk0Fz1AolOsua5BUayIvPax39R2hOBjROoXdwsbus/8F6QCb4xKnOTqPZ
	 TQPsiylgVBMhIeJLYGhabzWl9PfkLPWTQIb8eRUXskZRsHuGOzzbfJ4C8rLtf5cfv7
	 NBrQORS6J08ESIrXlsWI51TNbPlbtIh2LC1muJHpNpU4ue9+ARlnl1oOn3i9yoBgMK
	 1aMjaRv7VcBKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9387C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960206281.23711.17924446956191679404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ea02544bc8809f340abb24c7375fb4c91f2652a04e1f2d599de0d59883c680
Date: Fri, 28 Jun 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719602062
