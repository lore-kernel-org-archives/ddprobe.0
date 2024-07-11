Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86ED684DFF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720685843; cv=none; b=OguWJUFNtNirQldajyB+wargHiAFzYjecMyRkN9exyLHqSxdncONzrzFlfQ2sK1fl/XStei7dI0XkdrZ27S0+4COhdfpBC0Z1HK6oXOtkl0VBWFpBEB0b9JNnmsOsT8Pd6KoWyj7w2+ge4DeRLZY5x+M3LTx4yhdbv2sdGXJ/GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720685843; c=relaxed/simple;
	bh=zvOD+dbDMzXf3OlS7Jc/0kwFZM5knlPJk3a5L8jjG2M=;
	h=To:Subject:From:Message-Id:Date; b=WcgG+t8D/NC/QnJQp6t/SJiHdZXprc89FshtHjCi0GZsDbQ+9ZXtiUb6SPNKwmt5pMjaAzQd2lOJdjGlngTg39Dzqg5wphHHZ4hgwL7gYj2TL+VChDZYA/emvV1fDNtVi86H/iurdFyv4gPV0oktNv67hRHHdek1iAbEhq+V6GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvaP8AVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvaP8AVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0579EC32782
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720685843;
	bh=zvOD+dbDMzXf3OlS7Jc/0kwFZM5knlPJk3a5L8jjG2M=;
	h=To:Subject:From:Date:From;
	b=qvaP8AVMHa8ljmrn5yKkIQJuCGp7530Ps/ljwm3Hyaq1ovk0db+nS5B6AmABA4dDi
	 y8p0Tu2Nh/tHy4CJFtOqeaK4kW/fLmAAiimM/6gYQJ1XXgaDSprp50hmEZNhYOjRsU
	 8SBzLNgXzSRnL815vHPxoL7ql0GooqQxv1jZimXXEAaPiyXUHA15a+YeHALM6dimqV
	 o3dGco9HELX4qAcbUBGfpFv206pzIkqws0MHEeGTVGrnR+pknNpCshITRAeFLhUxa9
	 7GaYHOxqkH7hdvXknlTEVIyPct9AE0ZH4MxcvvacQ1Yytb3If7kQvSceqJimuIg0Bh
	 U/vNtH/t3lutw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4527C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068584285.18962.5315427048301105573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2972ede4bcb2659ff1ef0915d2c2d6eef38b0e448b2172599a2e7ec4bfe67cca
Date: Thu, 11 Jul 2024 08:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720685842
