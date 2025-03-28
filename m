Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCDD17A2E0
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743130795; cv=none; b=VJRvAFIDfJkDixaHpVGoHhR0r6+epS2gbIhuqUjNIMScVOXmRK7nmHWXLELzkkOETeVXCGN7SLRioYvqKB61/MNESCQDTL1LI/oysdieWDeOJokoOriwanAeTWqLBInNewLZ5Qoszq8ZnVNrS0Fr1TSEGM/7r1j5f19zrcbgNSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743130795; c=relaxed/simple;
	bh=Ry80GUdBIAwytraOBOiVW7GCxzL9FuIPYg6GnwMlRmI=;
	h=To:Subject:From:Message-Id:Date; b=VyTkVVpcsKmOOvrnlRp+CIro11wVwP0akJxa0saoVDsxktZ/pAV20+6wzZsRNnlFbQWtA1FIyGcqmNrH/GNnowSwBX7dFWkwwzdHKU27387j5KqDCQyOUkg3tBdsvipnUe5u91bS53au4oa7J+2AWZqfauI9ozjpv/27S2KZuMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPPt4+fX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPPt4+fX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE355C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743130793;
	bh=Ry80GUdBIAwytraOBOiVW7GCxzL9FuIPYg6GnwMlRmI=;
	h=To:Subject:From:Date:From;
	b=KPPt4+fXF/dsvwW190ckbfqOkl4SLsPWYSN0ER7N/QHtuJG1BKdICqGCPl2rp1uSk
	 ju9xYQBp4/ELEvPFIekrbqjXqLNPqr2PH0MD4htUfvpnawz6gwiWRX+pE0LLFibVmF
	 ZTkadswbeRi9lFsZg/rFoENHxJaqyL+brqGaUfMw5S6NqF2PKe5S1W1P10ALwtN1Da
	 Xnr+vw2L5AJwhzK5eAf3kCk1VvAMhPGtZSfkVXNJFmjYGlvAPrdJ4M30IhAp6Oiv5x
	 NTng4GTPXScOgf4doZLYS+zGHjG7h+c+Yn9H1nKhLoTvuSn4R2z/lIfCuYyvom0IpQ
	 tVarlChAVAzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93253C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313079359.23113.13456184072806290096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb49f54e8ab5698c70176d88d0f7fee0743e33b0f7e2198e23ac0f5b520e4d4
Date: Fri, 28 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743130793
