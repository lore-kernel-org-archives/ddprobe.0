Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFF02E88BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761110394; cv=none; b=dzRxLr93TImoMEuNM5+MQ7cBvSyjxIs345jLoYOeoiX6tBJQVLW72o1P4YHD3bzlDbtLdTe70VMdJF62fRSt3zbFCH2zQFmYS5KkRxEBLXN26Etkjh2KKJl5rYdeKCMIymdaFIJ7Ob36qqi1n3RcoEXWY4x4hi6dlHU4wpEvzvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761110394; c=relaxed/simple;
	bh=hA8byPXPdoUBG25E7ryMJXYbz9R9BtVdOgk02T/vWjI=;
	h=To:Subject:From:Message-Id:Date; b=jviOFPjw3jbHeQ8+dJUiCUziofTI5vOXk1vvVCxnPzeh730pm2u/oZTz9DEZEHLOlTyr0Dy5BAAjLzthXV8n0Js1U3JlWs3XMZFXAP86VZhwOL+yqbD4rb/5E9Tj/cfaqCe/SfCEAd4UDRAuVqe6RPf0j4sJ/eydfb55lIIfyEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ka23O3J6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ka23O3J6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C2DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761110393;
	bh=hA8byPXPdoUBG25E7ryMJXYbz9R9BtVdOgk02T/vWjI=;
	h=To:Subject:From:Date:From;
	b=Ka23O3J6D75NsjFkJp5O5Kw1NjfhjX7V9oqW0R5A6UJHHyZaEBRu5/j3cOx1LnaHc
	 rZxfro/v/TkaUSyow28mT8yOy75YUTsWzQC4f95HNjR8LwcgJqth/Dmq6sVCt25b1y
	 uHwRNl+SSfLA1reqShOYup96L6L8Qh9Wzy91gJJlVWTgqX3nCKPXgf/LQChcxOgu9X
	 QRx/HbEpp946efgEsSk1z519mpVpRfYGGb3WwTaFIvEB0A+/zf1ZuZ416I1Q5HYT47
	 AgyxyAJkRGVZ6zXAShsk1G7/N+SX+zEuHMUTHqM52fnn9DBDwMDMRyMzuSqUcWN1Wr
	 DvW2DyxmC+isA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F730CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111039358.18174.3119848711979566063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba76f6734755730d32b80ddb49d09615b227663c39b4cd324ad7702cedc0e58
Date: Wed, 22 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761110393
