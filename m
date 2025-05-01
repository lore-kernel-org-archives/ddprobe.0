Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3571B2AE9A
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746065994; cv=none; b=o6UOq3OSsXpHyCZxKXHCQxt8dqPR9dAPph73/HRHKYQH7mlgDhQ7pRgn/BAzGrIOHvl+Ec6Iw5yRBrzl5sN9PZJcN3xpYaJ8tj3Fi3DUTdWNhqZgSiJVjbE97RmWL+/gynlgaUZExwxWJ6kndxsh5UF00XszuE1HvdR9+P+6Ihc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746065994; c=relaxed/simple;
	bh=UdxAEcnfFuyO7Z/KX8A9R9gC8WF6fZN95KwYmFKiJlE=;
	h=To:Subject:From:Message-Id:Date; b=oBlBkmmX3sEfS2P3ljFVEBCkT95VtfSBGLn3oYBD33yUwfHxSygDjZw4kRlT4sEUixGXLb03T1jZjhvVL+mxw501qIY8udpY34kvY6MRsVTNEHEkfriZzoVUULu6zg/z+7wwBCyHhkLamsf02FQwPjGxHKqKSPZk3OjW2VoCuto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNhNbVsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNhNbVsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746065993;
	bh=UdxAEcnfFuyO7Z/KX8A9R9gC8WF6fZN95KwYmFKiJlE=;
	h=To:Subject:From:Date:From;
	b=qNhNbVsmGh63jvBn/kZ6P2CDmGNrLE3udqI2aUcLyA7EB7lGR3vJxE7Og851s9Wwy
	 wiS2o2LpvST24HhnrFoVDnnjLhBnCJgt2pLCsmIgcONNsIwI10ZsRqjfVa00GvHkI/
	 OjE1xAlsQvTEIlumjfgvJNHZ9Ois+Cdbkasuzn+eJugBwHwkKR94i6dU86q2fWiUpg
	 MqJLINBsNV3sWsi//JRCImUdBuwNlTU973m722IxJJQu1hqZkIb8WogjNlt99/4OT+
	 KsA3tKubjwMvP/r2BysbFbPRZC/Pu2gO1J/S5mjEZ183g734XbmUleminH11tlQWDv
	 fcuIn3ar8gsow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90457C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606599358.15963.2813089588935179758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45acd0e3a3130bd92fe7d3e68fea8b88e10a60a8bf3db7bcebeb7e7d18fd27c
Date: Thu, 01 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746065993
