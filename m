Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022B02D5436
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399634; cv=none; b=PbnroexcLM8Ld1gIv8HhI5tsJPSMCi5+yT1SdbRv/hb0GmEnATm8Y27W102kLmYqVWpTB7fpvLvepBbAVfU59V5hdHxmtFaRvH/aA0QiTRntDxvwVvX7cX7FAakjeOn4avdQAb5t7FrK22doxTFyNWFgTATlI3EOTDDniEDTcgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399634; c=relaxed/simple;
	bh=vCVoT2aWm9UoGc5gZAiLlqrK1O8X/wCTJRazHIJ/dVo=;
	h=To:Subject:From:Message-Id:Date; b=HFHQFx6+y0Jzd6xXGIBN4TmEBkUhtIh6qcLnkhB1VTG3f9O5+f5iH+N2N+R+6lxPIzucMg0xFNm+oC2t8qbWh4N485uZhqrELMq4PYU3m4GOYnVwF9fizAArvEPo/OXcOPEBRtx2O1qRNPqPnNP5IrWvQ/NyI9zahhh7XC/2iv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8gb2ht5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8gb2ht5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766399633;
	bh=vCVoT2aWm9UoGc5gZAiLlqrK1O8X/wCTJRazHIJ/dVo=;
	h=To:Subject:From:Date:From;
	b=n8gb2ht5LEEEM0I7S1aGGG57QT52gOocbvYdIEm8vnyo08ZryoymkqknGiSw5K+2W
	 kfpXNstL5UkzyU8eAY8C+Hg8lvtHiSPIHPWT3FhDCdnBP+W/HC7AZ7di9cF57sVg0V
	 e0UWLxMyXphl6eMzJX1PBGHYcrJlnI7hcGJrCEKY341wy5Ev1W2ClrnSSaxqJYQ5Kt
	 9DXk17aIvglXiT9a8oNoefrHDm0ZeSkWeYNPq27SdETZw+aDmdi40rdOzaWAoNl53K
	 t7nbbzuEAT5wsrXtJ2mnOzrQGhFCmgBiY5xxNfATmojHXQQyxQy9kWiJNyA62ve1hO
	 OzPh/Vp3LLZnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBCD711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639963357.22667.14501782672800205822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdcf224c2f7d46a2e78c25dfa20fcba62c28ba4c7fd078c27a2aa6f73124088a
Date: Mon, 22 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766399633
