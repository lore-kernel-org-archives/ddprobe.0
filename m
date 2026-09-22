Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3620301486
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790074234; cv=none; b=QAwaAO3LslE1reFdQOxmCa7ajEagQnF5pCNPTlVubCp4jNzjbGDFIplrH6bImRB7G/u30p6avwVEbHl98M9BokllP4wb9C7W2wLKoguHhx+4N83U50wv04vu+hkbW7g5vhCFDuy9xnCIRhS+sFZacROG5MQqVXuEJ5SJTMbFFhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790074234; c=relaxed/simple;
	bh=WKVeJna3qpkUvw6cgvNV4wnGUnoqZjShJ2IpvA8se8U=;
	h=To:Subject:From:Message-Id:Date; b=XAVs4ugXzsLeF7nKzioTyguxT3s4EDqJ3J/ptEYkvqTRW0vr68MRIjtoJfIb++ceshujbuvegwtWbUfpz8tdKFocvBxygj3MzDab9Uh6RThGxbBDalLHmfZyAx09liDWpdLYMzBj2sBCqponCWAtV6oomXzpLzBNofeshUnM0Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWafULAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWafULAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E104CC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790074233;
	bh=WKVeJna3qpkUvw6cgvNV4wnGUnoqZjShJ2IpvA8se8U=;
	h=To:Subject:From:Date:From;
	b=nWafULAzar8IZ7GQIeOZ0pQT3QbPdE4DO4Zf2TqRjQa0CTxcqQ+KgJ0BVQtezRKrN
	 2CeYMR4lxrUeqHidlfuUxOJhWQMsm/aVuoyw7ZJJl84MQTnQyXTm3MkygfjJGHHw/c
	 3J+a7yWrOezy21rmeCIirRz1bu9bYKaqA9NlOaBfBLzlwVJu7hbj89Tle3V2b/uh2U
	 snF/4LM9/w2Wg65LGuKN6jPlMAZZK8ZR2LC2xe0nnuYNdYI83AHf9SKA/YjcfQjql+
	 NYWaJODxueqt54qftm8yg66KLE7KF7s7U/r3aNldVbQY+gtVftxIwK1tAtmIgFyrI8
	 50w7sCyLCn0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C71C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007423371.21964.1832944768095920594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7ef15d3e00a81d8d8d1314fcfccedf7a9ac94ca33369f591949bd6baad3da4
Date: Tue, 22 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790074233
