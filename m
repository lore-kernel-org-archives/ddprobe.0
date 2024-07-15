Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6297373477
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 21:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721077523; cv=none; b=hlAZEJ36nn16zrNxRJrHvmC4pZJzSIBYkHvsorLVMa8QaI9MYY/ZGyXM1SA5j5ApC23of9FHQOyfm+gDUlunO6scya1wp7fHuuWfOMFMny7jsOn81UWzeyawIj1y2zS0xjK77Bdx0RXiVz1NdVFVnmg0PZVJDd+I5+Xn31EhDbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721077523; c=relaxed/simple;
	bh=1fYHNaXQ4mboh0kig9/1bysCzwTqcnXCZoQRxLKst8Y=;
	h=To:Subject:From:Message-Id:Date; b=bkFhsWHvZLxVvMdVTNcypEk6s5h0ruTo+X2dsRB496mBSDFyMmo4UfUvbHeXdDznAU5BZKpN2NZSJbCQTyDgreLU+siCM9wYhaj7hGKyf9pV0thudq1/1tHUeg+wUsMAGoMS/Nxl4mjtTdf9dqFZL7QjhGczS0mr5Fh3gnlwDNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJ5fatKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJ5fatKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA59EC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721077523;
	bh=1fYHNaXQ4mboh0kig9/1bysCzwTqcnXCZoQRxLKst8Y=;
	h=To:Subject:From:Date:From;
	b=bJ5fatKSnoi2ybVBX+iHXM6NSHbGVGl0TIB7DCPAr5o7AXRTrnHDQdWU+Rxey2wV3
	 1IuM5iUNJJkDV59CPXM7oxENn6ZNyDHQYO8idsg8qXfsAAHksHSb0JmMSgKEqdZSPJ
	 X4ckco1O92VXcIGRhSoI2hh0ZRlVC3FnE7xUkGeZxciYM6lHfDVBu1u9nZ+AvmjgKK
	 lW15OGn7Kx97P3G6GeOsoUVE/xE5dn1PxzddwtA6SvQOMuoO68TPsTvG/7eaCnKj5l
	 nTQ3ha2M6WNQabQDstjPvkwl8BlUj4iGXmVNseBxDuoVEee7AyB+8aguDKs3zBqwVG
	 WRv4u6ZFA5KUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE004C3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107752282.27880.679221749585620635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abafab7cdf7efb312f1cf38bf3e9fd79334a28ea948083d51e6ad70a8f2ca2cf
Date: Mon, 15 Jul 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721077522
