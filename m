Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BA64437A
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757735394; cv=none; b=ZJWGFCOeFpFgCPSLJf/F76fsnbsNWQgv3fSg/PBLbwKtIIP2UIFZtEhQbx0cb1WosdfAR3Bsri5vn/ePClMbay33VfXZTeuWoaazKDZQjLFKkk5Fbf1a0N/ObPNRk55B+9BjUX4/yplOLlWk9exeEr0NDZp1j9q8wXm59Mnzb5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757735394; c=relaxed/simple;
	bh=SlNPAKKRyuomKfGXoBHy3hqueaIwqymC59rNOI7ybNU=;
	h=To:Subject:From:Message-Id:Date; b=b+0BNOOOTa3jmQZnOQY0jSoG8L5IHtxiESe213/L/M8afDs0W8p7DCkcMS23V8cG5qbbc8q8sFnRjl88U+4zGQWYrVFkSVZuIM4U6AmbHZdIGdllSACVehQnyhZy2LWMDaKzjB2eIGkOYI/YKh8ZT9uKbcfUZ4Znl6Lj+Zzk0Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiDRxPFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiDRxPFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A1FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757735393;
	bh=SlNPAKKRyuomKfGXoBHy3hqueaIwqymC59rNOI7ybNU=;
	h=To:Subject:From:Date:From;
	b=YiDRxPFMO9QeSzU6zISpBPDPtwms55RYIFUwmYhpNid6iVeVDKWjeVXabDsTU7yBX
	 1Ydy5tRd9E2J/NYawiNx2dmVdwx/UFsC9NCaBF9xHIUSUy+L1PRUi8Hnmp/exleuSE
	 JIZ0KO/Z/ilYKJaRuGBjXkps7qsJFk21hxjQZU3KA7VszheGubPdWzOn+T8WpLaHtN
	 C49F6vDhp5o03SjgqFoXjbwMz5TXr2xj8M0vm8LDvED4VWEfBiL/TSzGlGCNfTl9mR
	 4Eps41hBt1GLkmESnIgtqWKjP1GFYcBpOj2NCoiaHA9T9g2FK8jDM/cbUFmX93xaH8
	 NjgSjzrRN5KHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C10CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773539357.12380.3385915752706873108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185e8adb81d9c1c81805766954cf3b95167de4813fc12a2572cfe1664278c662
Date: Sat, 13 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757735393
