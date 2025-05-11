Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB1913635E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746977994; cv=none; b=kXr+WhH3Qa2xRsaS447eVrTtlpmVbW5EtHG6pWRhhs6S5K/JfxrbT3QNK5AaKCQH06j4gW/j6KsI0INmAz0ptcum+lxMYlY7X0Eq4d4MOeomqupYzJFX38N3iEiwHZ4mQ2BrUeQTcbJoLM9/mk8nXG9JqYchhzERX/pdZrcK4mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746977994; c=relaxed/simple;
	bh=rClr1C9jynhQQqRYtq28lvYHS7oLflgdmhoX9bIFEEQ=;
	h=To:Subject:From:Message-Id:Date; b=qvd9tt6mCnOGRy+LptRD/u2nMy1bxCOOoTBh+8iv/O1z8J1rWRGKyVU3RQeh4EU1NbXgpJqgHdZKxiZqg7TBTWvIIflfPqFA1Fgus4QwSNEB9seV/adYVNk5rCfeaz2icWxUB5f/OjdBej/9OS3AHmMrHTx+IIYpHrrxHNzhQGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEcBCDt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEcBCDt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D6C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746977993;
	bh=rClr1C9jynhQQqRYtq28lvYHS7oLflgdmhoX9bIFEEQ=;
	h=To:Subject:From:Date:From;
	b=oEcBCDt+Ok18vkhMwOyV0YwvasuQCjFVswwq8Mgdb686xpSb3Di5TjcsAEeeQ3ISa
	 NdgRq9BTFz+cJjwgk3jz9McPRBBhjsfwXrxBtlFw1wE69dy1/6/vGSr1fMGmTHxXA0
	 Cc/YqmoBAg/NMU7dP3/C6AxqVayHbdP356InPeLyinRnb7uDICoMsbgdhuZHnhKXsX
	 +n/7wmJopkjmmHlYY4a16QMpDFRnzmOHy2TtoNVUPlX2P0AwCy0IOy9nGSSIDfIk/u
	 8VVTFG65EJe7HlaJByvsKhiQfDAyaEFsAyyrhXTXkOgLgFQR4Uuw9Y2HUFrDQh8TTq
	 oGS77T9Li2ZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95133C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697799357.29579.5938242774422552583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b7af4af695dbdd63e925f418c2b2e0eb709917748ae11fbca063355119973c
Date: Sun, 11 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746977993
