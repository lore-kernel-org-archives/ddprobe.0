Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB38344056
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771591494; cv=none; b=mXyf05aXqK5JI+W64qb4TVLPLSVEnQrgczmkQDH+2HFz/V+yY1P1jXo9q34DOzgray0fjG64QLltydYQHMbo8QgyhYGC+bdA3sE6Kuv3GmgHps2y6nOzM5MDH744t66cc6gukihmFqcS4S8roFgIBmNecTKeIxbOvoEYf+cquxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771591494; c=relaxed/simple;
	bh=x7sMlgiMBz8m5lbwv3LqaII+iCQB9YXTnavg4Rdzep0=;
	h=To:Subject:From:Message-Id:Date; b=ijf7aAnMjxHcYeojIG0+HHeneA2KbkebhVwHIoABKTEQiRVszypLF4LjZLrhsGivBwT6DaMEAKM2jS2DCFwEkOeQU70NKp1ScK1l7WomppH1/4ehq9JpBNTGZRtTJj88OIeNka2sxM6g75/eiTLdEpS7c3aAphpOEy3LDFvLnxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5v7xvky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5v7xvky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6279C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771591493;
	bh=x7sMlgiMBz8m5lbwv3LqaII+iCQB9YXTnavg4Rdzep0=;
	h=To:Subject:From:Date:From;
	b=U5v7xvkyC1B8FWrSYetpeutJS+UWr6WuFxDrg7u7+tT7cuDDUmoFEI3RhVxmhlh2M
	 UvNIBe6ugSUmhe8AxblwGSOEUAXCY0bl6BYAwY8lO5uCdfvx4xc576sMmny//NFuDH
	 +X2afEUpLUFgvPkqfOV96bj2gwKJec3XsDDEYmdUYsCIvOl5KUDGY3we67ZmQArcgD
	 I8PtHQMKxUPvDbW07Gam6A59x8iC5jVqxe5HF5zWEDOdlPZGfry/Esj/EA1clHyEth
	 agW3Q/AsJeqj21L1RXY0EBVegQgcujdkuX+QNXvbjjJFneEPoeIAGY0zjS4FqP3QEH
	 SNg3jvcYTHzWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A77C55ABC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159149359.21068.12798970418665559505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabf420bb7275a38dbcbcfa0cadaad0b78b685d18066133645a318d701f33124
Date: Fri, 20 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771591493
