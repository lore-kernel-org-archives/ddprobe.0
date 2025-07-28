Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187AE202998
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753702195; cv=none; b=gpzC7gcJAM6ubB5vstvRsT9o4NTvpb8IdQ1YSutQEybmNVevGy0JwRzVMYIvWDzTvko1PRv1TdAvVw9bKOPQvGQxN7Jdr87vEkfGtH83lOUq5o1aFZpp1R/JPuZZLGriSv5hBtnknO+BbQlPfbjs5zW6IOu0PECqTemOQKJ3X/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753702195; c=relaxed/simple;
	bh=iZRvoaF1Hi98SVZ7hhiQ4SQqJitPuq/1Ar+Unz9UDa4=;
	h=To:Subject:From:Message-Id:Date; b=E/720DSaPxZyDY8mAID9yRiIDx2iK5nua9QqgnuQXnaaLg37YTzhANQXA4vxuMEm7fj/AFFyRdqjLvP2gVna6n35Q64uUUF2+f69KjFWxL1TZIdLMUm2a3gRTCvjGNncl6/E5JUT+tFTcmotl+mHezxsHQkCpQgO/daaKxhbSSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OE0wbSCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OE0wbSCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19EAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753702193;
	bh=iZRvoaF1Hi98SVZ7hhiQ4SQqJitPuq/1Ar+Unz9UDa4=;
	h=To:Subject:From:Date:From;
	b=OE0wbSCFFL/+n+hXZtdEKzelgHOmONO1e0H6l4WsJeuOdUyw/EJQPsS8sqveBBCr6
	 eKsLVOuEnnPZu2tSB5lJL4e9CvhKGoJDqY3YSC5qngqlkv1PQQ0n8Ahq/7taIEou6n
	 KOA/3ORaIZc05YHyiQQ0v31ChuBmvZox8XptQA9AmYCIarh7aI8qdBeC3dtRUgUNL7
	 L399tWKnwvyhU8LA0lGffhKVjfqGMLjzYb4+Vh+Ifg0FtlQy1DfxovsF790bLVzVZy
	 7KQTi+ZnJjW72b+VsWBAbIPzn9gbB9UfOZKVCHwg4YGFyjcimDWf3QRmrfr4zqmMs1
	 /xri6vUGhFiGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD66C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370219358.6592.4030371383596110646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68a97f3b7cb02a96776a44113bf48b8c1173a672a39286fcbef6a2917b63d45
Date: Mon, 28 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753702193
