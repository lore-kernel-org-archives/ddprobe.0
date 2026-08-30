Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A2C2C08BB
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788074434; cv=none; b=oMwIZmVj199e2ivg4+4LMO2+1BGu7s7/TMHsn3tP2a2Ae1ngnWEwW9m4TTRGhFITdQkb1Zaxe64UAJHnpJINLKPV6Cf3GhL6J9pXDwS0PyYXbycFXphzmO7q8loHPT53cp1bmAyQQApOnxLiOwJrPrWiP7+LcE9dhQPYkRaBe4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788074434; c=relaxed/simple;
	bh=GdRw5h0gZ6HnWbrp10TZfc4a6ZqqN8Qm9Shcxqm9V00=;
	h=To:Subject:From:Message-Id:Date; b=AZipL+Pv+iEun0xpzfjNn9NKUxDtTHDivpY/6hcqt51eV5jU/qlbGhE+T2xUiVS3UsgZgGQRX5rMR4efdzRwvoep4rM53rOTvc+G4ld1wCDDwS5IMM3rYxeEsWJlZrn04RxPkeyWGB5Oetw/ApDQqq/sxnynGz0zxiOfSZ/kY8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcHQFSVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcHQFSVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D540AC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788074433;
	bh=GdRw5h0gZ6HnWbrp10TZfc4a6ZqqN8Qm9Shcxqm9V00=;
	h=To:Subject:From:Date:From;
	b=EcHQFSVDeDzHja0e9l8qVEkBzEpxesxdBajbU9RORirc7LYcde9j1IXidO7Sa0+kB
	 K3O5bu0dWO+Dxb5mG6mANaB1lO+7g/fYp+EeSejuHOia3pm5N2VCdPqKMR1SVxCVHj
	 jhYdh/UagsiRIDPwSkDfyx0uhacbEd250NsxNsZKtnMwTLjSx/Hm+T4lMVY/ZC7/BD
	 PJyBj0gpZlZKfYj9LFquQlHNOcHhoXtYRpeNM8yuQbLSyAYr1sUYzX+a8h/w7vSy5O
	 KK9JdnfCxfDdP1Ijav5aR/u1GJxkhfidsl9HU2yDrobWq1XXgz+floZ79SFALr2MXp
	 PC3ymTY77smXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF75C61DE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807443369.22900.1930453500430124915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a59de4bab27d1f65ebd7b72fb4d392e637f7b40a25f799e7d132e916161f5bf
Date: Sun, 30 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788074433
