Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D0B43B6C5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785877234; cv=none; b=diJnc/pUFpFkuPFa5PUiBNZTzBAJnFkmU2P+nV6Yj2AKGh5zCZcMKJBbJm0KFSWIJeKw/Icmi63juaCmquIEug9zoICqvfM2AmC/qihnw+/Tkc6yFSpfG297RCsaiiuYHQ/JgvETngQBW9Vu2LqDVnwbPZua3Ypk26hiPAglIVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785877234; c=relaxed/simple;
	bh=autm5nPejXymXY8Z2izHoB8jqnYOHjhYONDCb+Csx6o=;
	h=To:Subject:From:Message-Id:Date; b=OeoN0aq20OcRFT6D37zQ7zzqG6wXCcv+f205flyNRa/UmfbsJ1ldza6yyUjJdiHt5bHFQrUcDj/CJE6VbqJFG5LpJgOQvLJvFyHsTTDto6QtL3SdHwMXFf2FL1jZp7dYcqY5PUefJNiOV4ktKT1ghNky6Usc5rRRYLOhxbD3Pu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIBLwhnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIBLwhnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E16C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785877233;
	bh=autm5nPejXymXY8Z2izHoB8jqnYOHjhYONDCb+Csx6o=;
	h=To:Subject:From:Date:From;
	b=gIBLwhnLD5FdicBiJmt82f6GePtpyKmhRp+u7BtYOjBEHSyNIdANdb9YbIm9OE3ms
	 rcMMSCfjuJZ+bB6d6awAiu76WT4wy0iBhHl2QXUM55KwRrqyXfdPIpB9CZZFTJOfIG
	 ZHB06ktcBnvi8N/dTHEnQdSmPj7GUC+Drpx/41KOJSj80Px+NebKI4BON3Be3/Nd1x
	 8oIctccdy9MiWvvutVgWfEgC6vUW5bfRMP3HI99loRseQ1jh+e+OyD3G7Qsy+WUK5b
	 geisOQovUOP8DmEH7ch7oWYcY2lE6Qd1Ge7u55CaX+x3dYH7yFkKUeY1wsI/WfoMLu
	 EwRXdbeZ+NU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0101C55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587723370.32262.8620239639339962479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9731606acef0616017a419123fd5e6ac781093363e7dae6c84ff2b4108a9d25e
Date: Tue, 04 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785877233
