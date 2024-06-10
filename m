Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B92A5227
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717990643; cv=none; b=sCRgZ+wHNxqYKm32hCgnxWHqlAcgPDOTcFxsu6uEfZ4z8XxfqyH0iZj+Xq/SsEeXe/9diENixHh6eQOT7jdD3SkV5/NoHas/32SpqTulT2w+xo0mzURQffPfAPEPGMTL/qjcyCwsWs+X00tyRaQ2Ha0qvy4xmw4s9lYd3/FUmtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717990643; c=relaxed/simple;
	bh=KXz6UgNNXlfe76Rffl5K+gP7aRheHDlG673M2C9Urr4=;
	h=To:Subject:From:Message-Id:Date; b=BPGVs+DB05pC0npkfhyGFNA5U6dsqcJ2zfbxhwn7x/G0WM1ITU52JTHUVtOhzbCP7dpuC1XWQWH/YQiQJ8BZ+qi/4yQ6raml4DUAfK3hQMzCu8MQF6MaJjLjs5UyjFEz3oJ2a4hG/v3MVNTNdAbVWNHAs4r3rrv4fe1Jkm88toI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grNsEu8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grNsEu8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E68D1C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717990642;
	bh=KXz6UgNNXlfe76Rffl5K+gP7aRheHDlG673M2C9Urr4=;
	h=To:Subject:From:Date:From;
	b=grNsEu8Slpf5Fupyz0c+TyA9+lVR7O4U2G1isgTh1Inq63g8Xhly0LcEheY+cgSa2
	 mvTfGXR7hrpUMdRE00S8oWFp1FY1H6GJU0DEwaZ6blxjTLLZiyy4sf1XOejNwaA2Xg
	 pU7gs1mnwovtphjsKM4nkbK4gogd6f1GgzRFmJUUNA7NB38GPWk0zE/4U9h+BETdu4
	 7K7MZhB8/gopq9vHZ8sDWGfEQ7nCf4hNQRDpsTksKLY5cHqjFmJs2TmLK8WfZbvcDZ
	 o847ObpX8PWAA8jqXaxj1jwggedC7KOhrOrtiLbd1z7iVf86Dnjles1Ik0xEdQ8fT5
	 VvnHsY1dwFWHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C827EC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799064278.6786.8531811342156626243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891f54454b34840f8bf00323c68c7049eb82631781c9c38fdf3957f45551bb61
Date: Mon, 10 Jun 2024 03:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717990642
