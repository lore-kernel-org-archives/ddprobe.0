Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD0EEEC0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777106254; cv=none; b=gbFUR/M8RXSq2yYDZpju23yagN8+vm6SOvTM61l6w+7jJjx5w6Luj8fwRhyhr+m7jKQJQwst3Knbndb87BatX9Trc285P7QOom7yml0NauWkxiprxzwKjqokja/Qy9cogb0B3/ZF/AgRdplIISnEi8qq80hvlOcZmcMsh/336Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777106254; c=relaxed/simple;
	bh=8/tjksJ0JuaZ9l9sw4Mc/wm2Zjiexwib4s40DdmJzRA=;
	h=To:Subject:From:Message-Id:Date; b=HU27LBGAc0rkP3f1PWtdR9o7695KzUpRDOrKHup6HKB/GlcWBmEypGuK0ulrLsZojueyF2CAcvZiIx+fW/3+4YL5tdOyImmOOjpoBU08TrvH7AHGwZ4UqXBIOhbCyZ+iHOzLJCTCoQu11bm+XkV9z/KVvkMOhPnfmN6PcKyaMhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jh/c1OqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jh/c1OqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F94C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777106253;
	bh=8/tjksJ0JuaZ9l9sw4Mc/wm2Zjiexwib4s40DdmJzRA=;
	h=To:Subject:From:Date:From;
	b=Jh/c1OqQGB7jc+O9iFGgNPI6RIM1DHP2CIx3umtHMeJb2ZDAPAjIbyPLhGAkmFUa0
	 K4mV2OnTuKC7ESpr2VQZ4/yF2/cbCXH84r+Uw6vWrGllRXVgKAT3hJqhU4fmc444fw
	 y0M7jPUSV0F1VSwjpSDJLWGXvBKtadbuv5f08Tbo1pC2ZDD/3ro4oMhZ4RLtRc0JnT
	 aVsvfd3qfE5omaa5wlziv2rwtxrepG7vlRq7RKMWdoZg82rfw9RX+NsVDKCeWL6Nes
	 ajtM5WBGfZJT+xRDY0uafpFiLI0g6FsERoXA6y1SutzvgAwHsausa5qn1eo/GPc66A
	 e4VMS02ek/TCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E2FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710625368.10756.4886407522729034767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb713a094ded67db74770763ca1accca756772251c2ec8211cb195a94ecd1dfc
Date: Sat, 25 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777106253
