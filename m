Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C177C36B90B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786080634; cv=none; b=prTbv/9wkp3AKoL9SLtfkRFPOmP9dLtMRER0NjnAVqnsQecoeZFjXlP6SzKPANJsbLSNpy1oAt6oTzvODvJ3BGm3JQ++Q2K/G4BdFQZejsy4Q2QmbN5Za/cAAOP8iJ1pweqaeVBwIQcjeq9PG/Fj0e/dx1/qvCimeDkRDBbD3Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786080634; c=relaxed/simple;
	bh=uFlft5KnRDhMX7Ey4XMF/5cTmbHvioW0RIbNZZnNyfw=;
	h=To:Subject:From:Message-Id:Date; b=k/BKzFLP39tsr/YbOv0VExaNzR9Hm2dGSwbov5+6COrAPpU5mogov3mbREkq9QHJX9W4jCRRESQfJz47Gw+aoRHOxxxiGAknvHi6Om/glIZwnt80hezWeffX83esoG9EFpe1WI9TXZQhO/7lNB98PiBsAtUxUoCbOOpLYV2+mTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYNyo/ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYNyo/ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0503C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786080633;
	bh=uFlft5KnRDhMX7Ey4XMF/5cTmbHvioW0RIbNZZnNyfw=;
	h=To:Subject:From:Date:From;
	b=aYNyo/ovgarp4PySVLbxT327DXxZDxFQFwMqGBvNIWzg06rX6ACo7q6gujRdqiT0X
	 UcRCjoiD1cKURwpXHGV2TBh0X28e/HjUFpjHzc1CXuLrxjYN9Tt3DFai+pVyM6NVhr
	 6sym2qRjgu6Lcb/BLN/loONqbXPlc41qYNYWcr9mexRMHdNufZViMgShknUhWjcGhT
	 vLPe6PIHwn0DMdmhPOt5Mn9+8E9FkxI85cHThRb/QE3KokmgVPhoYhbax0Pp/fepvd
	 vow8krVVlVyl+kWjuEBMkIq2TQ0/GhKYdg138CApLWsrzywLLK2WNWou33Lyzoks1i
	 5lp2Sc9zQy3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC49CC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608063369.643.214180844043106274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4866d8b7ccd17eb6c71d75c61c7413f266e16b40cd027321c6767f1839ddd6e8
Date: Fri, 07 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786080633
