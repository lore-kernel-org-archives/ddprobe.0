Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383B0380FD1
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789197634; cv=none; b=T33v7ZwiPCIyG+rOtWq8zh4G13t4Ouf6EOI57n8Bz6FdeM5dNIJ7SALn0Ny829B/BkOcAelR0hwc6x2sQamGfjlIn4pzaaUHCYxoJYjttBtCPjvGAIG0nPqGlrT/+GtIIR4JkqteC3HeC1Q7klo1x/ZfIvc/rFyv5k6V7d24Z1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789197634; c=relaxed/simple;
	bh=y4Tj2eHYDc72Dzo2Rm3mvLRAm3ntBk02sI4ODOjfGk0=;
	h=To:Subject:From:Message-Id:Date; b=VKSTrsleqNoNtSASEF9hzIRi86SF2SddN2yQr0b2ulwt+TN9PaxejAaL5doaJzMKlcxPfrX4kFVnu6ge84nhbI+g6k7WN9sLgq8tDaOIGH/jPM3WnoAxV0Gn+gCBQlC42J6S3aNJI+DAanitIDWK8Eic5cTothoVNpT2uFwqKLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuMH6BPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuMH6BPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FE6C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789197633;
	bh=y4Tj2eHYDc72Dzo2Rm3mvLRAm3ntBk02sI4ODOjfGk0=;
	h=To:Subject:From:Date:From;
	b=IuMH6BPYVxEymHa2OJ2zUQaJxTOl/5gnKRmOhyf5AkJkIpXmHAE9x5irujc1tG/V2
	 UprF01nwt01RwweBqyrkv1XYClgjxIt/4Tjbxkn1Lp7MvCUi1ii9Oh6MKJ23H0sMDG
	 5+sGpRu3diQAYK5nn1jHIX1QicxIYmeIrBZ9nb5OpMOQXa0+jUKD9Cw7ApqFFw+UhU
	 +AYBzIjZWoWCkCGUslFRbEwt4y6FHd4cOQE0YsMBu1U7JYPNjcflA4pabz7rt2f9Gr
	 cQR1VWjC03FLKqXlSfe6WNmvz42g6aVfMYrhHlR7/UJcAw+fXFIr7S7pkE27717dlJ
	 gIz+IlTMkerWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C47C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919763368.3269.1354689730959757385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22df0e853bcf9105544ade6417e30515dc4e8eb81bc28a1b3dd996fa5e151b8
Date: Sat, 12 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789197633
