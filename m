Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA026AA7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736469954; cv=none; b=KsDg3YaJ5wOl+E7iv2p5dBjGidtqTw4yt7MKsH0xG7BjJ8Khri0WcjTf7grG+NNRolpkad+JqbaAEwaZ9E2a2N3H+v09M92TOQjdqorl3PVdoPQMzAel5/8t6RkwjWH4yJYGaoilP7h2xSkrORFUcHA9vt2/ZQxktwTJhh1Dk1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736469954; c=relaxed/simple;
	bh=/plixFYQML4GXtGHSTiJvWF2MHJ+AemAyVcERXBtmPY=;
	h=To:Subject:From:Message-Id:Date; b=FWsFp5PziXlXcBdh80/ecynR9AhZDIagwxdbKZ5iyVH8F4Iz7CEtG2kzluHzohApfgYEsNbzAUd+Ux+GbAMZjZ/29uN150X0oX9mobyhoqv8E+2Jx41YiRtauYzALHnoXJYxmhd02+HRsKiP21KOC1yJcPli5kncDLCbjqhN5Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4GLytaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4GLytaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE103C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736469953;
	bh=/plixFYQML4GXtGHSTiJvWF2MHJ+AemAyVcERXBtmPY=;
	h=To:Subject:From:Date:From;
	b=g4GLytaH8Z1KTskrU0PPWd8huHi3gpIqzXO8ZtdU/EsjZwja68kVlTr1drPMuQA47
	 Z1kOcqMrgat763msyyrdftkb4llxcZAVLPKJdCwUzxSsPMVhzmB06XYBlPTxRZQk9o
	 9E/BJkwJIYb6swMQRRFBBaC/TBxA3FiL2ADh1GeCeXRyzgafD6VQVprlaq+Nc9VqR4
	 37bi2KOmdq0TkiXaSZupWFOIHjG+7Vus0BkAq6LbZjvTbVLez+5mYRmcZIjX+qKo7v
	 rN9/f/Z87p+yAsvFtf0N87ycMj+5GiAa6PsasjtvvT4sRn/MfJmfAcJhpFoYKIm5au
	 jkggIgwH3Osmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D421E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646995362.11356.6455960176201600630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fa6bf08236180de5c05f3bc6bac026cf7e123d472b09b9b787faae327f4a12
Date: Fri, 10 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736469953
