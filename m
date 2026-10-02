Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481ED3D810F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790977834; cv=none; b=ITj3t8XPBNb4BpAscVkDuoZCC4Vv+4FLjgPVZNBY24btXWKGxjHoFvDf0vUWaNGlBcPmNbaAKaDjeEIdf+3eNIJQ2VAhWV7aUD/bolGESL8H7DkToSk4KGVVVuk9J4Ftgnzjlcl2iiKn6Ukiv51Lfj0GNPhXUwfPPMNEIQ7X0y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790977834; c=relaxed/simple;
	bh=5k7RJRS3HlVwL2uF5Yjhw4+NMKvbuGRcmoFuVbuoV6g=;
	h=To:Subject:From:Message-Id:Date; b=sFgRFRG4GlIZcjif6RnEcLYBV2DyI8zrG+JeGjrdSCtdV5TsBiw7jkEhw+kgJy/u7ayt8px2HL9JhC3CNAQcxuO78g0zwjOYatLQ31TRKOT/2IJ57feW0j7nBRI526c5HVnf/PXpDshpKBJaEOeWKdKg5tBZoSG0YDfP2FCV23s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URHtUqFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URHtUqFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56D1C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790977833;
	bh=5k7RJRS3HlVwL2uF5Yjhw4+NMKvbuGRcmoFuVbuoV6g=;
	h=To:Subject:From:Date:From;
	b=URHtUqFiguRDRH1B2GDUKotbSiyJrVcUzDjx0XeUQw731pjKG8Es6aX4cgdOJyoPy
	 UxG6mTBlLXlZ/4KtY19C1qUe+TRmXkNR4ZRrGt9zp3Dnra1U2hYRgug/sLfKS8j7A4
	 ibIIv/HnHTY1hp0+TG3+BbT4/0zIxl/sJ0ZqtQToaGDAJNwWvN4SFFhY6qcc8n0EVW
	 dq8FxM2gfDG8gZjUZuR/nozRE5yoENAhLjt7wZrJvFFcVrk1bvvNsuOQ574zQ5e7Vd
	 GodVPW0RVyiPEV6impwYpKnizTPv6FtYRagoWc5OUb6q8Rpc8k4fnl8lmsLs+aOYJ1
	 QkQuNKn32CG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B09CA5FE6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097783369.28162.11827507833073177327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c733f83e23207bde99e639e67e6d64d029ca64015e5ae56865678a939c78dc4
Date: Fri, 02 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790977833
