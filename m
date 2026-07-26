Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5316A31986C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785054034; cv=none; b=Stv7CC2/WyTveqHo4mRyohXIvUuBnDbGeh7VD0OXTfZ7VvyKOGE50FeCm8jj9BFzHJcxKvAcAl4+gEiALHQj+MQf0JtEbh/oR0tak+/xgxJFWp6SEIU7ui773GFb5Xemt1LV9OZBjJmatTfz+UfwXhDH1f/5M+aTnCTzPr/H3Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785054034; c=relaxed/simple;
	bh=usiUIvG+FHqUxn72q4rR3PPLe61rYjRsO5hQLVIgEeo=;
	h=To:Subject:From:Message-Id:Date; b=qhtLDl6MBhAQXP+uU+gxHYz+nEpbJCh601ixkDs67DCW/IDM3jkksEtYxPROlCwJduUIIYzFuYGmh01SiXQ3YGsjxCIt2H5gLOoBL3GficeWBdYhu1MPHsNcot+d0P4atonQc+DCzWVPPmWHdMvCkMOaGYwhebX/J4t04qSf99o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGKp08HK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGKp08HK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF62C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785054033;
	bh=usiUIvG+FHqUxn72q4rR3PPLe61rYjRsO5hQLVIgEeo=;
	h=To:Subject:From:Date:From;
	b=mGKp08HKdA+JP98ROQzGIQqcY1TesNdeeqvIweHFU+LEvIALLhF08huu9IGTb2P6I
	 7L2V0hsp4X/KeotHBEKXXYBkjwikCjy/9CB53L5tVlgk5UkibCeJ0hcD7v4Tm3ffhw
	 iDReP4E3lEFZOSLW6bWtYj0SmU9s0QsiLh1nk2gbKIs+Xzy7fSl08YScIztgMZw8WA
	 W12no5u0bzqu0x2g0vC3U+1VMvuNc2ild/3k3xCHRoVbz8+OUvl2jPC9jn3fB93MqJ
	 0xzHvBcRbTMAE6a+CkyKJ9ffsTkbNx1TAEkAJbPmXekbD7gg/Vl1QXFRGdt1REYAn4
	 Lhmx9kxKva9Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81E0C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505403368.14357.17214307402337357198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d470b1b220ce949080204e4fa92309143894fba0548ec72ce7e8bcf0d3b61a0c
Date: Sun, 26 Jul 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785054033
