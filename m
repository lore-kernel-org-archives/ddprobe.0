Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454FC41CB5C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785766834; cv=none; b=lM1gVlT6YKYb5kwWyqZyYipOKDk5p2dmNGAH4xsv3Kqgna00CO/P8zOiHHQ+gXcf3GSYKp0qC9fu/lP4fy6F3CCWp5jxabACnQiFrc6VKpfUjkuZO3k3wUjLI6WKQ5TDP4I9zEm8j0s5N6hjFC6jiYuHuzY2nJGvMv0CxYnCkKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785766834; c=relaxed/simple;
	bh=6kMooeAv9MuCKNjbyUgJGHAPH7xun6FfhTCehfNBnzA=;
	h=To:Subject:From:Message-Id:Date; b=qSwe0F9rBlwyP5l2q3ZcT2g6PDSDFeVzeim03vEnSn4drYWF+Hrdv4RWqNzdbEINVpcT3GwiNj6iiELrDo1LYGcPSpLDUW1t3TIHn5UmjZvNU8LsbT/qrY0qLE5dQ4q2Ul2xUW0wayHa8cpSG7ILs9QiqCn5AZMg06in1CEZcjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzZAOpDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzZAOpDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7D3C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785766833;
	bh=6kMooeAv9MuCKNjbyUgJGHAPH7xun6FfhTCehfNBnzA=;
	h=To:Subject:From:Date:From;
	b=XzZAOpDf+41oCHmaYwxUdDLkoroTWjYzTlelctTvo0evGM2bOtHL/uzHi1VFuMj4P
	 ABiGys7UFrw0pBk5VaRu6m8eXEUHQr1GlaEgNneMtjDgE8899de5XTEWknvgIkYBj2
	 baaJ+q7m3Sy2TLcATyM5hbsvaV+HP3XoUOrcaONYe4Fg0BSNQ2HgXJAxz7njRiPSVX
	 VOTU5RQX5uqjauGbLE3jGsq7BFTJIDNa8AO860NeU6xRfXB2gNedjPFS7bk4XainaG
	 DsZmXel8il7vE03j4KgWvgUoV6MHEsVm2QolIb34YyLJ9txIQSmFzb+em40if8DgTn
	 HjADG8a9gxHLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3BBC55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576683369.31503.16865045959971073259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7666a5f592857fe2a4acc27c3cd81723a6cd10eae325b38853ec7e17a7826389
Date: Mon, 03 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785766833
