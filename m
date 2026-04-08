Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425173815DC
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775678734; cv=none; b=cevR/1Xz2bhyvnVOgUGcU1pbwnBVUKoupHHmWWbAp5cli026Lg82On6DlgU93Lzpf8kLLLEPG5n5xlogc4U++1hQ15fmS/gLBhXLFZutfvcBccCBVHGmhJWIVLkqa+ckyudXxoPBL2ylvdIDNztMfiZPfEUja66Vhw7ADiuiAN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775678734; c=relaxed/simple;
	bh=hfV4okOLj3/Nc2BCMN7eRHaLsas+RbcqPParrTMevoY=;
	h=To:Subject:From:Message-Id:Date; b=hHabaIGWiG7Jwwaw+YiNQGAPL/6h5MUKiaxkKlG8p1vewCOXaiaHSxUXRjtLj5tQRaPsJjE5Q4NhRSTP3CJe4NLgMGoYbof9E+cUzKQOUbjwjpzAWDmedTQrpzu0qpIhdDsv2KGXUOy6+s3bsHT1NnvbSH+QNJKzo4QwrRqgZXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVNm+/IT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVNm+/IT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9081C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775678733;
	bh=hfV4okOLj3/Nc2BCMN7eRHaLsas+RbcqPParrTMevoY=;
	h=To:Subject:From:Date:From;
	b=qVNm+/ITZ2dwdNfNuh1xtsR04Wdin526rz0s0qh2mvMBhl6d3uH5I9w4DARBMv5wa
	 S4fJZGmz0PFkZY4vrGz2NRGNKuJb9xFcgSkOx7+izKlXRBVPMDLovvsvGmZVM5O76a
	 j8fG4EOaSicnkNdGAMQoWsqCNasQMFW87MJ36x877LZ/fisXN4i97UKv2A3E7L/+bq
	 nXA46wGIjTer6XMwqRK3clG/uIDphI4OxMCDCH+jJ83tJmbD7yvShJfHVJVG09X4B9
	 TrdtwfH0+bib02JvHuhcTFIdlt6dmSPMrMSpKw0DIv5foauj01etj5RVlJjlNsI15j
	 5N4W/f5TTzaRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5810F9968
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567873368.23733.14746561499798228425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c462a5445fdfbf9cc60427eb96a68c62c83dab07f4b907b1760e5659a8c4e8d7
Date: Wed, 08 Apr 2026 20:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775678733
