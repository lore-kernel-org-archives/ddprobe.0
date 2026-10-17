Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C87B2AD0C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792219234; cv=none; b=QshVmHmsDFlXfAjJQ58Rvku/UrOM54Hw1zsaVyEyX2y1Nypiy4NSn9PpQNLqNsLwhAxVnsvWm3ttEVyGQK1fXQeWOT1adj25d4+Ns+B6g2kHz8U+4MOj2sugxvgpWA8mnuguXgx6yUgBBibiQI0TpolFEj1HSulwoLPMZbPfF2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792219234; c=relaxed/simple;
	bh=B/Ax65ThBhXyzZ7n8HyO2jNjGMs12hXyUaCcLfPuii0=;
	h=To:Subject:From:Message-Id:Date; b=CxU5j8HnrVwC+jkG3eyfJb1Zxw60Q4mksYi+eaFoOxmIajhoVvkAsjLUth3yhk1l+h+zqJDaP7JUDI6tv2Rwz6GGSiwlGYqq9E7BWD9hnN9leoRraRyO1TU3KAoA7ZaqymO7E7JjxNF7W4bbz7yjoe41G/CI+cNVQHF+RUJSBwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOWr1vsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOWr1vsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0616C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792219233;
	bh=B/Ax65ThBhXyzZ7n8HyO2jNjGMs12hXyUaCcLfPuii0=;
	h=To:Subject:From:Date:From;
	b=IOWr1vsHZGQapm4Tcl+1yPXQRpvNc3k9cJGXiHIitrT9QlZbpzNFHhse2OQcfd2Y0
	 aL7WZZYL9kdSYq9QEMoN9P57i2pmffr6C0qJyqruHeY2G4jjA27U4BJ4qwiB0abqpy
	 aB1/KaGQtvRqXt6rM67XWDlKQf2EpJchZqD7VU8qkqTorStpi2UWSLnUhvp4KIN/l0
	 T3N8KKEqHvc+j68V46EZy+S4gwla20tXQAtov2nNGfba5/imjJ/qOTaFABHKKvro9r
	 Zip6sMd4vaQw1I5VjDYRNssz1FptpBxbEyW3i6iBy2IK9VhqGYTEq4ZcVKEPkgRyOl
	 TlMHZzt0X70PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EF5CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221923371.18666.11379513706527557046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e7f122c0f4d0e9facb8442d317e48c170fa2d2f0ff0815f1d7f48298f81a7d
Date: Sat, 17 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792219233
