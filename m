Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2BB2E7198
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788774; cv=none; b=TJAH5Vfd75mdR0Nym42CffgiRE5uj4rukM1WB54YIVliVMqVf1DJYjE2iswKgz5aaiiBumntOQo3MCh7fdPIISa1XxANGYuuHP0zk7m21ZJL1oIAKV+ZBY401gzSSYpFpawW8D/881L/OBK/H2F87EXx7y2uYeXuJ5SPoYqAnsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788774; c=relaxed/simple;
	bh=+MAoKVbeCocAB4NqgS9y1cEGqzfrgklviZjxmNygrbI=;
	h=To:Subject:From:Message-Id:Date; b=PEb1+LBQYvrtNCpUSrW3uQHuAuHqLZx57iH1FDdsFPxzgUlijysoe/SW2oIpcNzfrw3fFwxL/vaxMtB99hqvgKT8innmA/Ra4Rh+HxmEvQVTfD+y/S1r9fAcE3M4tsxUGskDhk29scdqDGFfzs5HBQiFHGJwGOYntfPWE2KEtA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWQdUvCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWQdUvCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A10C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765788773;
	bh=+MAoKVbeCocAB4NqgS9y1cEGqzfrgklviZjxmNygrbI=;
	h=To:Subject:From:Date:From;
	b=WWQdUvCOKsWlngiFePQwK8qOqobc1PHQd5fhQKutksNqSZ+c9tujM/5XxIrRtKs79
	 fhCoEGLMvvJgB1ruBSXxjBBxYih3yLDAdR90NiURX8XeDLcRzglqDbYqH6z8fvXysm
	 v7T3OzbGI2MBgOBLedbnLjmnNCN/b9b1au7vJjsUDc+1TuHChCc16QEq26/fM1DnG4
	 Px5PBdPecjG2M+aXPWHx5iabXN5WY8BCDynPghD6NXtTHDsuNFoM38l+iOzxCta+VR
	 hJJknIqnIGIQq9rKtfFPtx0LsmyADvEA7nSVda/jpLltq29H0wsI3oF3RbdDpj2WPV
	 yZ7bQ2j0lScsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233AD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578877359.5725.12830207223267412410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0357a05bc7948beeb68083ed42bd3f5e5e9d346f561587481b308fe2e9c030ea
Date: Mon, 15 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765788773
