Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9603F48094F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791388234; cv=none; b=sQ82QVjepWb5iovvrneoDkQsyx0Xf7ptEpoqa4icg9emv38KNTSte4sWrOSBToR4enQhV7CB/lJ7GbJrVYgCH8Is2zq7F+YezrGBe8jkxgnMptEMArA3AMspMWPERyN+kbzWItAfIvV7mf8Dux+ltU+zqOexHr1OPKBJJRFyqJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791388234; c=relaxed/simple;
	bh=PPuyRMFgFL2LiE/+G1l3iiysbMv+n+gNa95W3YevetA=;
	h=To:Subject:From:Message-Id:Date; b=XC74W0t8QayNuYug7AO8B4iu1H45lA48BZPhL9/ezXaP173woFdz/uuiEIJg8f/nK0UiO36a7NpfrDU795hiVkeciiODD8DPNdFKiKCQdRSaElrni4OKQFRPEIc8WWUP8YgAEzbua3+Zst0RaH2fTl48vXzUVUEw+GKA2656ibQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClBBOu/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClBBOu/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF11AC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791388233;
	bh=PPuyRMFgFL2LiE/+G1l3iiysbMv+n+gNa95W3YevetA=;
	h=To:Subject:From:Date:From;
	b=ClBBOu/A/RfNOC5vAkKdnv42xIlInBJxobzewLGBzZFH+SoLHmwGpMr9wGOONDA7c
	 Itsgu3jIaxcAifwVvVZKuuX8kaQqA1eoR7mbKVlXGNqSFaHeP7dNG3suCHURKJU/ry
	 DlLt2GZpr/zuXmJaNNmB2+CJQe1inMRNR5Qfu5Oyreor9kkA5V02uyUbDFG4m//GtW
	 aI/uOrYuW9tOyTXQWF3VCARlSooy/IRmii4NInn95I5eAybjjHNnLpIxkCv0qvcNFI
	 q9jEgc9QD4O9VcNM9jS/5hhGAmqWm3PL1GPOStpp5OHKtnInKVTnVT75BsVT42kdMI
	 +uRVnJBTNP1dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAEACA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138823368.24293.15077831281356190719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08771e16ed132864e87976f8f9f7ba704947eeb0d3e4c94339ca923525bb63af
Date: Wed, 07 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791388233
