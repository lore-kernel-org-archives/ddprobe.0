Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FE8172BCE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732263354; cv=none; b=VV8WqZzJ3YvG2byKYnL91pzjSx4Uwlkxk57Adhgys2hGluzWVsklEw+hBGNayKozZbQ6z0RGTN5oLD69pB7m5BiFq1uS7ISZfpy0tTizZosZtd/8W6+WNvZBOVDmu034hbqW1ws/JXAcyfxmqq94cITmyn62QPTqadRzzmuSSGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732263354; c=relaxed/simple;
	bh=VpTATCBeuPouIeuA3s8SzrySm6wNURmLcHWtMFyzuBc=;
	h=To:Subject:From:Message-Id:Date; b=KtcukK6cP1jxUBfV97OomSYONZvzYysso/B9AEx7ycBvZi2krZaURNFgq3zSI+XMFb/Jcrprd9lsnEHxANZ7RQSboggsvbdDR+HAPKqUUtU5pJgSYyziT+FO5ZatXhrrzkeeJaRZ4fe3bIWr1cUSapU2d/2N7bg9jo1bzuonZqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JORDRbbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JORDRbbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B063FC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732263353;
	bh=VpTATCBeuPouIeuA3s8SzrySm6wNURmLcHWtMFyzuBc=;
	h=To:Subject:From:Date:From;
	b=JORDRbbLKIoC1FqcZBmHDUa3fjF0ap+EJPgwUNj5hsyEDf4CmqGsGnG23N/wxttel
	 /flA86OSdt1u0jlHTrKoBuOyViq4+BpZD5HQVnqYjE7bONZ6J4nz2qZP/Whzvpcewy
	 GQiW2OHXbbK1WCZgqRBILMEAV+COylxocIm9M2LAVLq7zb9rMnuuzqOAv6dwREGmyJ
	 kx4q02RjSdFCfKf5D982zQWw6UORCt1PGTjmhMhHk3+wgfj6/0YPZyg986HnQntOA3
	 OPXmcEnnbrSKG2rAnRG537psmoD0IaRHfzDKl7+N2DphVxx93ChqL50C4ECHbGIFQY
	 9tDrh4W61YsEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD7E65D32
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173226335360.18027.15791566184317168344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8da998fc99abf393337bf4ae2f304689d6174f8a39664c1ae006d03c0773e9a
Date: Fri, 22 Nov 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732263353
