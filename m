Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F834264A83
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747829995; cv=none; b=EHLuqL104jG4jByNU/kR4pZ9qzltGyUWyjENZjVrciK9D90PsCo/vbnCTybDoAet84BUmmVvMb4Q6VKsf7ouNNdOOhCCy32qJs1FpuM8uiFnl99rx+/1lOzimKETPXw5BtYHdKcscP0L1XlQuncoBGZfiHtX3FzvpvcRZw8kbrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747829995; c=relaxed/simple;
	bh=E9Z3sqoDnESNQUo8CJo4A1eJtdWStmYWb+DPDW+Y52s=;
	h=To:Subject:From:Message-Id:Date; b=K0knYLk9JTXKQJzKryhbJqBYfyibAnhgfhQROnamms7kgStscO/3ixR3jIpZubthnh5KX679BPDhnDxGcQjjwXIplb8nnsiEafDjhFNSbefwm7dZr2MJCphWzGHFDsxLVDaQG3y6WC37eJCds4t6Uijoaqq9J90BdFTgGjSzj8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxysm5jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxysm5jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C263C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747829993;
	bh=E9Z3sqoDnESNQUo8CJo4A1eJtdWStmYWb+DPDW+Y52s=;
	h=To:Subject:From:Date:From;
	b=lxysm5jqIMjpGMCzVbVoloSejkYI732jHuHvAepE3qydVhCXK6739ytsUP4dhaPn6
	 qjRIxD1Oc2E/t+jQVmyCukBvUjUFzBloiAefvtXM9bQAt0788Gxg7GYAq1DWkpleDw
	 /I94uf8oQTsxuYIJoR3oiIKQB+2piSlb5pUmhHCTcR6vVc1ScqKlBTwN8uCOE6YbhL
	 cnA67gxB9zr0V8v9nc3ZLBX0EnM6k5rJulzSGKqZJAuLkAC/z/2vSb4ek22DZFavzi
	 OxRuODcZSP2XaC/tDMu+r1A9E+09+IeaI6BTRYWl2NBMr2Plx8xJ31VkhXrV9nSmZm
	 82tBV512aUIRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF94C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782999357.29235.3638260891706935315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54dbf2d6f42652c9d15c5ba56295a69a1e252e20cc4ab979f45131a21e1e86c
Date: Wed, 21 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747829993
