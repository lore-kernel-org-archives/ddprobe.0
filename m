Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A5BA2D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736462154; cv=none; b=LBokepdyW6Ges9yYc5slfxHmt63j5AOpsztZywK4t/c5Uwikqpg0i/RYXybF4XJvMVW3IpUR3fGg6hXLhizcyAebx3zRVniGGxwhYTSW2rw7haYV7Hy3xBiv5x3BirG+Jmb266uneJ1v23qobClO5Gd/nOseYczFNB/9VzbaXoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736462154; c=relaxed/simple;
	bh=PBudmZi3ceTvvnNtx/lVAL29sCJ8wdllDEDNUtO+bTA=;
	h=To:Subject:From:Message-Id:Date; b=pwEWRD0rw0Knovtr/K2TOGA3ZblmZ4u+cxljdkY0VLvgWBOdDRDrc69WB9pFbcykDQFzvXKEJyj+nmQLyEbpMpzI6ByL866nzKY53rvrL2BVA2Kl1+F5pppjvqTKH9BpjgnzQDANCF/NsHvg1bMw4BOkN413JEY81eAae9M5PsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVB+leM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVB+leM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E26C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736462153;
	bh=PBudmZi3ceTvvnNtx/lVAL29sCJ8wdllDEDNUtO+bTA=;
	h=To:Subject:From:Date:From;
	b=GVB+leM7lhg6UKlRPsEEn7LDsu1mW9XX2fAp/nPsaBgX8e4ELyaDrdlwteBKJ29/1
	 Y1oapVCPlJTxYQsFGVKYVlEELur+1qhy6HpfIUQuwUKmwh4JYMF6SsGESL+PD51C/9
	 jCMq4+AQgk3FJQR3BLL09DXwNJeU36H6HCkDrUcY5SnAFl7qDnHIasa+jObg0iepOb
	 BpXkMCY1XDqHp1SF6pacrk5I3MFTaRVTMokVwoIUi7rbUji7/5vyK78Sgr2hLkyRkJ
	 YA3nzSgHbM+Za2ZrmuIFq9kbSexGEmUyo6iEf31bv5SYAdPnqlTHwqDdsMpyKFJJ8Z
	 /HJSr0J5RVkMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F985E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646215357.7122.2745376618982403422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06dbabd5e1679a6bfc277dfd2a0398c21e9b5f3140e814abe33d09c3d8d6e4fd
Date: Thu, 09 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736462153
