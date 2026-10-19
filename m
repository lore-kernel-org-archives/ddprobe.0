Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A68448CD63
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792395634; cv=none; b=C6/vaQlkvHVPb8pSBXcOga6p4FhyuMwF+slEnlMwV1WtFIMe5AB/iZfHvjD9MmS0qRHY5fHy5MNS8tenPjGxLpokk8PDZEG7MUj7pQHEndXmvRLj1l9PJhnyY3QztG0YXwVY2212YcVojJjKl8cT0xWbpx/hZPBtCf7EwtPul4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792395634; c=relaxed/simple;
	bh=rmg8H+L06Y7/dHdeJvjO4lyspoiM+d2wR97TLyG972U=;
	h=To:Subject:From:Message-Id:Date; b=pulwoDwkpm3kebX4YHs8I/r5B+uXDSxEvM4PusiSs6QwxaSU/HpEfqxf7gevTXqOdWkA61E4p0lZWP3CDQCEzIhjz+tLklpi/9NHmgMSyUf/vU2qmofHmaRwdgtNzeTCZQPPWW8RMpAMZNfR2c4dOTgV5cw+H8N53yPlFD4WdQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbYuazJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbYuazJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0FCC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792395633;
	bh=rmg8H+L06Y7/dHdeJvjO4lyspoiM+d2wR97TLyG972U=;
	h=To:Subject:From:Date:From;
	b=VbYuazJnuSEFfKIRC2Hd3WzEkqA9U+olWgDoiFsuJJ0XRd7IMvNNOGvXQaliBTW1W
	 3r6VMnl8vQIifn5SRhNe3QupLsumMSGUFVD56OuZmiOzlaKeQxhauz4sI0mmhS052Z
	 IFxxxXStvqXIpxwb0LAeCVq1qrgpFvEmA8+LL46uM+4sXzIW6eVbQCIVpEt3w/fUA3
	 tP8spuuz5cADV/ZGa40bhMYmsbFUlKk/EO8cAawjxxFGkqsIfQ17TXyDtBHsNG7JIx
	 vNG0qKz29T644qxrSjoLYs1PTraU8SidmRs0S4HoqElgzKjhYNSRTlnlgMXqDj/KVH
	 m84FtB+e7Sa5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C96CCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239563372.10709.12748019392379654455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d19eee754c0957bfd59e505edc7a444fd6993b874017346a98ff3bed0fabf4f
Date: Mon, 19 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792395633
