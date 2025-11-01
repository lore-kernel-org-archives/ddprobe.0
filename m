Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008FE1B86C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762002594; cv=none; b=Hf09oRfyZimWfjtj4p60jmjDO+RgToRtt5tGloc6EjGFEllZvWPnz44QgBn0bD1YTQzNQyGvljH8PBIYo1QCiur9b5GarLvO4VooNt6TSskCIE00X9pt3xsR494FH0+aGcXbo9kUwDhN2hkeceHwbjAsg6vNzaafZ1ozHJPMLIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762002594; c=relaxed/simple;
	bh=SbHILj+las2WczcSx2fTLVSZIWY+4CVm3UadwWvL3Oc=;
	h=To:Subject:From:Message-Id:Date; b=uvHDRVqN/sEU5it3PVVEwcSQf6BIbSM36u7oWiIq83EBIwT0TMqRLVXLhorNWDzFRePbp0twId5tKXsrDPBInR2KcVMmdTVZUSKMOnKjDHy1kJ2zNZMWmHLInFQP63f1uaL2bptJwoVCnVql3l51b+5z3msfxuGCf11lhV/21XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBgtT+Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBgtT+Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93CDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762002593;
	bh=SbHILj+las2WczcSx2fTLVSZIWY+4CVm3UadwWvL3Oc=;
	h=To:Subject:From:Date:From;
	b=gBgtT+XjF1tWarBmJfrZIdWFRp9EezR6+MjfDZLL08YpdCpFbosoZWkRfGvjtY3fo
	 B98xH6wu+bYFVMZjS+d6WNyP2+IOA1fGl7CHp7agrRBVwNVxTza+vThoPURbx2xI+0
	 rJBauVGrL8Wfo+dJrhxR7KIYsa9J8MJtbAQzXypxqAtW8EHFjwMkl7e4TBrk2uPnPN
	 M8s8s6Rk6chS9k93kthITNYwSdM36c4LF1oreSmvERNRnhcEnQYOAlahwa2zThShlB
	 KVJM5rmVI7ifYk6h8VNJUN3p9pqAtSu5N6eQDhpj102CJCIo5UrdnzEUhq2eik/4JO
	 VIaPizL1mjbCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB9CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200259358.16706.13892007359220266214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d0e3fc060a2b0d6a1ac80ef6493d71f7d3f4f98ccb9e07635edb2fe129dcfb
Date: Sat, 01 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762002593
