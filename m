Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344E6288A8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749269394; cv=none; b=hKQZsn6KkmaTE3Bm+MFfY0bmPwn2vxvXS8RljtUe10YL81G1H98BD1Z8gA8SYYpN5vcxoqFyckBT2Ak41dKqINbstTDo4gVaBrds7qttLvY2JpDoJMoz8Gyid1MROLTLg0MkpQqmAulbgZomWT0fln/CtzDXLCqFS95GZ9oo/gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749269394; c=relaxed/simple;
	bh=ZFX6A6pP67oDU3aFKHQbIVwi7BY5+EaKf3A6NXz/hP4=;
	h=To:Subject:From:Message-Id:Date; b=BMVxcMNBDzwN/Ei1T5kugWfXMcVBRUI87EnAXM8H7idBAPVgl3LC7pD7YQu6EIdygXYjRFESiUDo87O5MVrL5etaUIDgYRhp/LfbDNmW33UfkXVArXltwx4ed3+ah7R5WzIAogATkSh9VIqRGdTAQOpLvThoSXF3fmX7OTs+YJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3uwRO7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3uwRO7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A901FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749269393;
	bh=ZFX6A6pP67oDU3aFKHQbIVwi7BY5+EaKf3A6NXz/hP4=;
	h=To:Subject:From:Date:From;
	b=e3uwRO7pOtze93ftFKQAmXtkU6SlPeY+EbRYFNuugMaijKXxwWRfusbZiaDpSnuCZ
	 8dE+sW8O+MJjknPWMQzrNpE/tmCB0hTbsPiAzikfjqcziOtKGIMMfDEWUrNTe1l66r
	 Nf25PeemwrnAmS/3O4RwD/KVFlm3QSe/22OQN6/9wH3jCtZivci9l1sTRkA9WTkjx8
	 wWjbJziY9WFTbmb89ugOrbHhgQ0YtpUi4rNpj2TGNs8xH3c9SiSDB0RrcHKhrRZW37
	 RasUF9MK+VWG/23wYujv/r1nfu33gRDcYi6S1Gc4dgYK8aE50ep5+/Ox7MQwCjx2v8
	 xKOQlnK3eebew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF4C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926939358.17254.1472066286826043736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4030bc5f5c40b08181312ac8733f8e6da5fd906d4358b5b1f5f1a6558977ea7b
Date: Sat, 07 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749269393
