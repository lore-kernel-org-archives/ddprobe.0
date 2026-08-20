Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F5A1A262D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787265634; cv=none; b=G1v0EdgMhpLwUc3v5pGUAqhHVzuHvEb7Sp0lXmUS9BCUrV/K+Q4IdjR4XGLz/S5IrSokLVnjvXCqKKJDvQElgPoQspDTylZi/ZbCqfrxRrh+d4auvD280XphnmceS4vkQrgmPIFJvRm6Qhp4T6DDv2U2LoAkUI85vkOtzF8vP74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787265634; c=relaxed/simple;
	bh=D4kPwiGYNtdYHYtEejK+3bJZctSu710n39Prq2CHa3Y=;
	h=To:Subject:From:Message-Id:Date; b=FNiKHtH9uv5b9IaBtlBYIfDVp1Txy/goUJx/u/zb+T9MuMmw+1ZuWhc5cri5T/D5zbRxxL1BzDGkN7JJCpNdIrrL94y/4jVNNFP+O292L9qoj6H9VOKjqMICeZe5XlxP5zECTDclVEh6g7uh4fYzWPeJSYle0E6jeilMDdqzTms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxilq6eh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxilq6eh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA88C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787265633;
	bh=D4kPwiGYNtdYHYtEejK+3bJZctSu710n39Prq2CHa3Y=;
	h=To:Subject:From:Date:From;
	b=jxilq6ehn7FGVjsx8mwkF9UZcuoyPOcYZ7Xe58TvPbQCB2mkaQsIGWucLB73u923R
	 p5VDKXjGVH8xOfbOkuD4K0OqOc6NYDmud8IuCKZ79l3A+RdZNcL6WKYENPewywuBmO
	 VnJNmrzT6fs/Fyw9vRyB6xOIMnb1roNspW4Nbr4wF+AsDDERqU60JOdKuzf1ogE3L+
	 ack9NXiCietcGeXdM3RC/OCrPPEJdx/SRAAHmzlYS+y9pJLE/vLU8Tr9jzyz5rxdab
	 TcyY9kSAJI5g2InEyj4Lzg5kc4/ffY/GHDhaPhm6iqWVeJcRrvv1A8tZBGEw84G8s5
	 V5dhJOrvlSKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AEAC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726563370.1576.6681272162611437364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d5c1e2dd139ce0b28761e943cac27244db320865212c75ae09fed67947e15c
Date: Thu, 20 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787265633
