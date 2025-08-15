Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24900269811
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755250195; cv=none; b=B2YCoNgwWY2uKC4MJ8s5eJ9Z9lYohgmaptd+xh2RM2vNecuCSjF4hYyKQRC2fcuLgkgcAiJX9iKm+IdyhkL3KOAGj1I93VIVmeEt7mbrD6l7xDpcb9ORvphK5upKh9FaD+Msec2uVz+lbQTRaDzo1cQkQyWySR3hbDKyfhKcQ+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755250195; c=relaxed/simple;
	bh=vSzdpDRPsOMuXGNIexIvsAc4wXpyQFgBYNRlQ0zrmQA=;
	h=To:Subject:From:Message-Id:Date; b=MVmIf36RB9X2D3WoN3PsNtBkbdwNacQ/VTXp5ycrbpwDgw8IGiF0ByLhJHz7DsP8nBZdQjPvofpZ6HUlIbmgWN2hV4z7vc+ILX9WnQJFap+DpTeNAjrJ+sxQJc0vAZg08mUnkdXUSDIhHXfwKPT2+skzeIHrXIUQGypC/XgiVFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw8VPU6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw8VPU6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62FCC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755250193;
	bh=vSzdpDRPsOMuXGNIexIvsAc4wXpyQFgBYNRlQ0zrmQA=;
	h=To:Subject:From:Date:From;
	b=Tw8VPU6cYS2G/sjZSf4t5rR1ADdxdS2k0dk6T1GmdLn9bzFDSsCBhb3Zjvxm47b95
	 PH0uzKC9IfwOKFSSN9ItvAM8dZj1ycGKjTHW85Ij3WZTfjy/0IvHnTEdRslzkfqTQW
	 tw7eAdkKOCeCYex3wSsGHCP7lCA2JyWdTuxKY9KAaULIYiGr4vod+halHELF8DK69l
	 zw08ctcJ0Px5cH03EQPX65Mtpj4IU2mjZ6T4Ye9nnA4xU1ah2I5s9Jro1IbUYB0nav
	 66o0b/JzvmhSX2HhQEzKYC23jWizuka12muvfnMso3+oJrYeNAV98xbiFquoZyCoB8
	 C3jze2JPbMMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D80CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525019359.12103.7921200611069337995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d511d8b8b887ca6b6213f574a2424348a7e09192dc63649a18ae76978ce9ede
Date: Fri, 15 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755250193
