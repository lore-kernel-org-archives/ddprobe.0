Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FCA24B29
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754608194; cv=none; b=Y0AcLciJAzjPD8wve2OGAMoIal2oy3nRrU54mvIYWF9PKTFld3XBhH81kX0bVuXP3+T/XpClI0HU2p1US6EgARYT4qMCe6+dS8WoGNQuB+36X0WLLZdDS5ffZxOGGAlQ2doAd3010nEBiQMePnEHqI9oAI+utdMlE1+hX8USLao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754608194; c=relaxed/simple;
	bh=PteQgKbrlWcAxnYr0K9g92VYE6E/bk29KiA0KYv7QQ4=;
	h=To:Subject:From:Message-Id:Date; b=d6knVZ9X57TkjZFIVH4KEbQ6z4w9rLXbPK6AFqng7jzkbgsA3MeEPzM0j23U7gRYZZRlMPaKbmxETPFPGmNMfjHZyh+9xAFJ/4ztBBqmtECJ6ZudC4dJ+3TnC/AYVPzSolGnnLRQcGLuKfFfE8s2/LNbtmzplQlI9gM51RErZ4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEDElBVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEDElBVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E181C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754608193;
	bh=PteQgKbrlWcAxnYr0K9g92VYE6E/bk29KiA0KYv7QQ4=;
	h=To:Subject:From:Date:From;
	b=BEDElBVs46j56Xi24etry2lbUlxr9JHTka/cnftF0NTBcN1EmDHGoQQZwJsf/Kktl
	 g4MdcyqAQ1mcYZarNwel6ktRi+9riQqFB3suv1PC0FQF9PnJRP4bFI0BjlrivyEoKq
	 LAcswqxHNo78yMgpyubrxE+PVw6EAErmk/G/1LHBLRbrbvfAAFa5wyIyJ+R1ZZYB+3
	 YBUnQOBVoyVfDhmAffvhqMXa/fzF8cdlot5YlO2MSiFUlp4+ULO1GmOA8ob8wrERdB
	 uO50fdbo4Cf5CBtDGD7y1Cxk1nsSvVxADIFW8LCzlFnStfYOG8OjpIxT5jgMUiacEF
	 sV36m2Y9pWpLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F007C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460819357.27282.13423606997992776302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee6f489ed5b9db580ba2835d683d255691d8e9052bb0afd5692e7bf0dcc997e
Date: Thu, 07 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754608193
