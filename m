Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CED22EF66A
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761217194; cv=none; b=KrQNJuryQGWqfBlozSFMTAm8P8KMqazYnDGKURKDNAgPdo6hOW0lHLBBQf7B5bh2R9l216jwwWMDjrQQDFg+aZfw6c+UOzA5d1coGW5s1d2UGsWeAOblzFmoS/twZMADXsHdcuF3LRBmJif3h4fpLU48oUtWQ/4DcWvJBfytusk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761217194; c=relaxed/simple;
	bh=t+4Fw1UEs86wApfhsOcPXrd6amuo92QRcbBamgO5Pz8=;
	h=To:Subject:From:Message-Id:Date; b=bkDrjUzb8cBFaBS2vo5NAGC3OQ+lVaYtThv697P9dRp4l+vnGtLlxGSWOpDe684P1Etu2eZXmlg7SNInEv9zK7IZGs5em311ncwK79EzZovCg1d2iW9pBQUL3pVcx5Nf9S9H8gIQjYdsePbdrEN6Ev68QYy0VWedolglLLhSsSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBXIpdJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBXIpdJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A86C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761217193;
	bh=t+4Fw1UEs86wApfhsOcPXrd6amuo92QRcbBamgO5Pz8=;
	h=To:Subject:From:Date:From;
	b=uBXIpdJeBQ4xmCXtdfIeBUfPx1m8T0YNNAw/14Cj0EU//MIFhfcumj0ncKs6dQbTm
	 vdDzGC09cjVI7A9dfNvrCDqirIYMGGATRWxKLN9IIJ2Uopjer/HhOmVcNwhFRdWYdw
	 oUhN17NuEztoZp26wLDfcTVtlUjn0o2bGlA7c44P4Beo+B9ACvc3nGwFLxR/98yNKX
	 yNf4V/M7zy0iomipwhRzv9ym4xPeW9hJhPq4qmLdToHg/rDZi1kMskkWl0GHLs/+Op
	 Lg3SCFZtiSF9ODCYYVesYShxluht0geOUq8V++kBXrEoIqrZ9dYRGZFEt+/Fez2+/M
	 hr/zYFlac8bNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96753CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121719360.25833.14352534293067800452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5388079b57a3d2c3dc73bba647e501dcd62251dc78440a03d50c1c50b8b905
Date: Thu, 23 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761217193
