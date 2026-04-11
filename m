Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DB62264D3
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775876254; cv=none; b=es77UY1VqwXNwsaCx0xEpIcwaiuXjMY/fY8AYDaoPq2kibAp+DLhqwSWTVDXA6mT6wh2piz+AtQ/41IBBuB20yDd49aNQxn10hdNQTZfr7azaUBMTPbsJeb4pbTdx0Rk14raJ23IBFg+6LKjNPNqcxE+LssHNRKA5XfVPNdnfv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775876254; c=relaxed/simple;
	bh=02hpkNzqaraIrJc4HLKo0mgSpoBBuhOpImyryk68FEA=;
	h=To:Subject:From:Message-Id:Date; b=mZG4n/+LD3kPpFuRsydwm++SN0tdhcMSbndR3XW7T8kNImBaZ4vhVyfO9WBor/tt7300RZGgZOhhlEhLCmUYiJFhb3pubCUdKFISy3QzPMKd2fXZPwSndrNAtJ7uF40XnD3q/ERPdUf5Ma1sGvWTwp97iFnkwQ2sfbr8AaNVxwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC82rSUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC82rSUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB4DC19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775876253;
	bh=02hpkNzqaraIrJc4HLKo0mgSpoBBuhOpImyryk68FEA=;
	h=To:Subject:From:Date:From;
	b=kC82rSUt8j+XW09g97Q8Vecd/ToKmhzMaL8g/8DglsZYMXG+8IROzyJ2tLN3E4Bjf
	 rFVJo9xk5AR8vw72Nr3CEhlnDbWEqq0lgUwVEoHzePrOhJBUacYfm+tGIfZQe28Dzg
	 JjZj4myLsWd7ng6ksjWsqKKajzNn9Hyj8nV7rgVjUv4qNlZrYPL2acxPaeTwwZIXHp
	 oPA5K0fmJGpn/Pyetxzwdi9PvpcC8++mP2fM0kMb2hqfVvummAXYj29s1bW1J9Znwz
	 zvquclHKcrcEJbwbKr2fs51mGBIZz6TZJIBx9TR5Qwq1yXYf/sHCLS3umpMiq++E3A
	 zxgs+EcFNFXbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7D6F45A18
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587625368.28542.3116812759628510010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b5b4ce1dd187fda669303738807083b863b17db19396564bfc71eecddfc42b
Date: Sat, 11 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775876253
