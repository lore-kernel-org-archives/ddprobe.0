Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12387287257
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756292994; cv=none; b=Aw/QwpEt9iW1pjIyWzKsLJx/qMY0sR+EwctdrT10rNo2Jc0WT6LGE2sW8AkxMIHNig7MXJ0SBs/mE4HLsYUUty64+pQmGb6nI4wWHsUO/LmWTEu4lci8UxXBd8AtPDr4G5roBD7RqgfTpZT1kHjkCsBn4pwmLTp+c/Bt4+yjlKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756292994; c=relaxed/simple;
	bh=m257M6PEPlD5tTtp/Sv3W/s+O4f943fONwXr1tl2w9s=;
	h=To:Subject:From:Message-Id:Date; b=RSBjafOhe7NeZD3nz1oyAt/E/F+yLouHFy5MfT6I3vpD0aKEutBEZvG/ggChr3/2eqhLMsoLTybMgBp59+nyN7znsVvCQpa7hY5bIEeRXLbjBlcwtv7RS3CUVYWvBOknB6olyLCu0uRDzuZ+rhtaYL4Ej4A4HSgh/xqgjm6Eirc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAUDKvIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAUDKvIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2FAC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756292993;
	bh=m257M6PEPlD5tTtp/Sv3W/s+O4f943fONwXr1tl2w9s=;
	h=To:Subject:From:Date:From;
	b=PAUDKvIe+MzhaVao73mehK9cPPIHj6MEDHd1nLtFsAFm0q4QqZZ1CcFt9rofFfQ2l
	 CNvvf+ZrLfBpkDyEanxytVrT4+SNgC0H+sW7qeCXIAk/jRIQM05eYdMAMlwBVsJaYi
	 50UD8ibOjK/WsGYXE8vhUIE6I7Tyu5plAQ8lJi0pFloBSHX54WQdy7QiZGmNuq0HPr
	 DWiOomux0f7PyLec+tg/pEZyNYiCwJcGuOblSVq01pXS6Ha5OEubpldAQrRkiN50w4
	 wJOg6fv+rRCEwpFwqatSXjTbXqYr4DYR2NW4rF7kFtuPfhBzIproEMu/9VPakpxLti
	 bkx3U3SMy/8VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D8CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629299357.4303.374939103621236578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9e656a4d1aeef146a9241f2b64864164f7fb131ab52699c672f05b19f22f22
Date: Wed, 27 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756292993
