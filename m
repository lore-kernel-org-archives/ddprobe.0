Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA9A29CA
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736691954; cv=none; b=kTPhngtaJWW4M6PZuG32y4hqH0nLyWxDtMrVIpXH86dSljcpOC4AgwP2ry+5oNKxTq2j0Txogb2sHy9l3tjkO2z96ILbPNFwZrGJcy8fbBqZDJpMFJuuIpKgbm1WwEnwQZxahBAa9LpOL5RzXf4x+L/RCa19lduuyXcK40z4HK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736691954; c=relaxed/simple;
	bh=F34VO/C8QnTVZYgCO6jpx1VVFhH0CTky0229NMDcYIU=;
	h=To:Subject:From:Message-Id:Date; b=qMBNzi+rpLAHk1YaliITgzSFKZUbC/elp90+fsrApV0pnYDmrhSWrKSwc2r7gqmRYTJYmeaIaHS3Ifl7wcBspM88ClF1ByoOqKtKg24LZkzpZzF1nez8mcM4yNAOT0I9do9eHSK2ABIC9oufZDGpWq9WmoTESb/ZGZuc3YW/wGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6v2HO1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6v2HO1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F21C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736691953;
	bh=F34VO/C8QnTVZYgCO6jpx1VVFhH0CTky0229NMDcYIU=;
	h=To:Subject:From:Date:From;
	b=L6v2HO1zx6OInkgGAcR7+eu1Xn1GRk1oh+RnxkdmBt75hdQ2ZYrMKJ1E5GOKTiXMC
	 5PeHwSoTc42mKB1Q+hi5onICTweStiKTsg5+FHQrZDxWH4U1Cw3X2teGt3lGZuSK5n
	 buFFw4FUEMWt2X2q+WzBMew5yo1xaBfxpM0AdDDbkQWAtltdPY9JJl12D8jXM4//mB
	 YecXj5uMLGaVK+ulnc2tU/veDNAgJv2gSQEddcaFWP27zsoQxff1H+Isbo8bj5ZCTy
	 YhZ9jf/3SHy5Ba0KZA2ClfCLEzuXiNifv8UnNP/nHKiwn9mYuUvIr1vqi23OT3piyS
	 H0hkTBNKbMgMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD41E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669195359.10176.2376251532168202590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7022e86bfd827c1e4b36c903a070f830123b10492931fe5b426e1935ecf3d8c8
Date: Sun, 12 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736691953
