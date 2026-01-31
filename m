Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF4B32B99F
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769854434; cv=none; b=MzmPrNd88T07aX2ATtuLD5/5E3WNKmVG+SWPH9vN4JLbI9iGAOarB6SS9n/tXfV27zZRvh2JgGhwyDqSCimV5UYqfo+D2V7KgeBrX3OsdvrIpr37XZfMtqz5WiS/l4oOFdJr4+YcAKdhfG2cSCir2r6rSK3XjL2YBoL9Lt5mzP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769854434; c=relaxed/simple;
	bh=afgGejVhNuAeVHjdZQAkvBOCxB/KcFJGaHigWaMFgeM=;
	h=To:Subject:From:Message-Id:Date; b=JJa1wO6MibsAfLRAMXmFBYGaSr4XfZ9SzTj//TkKSYVZF+QvB1LkTxkbQr6Xw6Id1ObO0kwAsfpC7tF6o2j0CCf5lc1BtBUWXPfoDebvPlydhbXIxIzdUY3Y9eVfNdd6/chcBHcX3Hdp38suvzQQIisHtwgtLv/5ZwsgCIeIm6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBTTZ/Wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBTTZ/Wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BC0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769854433;
	bh=afgGejVhNuAeVHjdZQAkvBOCxB/KcFJGaHigWaMFgeM=;
	h=To:Subject:From:Date:From;
	b=UBTTZ/WmOoVAwM3nvEt7Jo3iupqPq1Cx5ToZIrmbcbbbq/SlNT5VttwtgivqjDCiw
	 eg0JCAQE4ePcpiHzB5kmBDLS8i/kxEQpULoz6tw231rKtKgMNvtMpjO+zzjMpJp80E
	 TF1uKUbqoAjDXX4Yz1byTdxLNFo3BA5d7Y9EqTotlae6m/aYXRzATSLtegz1ssGWXn
	 O4ZpRUYTbfAzIm//U9VanJQmOyQEM4Usm6DAvmW7OsmjdjcHfYZNTaHv6uVLt9XbgI
	 rZEiY2QPerJ0ICQw7woOYU1kKcmejZsShrL0ueqHRt/sRdx80d1ADKha0WQHr8XBKJ
	 zpowMh8LDPipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE5CD79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985443358.4112.9760174384773085691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41230af4f2d54ec0aab84a472c1e62465f7bb3378a5ada487b66893376bfd269
Date: Sat, 31 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769854433
