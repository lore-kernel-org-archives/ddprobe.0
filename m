Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A7D246BBA
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759565395; cv=none; b=fDcNsb36wUqlp3RdtUMeINEptdEWSozq4i30c4MR2+OBIvEiSnaeLk8rwiquyysV6y4qwMsSIIl7NJ/O31s4sywj4CZMTS/CWs+EK22va1u+p0qveKPNa8NsuTk9Qov60d8p1PfTOZzqafNmOTJhUy8Vv3Qynq8MCeaYZnecYSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759565395; c=relaxed/simple;
	bh=D+5FrsraUjccXEToTCAN91OlOLKEpMOuUOO8aPGPpLI=;
	h=To:Subject:From:Message-Id:Date; b=fgIVc909COGCjTLrqSEsVt9LE7WtGPezCphJJZNn0yu7i02lLbn7MTkOmaEeDTb85OVz5OYUDJ0He3jGWuXvqbbIxCFxMKgnxa8yK3BDnDvLGzEFwveNFoCSGqUV7wiBNn4eI/og0lgr4l48RpxdAbU0I2ZZoJyYmjjWmCjRVzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuOYvzKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuOYvzKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC47C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759565393;
	bh=D+5FrsraUjccXEToTCAN91OlOLKEpMOuUOO8aPGPpLI=;
	h=To:Subject:From:Date:From;
	b=VuOYvzKMmAGiGoe62d3tlmpOWR3S2iJExwasPBJ+/+H3UkNxngD2JUy05at3REJ6s
	 gBLOGQF7C7SEZ7VlsQ3EnW3lAff3xtdlug5xWqT/b1zBKiK9x3ANdscUkllhxXaHPs
	 ngnOScH85PDub5IMv6H6kX0uzI8VyNjvoKrX7r4JHrcwGDWRYecWERGycpEBneyrxU
	 tox6U3dKVD/rHWDkZaVH5dAZSU2N9c2yEQIjBazwpQVfdX7RIvgrR3omeryYt4qOUa
	 zMFlcO5h+W6mgRYK+GN63d7ADqFJX30eE68otCFWcxkr2NBZuZ+bgXucMqcUtI3p0c
	 mv0+MH1546+lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDDCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956539359.21983.5759231819017570824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4180f3ada48b080a26d47be8515220b7b7c81180546cb83492430f5ab719e8c4
Date: Sat, 04 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759565393
