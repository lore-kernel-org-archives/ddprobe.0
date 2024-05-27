Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574EB3D0D0
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716796463; cv=none; b=eX96z5BUSNRl0pHbpx8548h18QZPDLcco8kWaIvCm2XilCB6rcS9X+HThaIivhmJNo6SORyln1TgwmmyCnsF/36zy98AIIlYZuUAijd5NycfTk81hjkfMWl9ptc8uviaCvOYJ8JhOv3+73iUye8LDkdLtOvNzEJ/EDIWnwWrT+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716796463; c=relaxed/simple;
	bh=9OFodOuvK7iReYQHEuJ0Seby7HncNJfcdrVSe0SLMUo=;
	h=To:Subject:From:Message-Id:Date; b=QUHmwEBXVhq0e5AfhLCkLjPkQOPMt+n/z4w4cCMiRLavmq/rU4EeODdtaQx8SM+VSNI+J8nBn0UsVpln3JDJzMSna+hk36ru/tuwx7tgMa0hU2POEFF74KXybHEVOZW++C3dm3RU7pgzxgA0NGeoOAYh3VgHj3N0GtnXcyff8MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdGqZ8XL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdGqZ8XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2F3C32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716796462;
	bh=9OFodOuvK7iReYQHEuJ0Seby7HncNJfcdrVSe0SLMUo=;
	h=To:Subject:From:Date:From;
	b=RdGqZ8XLMU7HPwIdO6zyXrBQ+zQlHiiNcDdPhYjEgra8HSKf5bHxPuN56nJW01Bsz
	 w3SSWACd0uuQwRkaZTzLOcYv3OONkvntqyWxskbdsQhcAnTqAZnWNq4ygd1ax1F/aw
	 60Nn7JKyPd7KKnZa4K3CEtSo35NPnSOQhBQm/YslQkckXfsYMpgniNIGuq1X98ua++
	 YQ0pGGbwR92BNCW/GGFVgF+VhQkm1y29oDTUjcXh528XPBm8craKrzn39DewT0Kf73
	 Gl+mvcEIouhI+fEypjnQr+UlZCraaz/m3x3GIEc7VTaUbtcRdOfNwhqtISshphaGHe
	 lXmG+3fFlfO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3797C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679646278.29954.16200034016428311214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f7d06f54ceba1354a2bf7309780e12683bfb8d99b045facdf085753cf6be3f
Date: Mon, 27 May 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716796462
