Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBB91AE864
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718893823; cv=none; b=FjU55WhwYYU/c0djUcQiKAgwFEf6Zc9o/pKNdwbstTC4bDEY9jaQshMDvLbFLlMOMHG+qISpJK3Een7xY89Jbr29SjYpSG5GIgohf3BYWjAYg3Xrux4baNU8Sao0eS5F5lmkT9QsDBM70WVKnBPVikK1mM6nQ36oyLE5DPsExHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718893823; c=relaxed/simple;
	bh=z4pH+qWf+VGyzN1x4Y7G4+PGcUlJHBw7uJs0LgseClY=;
	h=To:Subject:From:Message-Id:Date; b=Ut9iGgQJiIo/xP+T2v7bIdOpZ5ndC/r3GL6ZwnKidi2lTFwfaWEC5VjEJeGSHPspaGTu4CtTX5CfMqwZD/SIUeyg+xfSKZlgfJmWtuaVaqGaTdsHoslu9BbB+qK+yoAnLGzSBOAW03Lvrz5Uld5/Hq4tYu11bZ8hJcKC6XuSG04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1CCsA8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1CCsA8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13B4C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718893822;
	bh=z4pH+qWf+VGyzN1x4Y7G4+PGcUlJHBw7uJs0LgseClY=;
	h=To:Subject:From:Date:From;
	b=s1CCsA8WIV69xDk5tO2ZdYnaUvEH5bXmWe/v4vagTjOQ21Wiw0Am9ZSVQZ0EsbNsw
	 97Z5rgdz/Ty8JM1aSWy6pvNSshyOioE6T56m9+xUx3SyqYUT5+oRZrzDuqh/i9dJis
	 o5TQTDXWhCAOQPihiAS2fdDJE9FvgznUhqGg/Vk0ikIrOs9JZMSewZ5F5AhngxOpSC
	 +D0B3jpslEVtq1sOmtR4KmuTIWtxlmr1IhJrE1ZXccKcYiETVS96f1x1mRpeLCiLna
	 K6vwSvcnHZMICHOwJVU8ejTBwxLYhfx+upqq7Xti51XC9RNT5u6d1BBV/m4trAuFTa
	 t5kVvIzfDfctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04BBC2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889382284.11741.3004402390010431320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6253b2ed1aacfd84da9b6e094ddf7fd3e376fb18c0859dfa4f2f167bb226b89c
Date: Thu, 20 Jun 2024 14:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718893822
