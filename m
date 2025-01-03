Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A951A8F80
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735932354; cv=none; b=Huk7JZH5d8YsE5QZVOCuaBgfmPNWY6nV/F1YiLXpI4CY5TMlVV/md9x1C5a2MiwgvSuYgn3c/zgZPO7A0YiAqHK8kzHxqXaJHkhRaGuLHT1humQhA0Apg47q2EAhH13cOVxRLOzZ6FWJzjL0edyZFv2nu8h3CZTBwcgq2ImNdn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735932354; c=relaxed/simple;
	bh=qDWgggNv5Qjor2U637Dj9pLadpUDOTcROGHJqnhq72I=;
	h=To:Subject:From:Message-Id:Date; b=l8gGkGEmG3B8UwAXzLfQrUDIssfGuR/E58J1739xBNwWV2i8pePlYCvTaKcTEzmfTcWZIIMa74FdpcAQN8POVSpAdNSAnl5qHYhN5NyPkFnzhQX1q/FVpbt/ie6S1s5plK16rKPfFyQ8oOzudBs/7YHGTRT9ChlRfJrWIg9FBxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN+Rn1vE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN+Rn1vE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9988C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735932353;
	bh=qDWgggNv5Qjor2U637Dj9pLadpUDOTcROGHJqnhq72I=;
	h=To:Subject:From:Date:From;
	b=nN+Rn1vE1m5BnUodu2HG1lLgkA7P6t1JBa+hFmnzBO4YS3JKC4CAQGFXXqUv7cFQh
	 2Plb8K1B0OLcRtlJUtzoXa79Psmng7KBmTGZ6kGNKcl2zV/K6HtiNHpAGG7iAGs8TP
	 jkx0peQpDiHwTRsqomFHvVs+1HnMsqL4VbQDAspYg/79PexSTmtkwmdNqWjz3CRgYk
	 oVGAh9tdk6dfyFgLA1JWFXwo0pxXN8bvTG3WDJyNKTd/VG5DFWsvk5FaZpfOjAsEkY
	 6mV8L9qOo+RrLD+3nsGVyckETs2Vs0YNyEsg1t7uIvsnigrM2jr6mVHNfuxW2db+Di
	 9mwjlUyMOkTWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94905E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593235357.10483.5386656909804591218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb4c1fb908ec7677fe44e4c26ff618222c215b72b1d7fc79a5e414e2a90b86c
Date: Fri, 03 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735932353
