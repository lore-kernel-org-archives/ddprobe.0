Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FAF313E18
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777100254; cv=none; b=rT8l/bIdKK73kxR4zxh79TIp3KzYPuPiPMH6cAghF/PA5Gp6pjJ5GlV81w+cOcPn7Gw2LYSbiFpC7vHya9OISK8C71iNZmPBVDasckz9TkcA88lHYO4izgADsWWWHr+H35eB1xh2TCgQggMfO/0xvT4MWQr3bTTkdLRO/en4YuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777100254; c=relaxed/simple;
	bh=zyl5niZmqpMvalfKEqUSrPHyE498kRp3AffBMyvhCJc=;
	h=To:Subject:From:Message-Id:Date; b=MCM9W/PO1M5nYsU5YzvFZgbscNokK/EQIv8mDC53Ep6lsa/kGDKRsO/qxJp3LUfQH3BANWlVQ5QYW/Dz4bKM3KvM+JV4exhCIAB4MkeYbtYaZGMIOpUl33gDhrmVvU1RO0+c+rTwyOOBIXTLMxZd8BqechuM3RwmrKlB8BUpcW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpsSQHvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpsSQHvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE07C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777100253;
	bh=zyl5niZmqpMvalfKEqUSrPHyE498kRp3AffBMyvhCJc=;
	h=To:Subject:From:Date:From;
	b=LpsSQHvgF18Mr/PU5zZHxjnNp9jVyNlZrtlNvwXrEqUqDfda6PWOE34UW1853Jyts
	 ZFtFn4ejKAteO6nckL9mKa/Q+Ue20k9uSQ0ZaF2/NeDGse6fdWKuj32l/odkubBs+6
	 aeDAaqQNcU1X/0bFFmmb7HiFwKDn4cIgrFtX1TeGMEB6FRZK2IV/q+h231rvKxmYM9
	 kHjaGR7QHoHL1mNJN7scpdCAsnd++Dqd6XuuCXoHiQidzzS/vW3WrKvWUiLxf/HWFw
	 CBfnUwHQ7lXMihOGAApubfAX62HsTjH9Srdf4uwvcKYZPSfEr0T7k7s8f4aEYCV/ZR
	 3OC1jPtnzks9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CA3FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710025368.23326.10340870313896166811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d64da052b2c64ef298f48669d3de72b6a1d1983a20a71bdc45b53c2d2a815b2
Date: Sat, 25 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777100253
