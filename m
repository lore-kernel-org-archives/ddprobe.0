Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4887D364058
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790375434; cv=none; b=nQhT1JCD++uEqZNdE68/gaOokvtuDcQ9/MCDF/KGJl1LihHDk6SSu9U51F4b4t9usI8Wyw3X7ZymkwOA+Hbc5OFAGRH8XSOb0TGdtY7tUaBA4x8NLX5Ec3OzpYB+2I+c8Yndh81RsWrMd8GYzWzc8L7aGKK3+1J0L5miJTI82jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790375434; c=relaxed/simple;
	bh=QvODYR/fbQMGXQAlHlmsZlTxgUjE0+dhxdgWh4wtgrQ=;
	h=To:Subject:From:Message-Id:Date; b=El53Wn6xehrL3cT9BjQ7Ub8Ul9a+zKLh1G+nxv+XEr6CZiCBJwQqPn2st3uBC9MVp5c/ZHC3px8br/rI1VefWjBnax0T2tTjxACT/KYOnBWc8AaOxU3TgSgoAPmF4d8XrzFOJXg4yjPgsaEZGH6o36ip/zoSMxlodo62z66hbwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAdFKES3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAdFKES3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B10C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790375433;
	bh=QvODYR/fbQMGXQAlHlmsZlTxgUjE0+dhxdgWh4wtgrQ=;
	h=To:Subject:From:Date:From;
	b=qAdFKES3om5q49UKNFH0Yzn1agbzraC17Lr3YCX34N3WgJQiClljxHNeO/7CDtVKb
	 FNbtqPEm8tmuio0sYUSZnRDhBxvmA5zObmhhOC5hQncTTuk6Wd5LcTs8GyG/Dz72gw
	 dp7o2ofDi2O0o2SRZq5zgBTBohBWZqXeDnnUSZDrV55G9FFQ/YDN5GeqH3WDqx5sEP
	 CLOxvZ/JXR/LOk1HDv6o690PbcI/xYjrEr5MPgP7QtO+aK+p0CmQlvCpybXgJt1A8r
	 TRMpguqGsu7YdUucF0pVPSLqODPpA5GT2wa71wIeBqBaZXTTztnNP5rzSbX8LDpQw5
	 Snr2QrVkbouWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA35C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037543369.6956.1029087287765604791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95da9e3c4539765040d78cdd34e3b0546075bfcb0558b085b17003594ee766c6
Date: Fri, 25 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790375433
