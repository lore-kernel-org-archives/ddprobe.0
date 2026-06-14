Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2800C224234
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781438194; cv=none; b=Oe4VcSPSkZ/MdgyY/ipEUX+fHr5qPzsQ8zgjB/o/r8QeEJ+QSMKszstkdNiEsQnNfipAKqiHc+v2PMqtGbVA09z/ZW4RJ/5Xyw02AjJQnyH9IOJ2w7K0sdY451lwyDBYDT0qBeMzJQzlJ5LSt6f+2KTNUPkjKYfktID2Wl2w4Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781438194; c=relaxed/simple;
	bh=SnrybCHfVkNJEQNVlb7unHjqp7C9kQ/5v03JHA8MIUI=;
	h=To:Subject:From:Message-Id:Date; b=Ws7wWcxhRy4OAmzjcklUDGbDpjSw3KrFtziixFKPMJD4GIuKWsAXI5R3bqtQlnxD0osIbGGDUO6/fYCBntSYHZwmS1DWLDK/GCDAjDnFoM+3baRyOSyhG5ufl0PBavOtpcCY1QKLbc5rWyplX6NmAn6AXtsjCrGy6pnf2F0DHzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjOonH4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjOonH4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0464C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781438193;
	bh=SnrybCHfVkNJEQNVlb7unHjqp7C9kQ/5v03JHA8MIUI=;
	h=To:Subject:From:Date:From;
	b=RjOonH4apdXttElOmpeTxztiTWbjT6txByRyvAgswIPO86YW5UunUhgWQ4+jUs92Y
	 9Crmsw5G5VRldfaPW4xByP/ytzYOK191Aiz3+IMJrPteWUgpDAdoYW7YsZFBnhnwZG
	 KGj2y58PnpxAMDSBRjPm+DCpYQX/IF5PbdwbNjgKNmN0pa5zMuGMmlRA4u0nUGYmZy
	 4xX2XKY0rYOOVqEwztJ79XXhb8rCX3h4NGurTvKXbI3bLDzkJb/kyLOvn6inkD86gA
	 8XSKws2102vu6uM3D3XbO1q/pBAcHmoCpzKqfvyjxHXFpTEYgH7+2KJzNx3/cXXhZH
	 dzOshR1MJxv3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12F9CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143819369.16724.11480867241076284306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcfa6d4227976687aa4722d051b4ebaf08a32ba08e3b6acf1c2fa18ae40722c
Date: Sun, 14 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781438193
