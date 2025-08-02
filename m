Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31924156228
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754171394; cv=none; b=GVrmMpyXvW+oVYZVLS9kqwqZsFIG0aTXmrir0lPuSbvRnVe6hAtIYZqJoZo8tiqfu0Ml9GhqM6Ma5YKlku7lStaWIkKjjmx+aK7qF7wtQfp9XqyhEBcj7Tqvca3TnUZSxX6ykyS0Ut5StZimnLULlZcpdFifwb737QCfUMbMMIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754171394; c=relaxed/simple;
	bh=DV0cgCl+o3BywMBDOqHkUPL94dDvq9wFKO+jxyH9RpI=;
	h=To:Subject:From:Message-Id:Date; b=I04diPC9SIfBhPglh2SJ/5U+KTUlDyaThqNx4cg+L6EYOPMUf/9O2BWDQX4EGCnpvmSWXF84dlTahbrpnMDYzl93z420LDFkaOTRfafGbYP7K1njgmM9B3cMwKpnUr1+LNLgViznut6v5rymmA3CNN1nltE2osGB/T5j5ZLrB+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/KDCEbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/KDCEbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B138DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754171393;
	bh=DV0cgCl+o3BywMBDOqHkUPL94dDvq9wFKO+jxyH9RpI=;
	h=To:Subject:From:Date:From;
	b=p/KDCEbjJOfgjtrQkQ3TviMW3sRnIu6XyhyMldnGYEemYqQ5q0dsHb+U6Bkmky7Xm
	 6E+nVjtRNTJow42ndwIK2bwJiG+hQghOlHGrUpEmkzZgqPKxYVIE9Lr5n+CqVmVzfZ
	 5F+2erH53P/OO9Lr/pMxyJZTerekETfqOOugTsDN4AOeMD6t8XZDYbyEmpNj/uF8At
	 OSbwMKj2Mxjne+rLkyeK56V3tNpettTxzPI53gZ1o6V91gAjHQ04CydHUhHfLPS7es
	 P4MmqGIiwKSHVccFOuZ5QbuQR2xz1Nkx/QUnq7J4a1gGiNQHXaoUPGvYSAj15Bvo2i
	 gLiHjZyMrzmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911AAC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417139358.13077.8602181960840866816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c6162617ffb63d1cadfcfe7858fa4640d0318e121f267babdae22e03b28f84
Date: Sat, 02 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754171393
