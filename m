Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F93119CC14
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788649234; cv=none; b=B7y5TFHeT39EyPwZK/CHbPtRhQTXrSYbdgIDqFLfdlhc83JDLCWGTMDzYxXKnkTKEwiQT+PkmyvXJydaqnQbh2sYvAaSA8Qg664d1hVu+IVlPlPJoSE5dmx9tTG5uo6MBCu6bGrx/IEpyy35Hn76Ea4rUfHFH/oihn3dG90GKyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788649234; c=relaxed/simple;
	bh=U9Y40eyfqL6IgEmFRDvdKj20ZmHQoFBLq+n+aBPRATo=;
	h=To:Subject:From:Message-Id:Date; b=d627+oA3ZzHQbNCv0bEKTKjLUnm4EkL2bDT6EZ15Y9Xw6eR9aIlPUZFuqDbrNfTBERvXyXAUDrWr6jZwj6HKLE+57GuC5f3K3PzyKrG0jd4aeuGP4c0drsC89ZpJUj9QwAGNaPijYd9euEMpqOupz86G/70kFINZV2nE9kupnfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAS+Nc4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAS+Nc4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD00FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788649233;
	bh=U9Y40eyfqL6IgEmFRDvdKj20ZmHQoFBLq+n+aBPRATo=;
	h=To:Subject:From:Date:From;
	b=sAS+Nc4yKI+yXafGs3DMxGGkE7/JzpwmnVV4BUNN9upRz5KPA1ArMKwycFT9Se9TS
	 fNJ1FNL4FrE8jKDVsBtMxMaYEVWsaeQvK6y7BTd01+brg2pqH+7kh5EvtyZpeVQf93
	 BUEhPsir9LLyPP99rc+1gb3Vesu7a5yKxz7wJRbJAIMezRoKcVlHfX79syGYGF2tNH
	 jTKBIEllWbqE4fKhSAW04LDt24++7j/J6T/vBKqyN3SG7snBV1HqLiv77g8n1P6dbQ
	 955IHmwcgP1hWKhx4M22MikNVAlQ4dEsAcY1xFX/lQo0OJhVVdSLQF95rz3YMUmNRX
	 aA273F4sZgVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF06C79F85
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864923369.22914.14474094081760772903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566dd4c43b37c01a441c3d6c24bc86ebc9a171255b317378ba6f632b10ca4ecf
Date: Sat, 05 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788649233
