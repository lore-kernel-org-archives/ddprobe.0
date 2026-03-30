Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA033BE155
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774911294; cv=none; b=i1n5NzFwUevJApCbvpfi04rgMkJrLZBSInPl9ZmCiZcM0NeJwbhYEAPrzvXkI0j5x8lLHfD1MPUhhxthGKBsyKQW07/2lctf9/Hq6wWaKQVh1DY+7MAWZttoWzeokfScD8+M1+evMAmxgWixwbRJ8bdlaKZ1BJd5W3esKZQNPVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774911294; c=relaxed/simple;
	bh=yenc/ZixQo/NGihuKHiwxs2rnjJsSEJEGBdPvshqtms=;
	h=To:Subject:From:Message-Id:Date; b=pnhG9GHxnk9RPP4Bou3h5NbCUKPM9v/iYEemp7LpRfsFyBrLyMHVYSYezBi+zr5N2ahsOybJuJCjYZaMnXqx1UE1YQyF2SxGDiSQNqkeitqgLHNB/2BLTLc9ncqj6vpyruOFxE84ETr1yrH08dKbrLV7WE5mZhh6SoJTcF7jxrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyLYeHTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyLYeHTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A128EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774911293;
	bh=yenc/ZixQo/NGihuKHiwxs2rnjJsSEJEGBdPvshqtms=;
	h=To:Subject:From:Date:From;
	b=jyLYeHTB1s7FcAv67hKe3OT5dVStXUbmsIXfElDNdOufE7h+GHOO+CVX+bngXwiyk
	 gW41+jE7rPnpHN6LxOM7h65B/fA+tPuQrUVQIPmT+9yATILPSn8JVQJJRXsvTbaNne
	 RF7Oj61sIFJME62Y3ieaDsSYWgD9QYpV1fXDELlJeM6vIFPB1VzV/3cKjZUanGjdA6
	 3po0Wrko6l+Zj6OYbD+kT2H/7XnHijuqWdZ2ZN7T/Z5Vb088z08LlvMCbZfcUCDbJe
	 lWaqIg8UbebzQtLcV8HbHUXAM8hBA/LKyQwNiyyXLKbP/rVIv5ti+59M/1Aa+kO7Il
	 CVc6wGSE9pmnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928E61061B24
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491129358.13882.4664071577348277551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b659e50a3d1531f9fb5a4fd187d002fcb03cac09b64fba020e5372c9b620981
Date: Mon, 30 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774911293
