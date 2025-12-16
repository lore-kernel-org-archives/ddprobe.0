Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D02BE55A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765874035; cv=none; b=CUNowJEQ2jEVV8on+BQfzLVNjJ10g6UuoaKu5lGx4EvF8SIsxFrPvn2IxUR0M2u+e/9h+3DpbOh0BNfGreTm4muNz7/oZVA+t2I2LxKVOTT6JJHvo5yuLY4C2RdCi1gmXJgtkU/WTqkLBea0kxlpRJNLM1a2IWcnfIrgvjAfPbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765874035; c=relaxed/simple;
	bh=XyV2ZCl23t8vYupGyTapC0p4x0XdXAMS8YP4OANYQEU=;
	h=To:Subject:From:Message-Id:Date; b=Y9w+pk6ZfSKp8kEowyZ8UTvz7Lu5P2dxKqvb38OJxOd143F1/bFaRnCQAeTvhFtO+sDaESJlt9C2dBNJlyAkWLB1V9lDyTJg01pna+H1P4x0hkqQQ4bdh+Eg8CNyhgcG6TdJO9kIZXsSYkR0AYgnJ3mg52TbMG3ht74Qx9u+T8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gt9F6Px4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gt9F6Px4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765874033;
	bh=XyV2ZCl23t8vYupGyTapC0p4x0XdXAMS8YP4OANYQEU=;
	h=To:Subject:From:Date:From;
	b=gt9F6Px4ViEXkBalRzKw7r+xHi8XVm1AXqBVwH6FK5I313TEruRxZsbuXxkpC7v2p
	 ufLlUzifEbJKTl4977aWtcbTfK9ISocH96/FTYUCSmfO4pid+H+Cgypb7u2PYvtghD
	 yINkgt/y3TBv7BTwYUfvG3a1oGnouWtTMkwtsZtmF4zyoqpc5RIsqD0vc4IM/AY3wK
	 dgSdCeULCG18L3qMVoEgaB7W2EAM348HywBn9iKlc9ZD+bb4T1qpzMWcCkE86TP7d9
	 OU6iF/0w0lMopkD/V40d3Rhl2kDQExOBidOe1Skg2llY45FT5KDBTyKLpIcETYLB1r
	 rsfRG++fmibbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172ED5C0DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587403358.6205.10975755613596503639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fd4fa5c6de3ecbaf7c41ceb35781fb439457fc933dedf87d8e24fa4d03825d
Date: Tue, 16 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765874033
