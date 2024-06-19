Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5924315F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718776763; cv=none; b=EXYELGEBMxZqIu2/KfzExhUSDzPNShWpXBt6v/zeCAL6b7tdz6ekssjRoJOJXkG6WINUbnqio7sabDvqG+2dC9DXnHk+VtyRXcOJQAQvuYfkKTB8Jc+yuKboIT6bDnLwlzic/ZSeDzJWgHm47tUpWNr6kfChPzbawMm+4ql0UEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718776763; c=relaxed/simple;
	bh=7Fa5uPLQWOHF+0iHUHIIH7Q14x7eYX/bgZSHp7Uo4QA=;
	h=To:Subject:From:Message-Id:Date; b=RUWBTdo6DZ+dFcSUDndnHUwE+myx/1cc3DN120iYNlF6MBdEJCNUKR6wp65mLumR8w4I1HLBsiCfQadC5JKAhgCF/5DzmSqpU82nX+tEkE33Vk5NEIP7jyYXmVGdsyKgqTFMYHQuhO+jTuQ0Xs9FgdPxjvNNZlntb1nPce9NPMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L222Heez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L222Heez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1842C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718776762;
	bh=7Fa5uPLQWOHF+0iHUHIIH7Q14x7eYX/bgZSHp7Uo4QA=;
	h=To:Subject:From:Date:From;
	b=L222Heez0LxAN9k35MyAlIjs2g8onvLCQPy15UHjmi54Q9Zq+d6icNEmmHjRqnJCT
	 lFOwFWI+z7r60IDat+zj5O+AB12I3orrqh74LfBe0Y1h4MfuuUTRNF4bi292e4dlvQ
	 /4fUv8x4NvorOPFt0EpZblQZlPrTc+mWdGBKCOyAGxv28FoRGUnI92EjUfec4bJ8MH
	 yXdLWOSOgMqJVZNSkuJ6AMxDEgAdALIWAFEv5umhxfHCJ2GDJkmcWniyLqoINRwZUH
	 4MuJlWEI8uaEEplAm3wgCzhCz2pwoqhauKFid2KIlPmuGu8FVDERbIjvlq3K2/Wjz9
	 Wnb0VNJeYLZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF935C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877676277.18469.2634683561037187836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9eea4a14fb760541bdff19c077b69146d7f577d0820b6f28ff51e056dd48a63
Date: Wed, 19 Jun 2024 05:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718776762
