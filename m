Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AD14AB1DF
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790002834; cv=none; b=jiZt9i+lWsqrPpf+yvoYZ7xfMa4nvKb6seBgXRC98BSoA9EPrcD2f9zpAKQDFO0kriK56OyMLUIrXVY/xoEgSe/aSUZlR2fcuMD+pSHAcQ/z5u+e3gPdh9tXcpKJyWfZd0qbGcUxnfEiDVu+t8jKgjzAMgnJxaXi6MvEuXIzbfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790002834; c=relaxed/simple;
	bh=ZsygVolJrIbC1ZcOM9kwRD8WFPlFZIObVRigSPlOuz0=;
	h=To:Subject:From:Message-Id:Date; b=lOiF+a1CI10pPb+YAGUVIIbVcG6wpnw7Zo3l4LH+e35CMy9wwlFhPS5ghPhQkEsM+QH8wuaSR2Kx6P1qalDrHXzo7nSPPhnBhu/vCnJq73pb5Rh3py5v+NOULGUFeQqKd4sdMwu6Ra+jYy7LDdVzlcnpNYGaCggej4ExkIM+c7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSpVT/x3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSpVT/x3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2940C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790002833;
	bh=ZsygVolJrIbC1ZcOM9kwRD8WFPlFZIObVRigSPlOuz0=;
	h=To:Subject:From:Date:From;
	b=NSpVT/x30ksUJ2dco/19peWIRG4z0iC50X2UW9rqMZkXx7Thbac/jqvTC8b3HVPcz
	 xw/df5S0FAYM4/o/dlgv6lidJgrJgYEu3eB8B3sMYLcFKiyrGCu16/coXtrPk+E3Bb
	 JU9O3mJU0c7j4NbqO8l2/qIkMVcEIr5bc382CmKepRn1hTS/jQsq5L+ry0EkS+fxe6
	 s+zMv72WNcPHUGD3qFGkvGHA8tC8Lm0vBDOvAtw6W2Tf/GFFH/KLkghOgoaBNxCvl4
	 oYP/lEl4keIuc0qZugjsbr9pm/KN3S6HFVWCeL1YL8MiT0hJpj+2a7K5lm5cJua/Co
	 ZPbUBZfNMmcJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF74EC982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000283370.17236.15579386063209373957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a141e91f56f3fba2996dfb37014a1465d29b8ab62cee33a447cbfe7de6e843
Date: Mon, 21 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790002833
