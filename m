Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABEB86328
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753395594; cv=none; b=mcVyPNfClu0Vr6fq3TP9MLgntPFuILkSqlNIpZBevF+QvImXhsZmxkbLdkGEXlo7zYjZ/SvM1PS0Xjd2SwCsmTPD1Pq1YcUBLfkVVXWjdMv/kcc75lZRN7oGjEgJ4tEYn282jcg4kMLZzfnknWuUbjnGk+4P2G1fkb+YvYRUIbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753395594; c=relaxed/simple;
	bh=e2XbNpRc4HQ/b0LghdeB3jbQnKVxMOr04azJAXWNPg0=;
	h=To:Subject:From:Message-Id:Date; b=tD3fm4vgj5jW/fJUyORRVm73srzz1/EqJJOCBiTKYVr4z6fO8pxaYS+r4oERDAeVApQbLvPxHG9gGET6QAJ3w4OcoD2imAOlxR44DEcheOM1dQPfQnEimwmHCI9UUC0Xpljgh74fLPfL8wlo2Bfm21l9Td3Saf1zMEGPrseD/RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3gehZAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3gehZAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2BFC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753395593;
	bh=e2XbNpRc4HQ/b0LghdeB3jbQnKVxMOr04azJAXWNPg0=;
	h=To:Subject:From:Date:From;
	b=j3gehZAexrwrKGLXaQK+wh/vbiKTeIRvCkSpwS5EQdFIk0Ts1ufIL2exz8T+xFkdc
	 Hq2TJvDx6DV7krFWAw2wq1FFt54WyCchAM2Om9EbrJczJv4KxG4Ze8/MXBIPNEnVDN
	 xn49lDcefRSVgf7hzKO9h4tK8jhrEgfImTRmN/MzOQH4cPqrcHzHKJ0fLxukay4QH+
	 U84e7TNATRCIP/ZTACcLI/LlIIGBMfe3dshIN2TvLPqFsodyymf0FiirXgSouT+Crq
	 PR4MNesLXVLAppxdCZyPowyAEk3zJGLrV7bmcSNQmnNKW3KnWKa+tUjNM5FXq1JnRf
	 K7yQBiF+KXxjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F0C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339559358.9298.5708625916589826122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfebb243d047f575b4a3a2dc6bfde28fcdecd2fa8ec747f0a75aac9238940b8e
Date: Thu, 24 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753395593
