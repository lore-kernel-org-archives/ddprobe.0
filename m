Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A3219DF62
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789103434; cv=none; b=RP6tzfjWMnt3kIKlICe5Y4Ni+LGGC5YuK+jJ6U6cfrT28RoP/Hu4bC12hHZBngQuXQS1JssT7IMrozTWj3RXwcHW0uQCTw3KFsVJhXQTDw4+BnDeNtzgmEwpVuInB3Sbqi1uvB2Vwz1BFiegJOZAzOe/PO8MmZIxCmlgDxkwr34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789103434; c=relaxed/simple;
	bh=yqEXCDaEJ/buTqvz2xp0xVMDzrl1r8zI8+hiAgLQ2c8=;
	h=To:Subject:From:Message-Id:Date; b=EUoUA9iD7ljGgn1sGft3QZlclO9THsdGjCmcemB5PQeigrpcNOpsUe/irMjr8af2aVREz0wcMLsAnPvmTkCn2gfgIW796mm8n7MInjPZ4QtMHkt52bi9x4U+l5nIyrmu6Bmu2iZOeneO39t2A/MZHCIAsabt61ub0DhypjABcs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFzrEo+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFzrEo+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7ADC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789103433;
	bh=yqEXCDaEJ/buTqvz2xp0xVMDzrl1r8zI8+hiAgLQ2c8=;
	h=To:Subject:From:Date:From;
	b=oFzrEo+6IzsYokCjwmCAKT3/f82YrwLuDNlvQ7vSe1tX/Adg9Cg2aooLglRaKNxqg
	 ZAEb7TsnGnkDSwNXxCUdnv+s0SBrNkpDMS00x1QEXsPBMJqTeFZdLZ5KZrPCWmkTTw
	 KYkoaQAqQt3zfi0w9mxyOOVeR+JjQgw5He2hl5JYiSG771QQy8F7IfG53pmTgsKvNg
	 ENf3SERVHJlXD2Yr9IvemUy8DVd/kao91/+KKBvQWfRz57GGjgTwK/EHJPMMaN+zyY
	 C23tjjj2srboUyU7Io1PriQNBVHtou5A6NRhpYleEnKvglHMGE6jWv2WM1L+Xwy4QV
	 Z14Q5fjff27CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F0C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910343368.21101.13474070069077370187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8ce96c69f88a26fb99948e37445bcb62905ef767c2cf866db22e27fc4f1029
Date: Fri, 11 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789103433
