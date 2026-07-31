Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4682F489880
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785531034; cv=none; b=E9QVxApkJJnUTWCHyxlZkOxeRkpcarrzkX5BOqt3Tg9S6eO4crU/iYw6rjFx2M5ESbE1OyL/EUhv7rJmDyfBiTJ7Z69IY+59XvyJW7jbdkJAWT8f1y02d8n+kdWO4QzPMzJJfKPN9ycBsp3IGFVzRQ203WyxmWgdoCHV+P3x+EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785531034; c=relaxed/simple;
	bh=CRkYdogh5/+KgAD03ZBgma3fygLWOgEHQM32Ar1mNWU=;
	h=To:Subject:From:Message-Id:Date; b=lSwZ/ADNo+AccOkt0e1z3dP4CwVJBMW8ynjM4l4CSvMD9FpPLea9MqhKes7wFyOghuS6sxs8Ijy47YWWR/9/QtqmMkFQDPG8pDNpuV18eUaWF99RRU12ubBPOZ6iYJDHaUmtLwatqBAdopB/TaBSju6orFkYO27M0RfJStnG6Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kuv/s1Fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kuv/s1Fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB310C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785531033;
	bh=CRkYdogh5/+KgAD03ZBgma3fygLWOgEHQM32Ar1mNWU=;
	h=To:Subject:From:Date:From;
	b=Kuv/s1Fr+cJGtTAma4k9aVI+D3u/vqIHExhv4Lg2NBzdqquv3eRl2Rv/Cfp3Uf68l
	 R0Syb7JhAl1O/Zis4a2TPclVDU06MghCh63UClph03QyVPcVRDVvh4jaBAydTeiij4
	 iy3WRpTZekCe472hkQszN63SaI99E4zp9r3KkgmeyC02ZagFIJ2JoM+CDvmDOVNXS1
	 /odY4S+rTvpzde/MJnyteiZQpvCZizI8rK2VZR8Apkxrkvr0fyUela/0nBnWNQBKij
	 cT77p+WNYbvjefnqJuFiYFz32LnbBWx2d2Yy7WeJIk+kD4GxZEsaZIIS+0wvbtCdcB
	 WrWsgY48rW4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95E5C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553103368.17704.2988698260170141828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89db42947ac7df7f87e2606577dc5dbb74b955909c8f27d6a7b0e3fb33df932
Date: Fri, 31 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785531033
