Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3005B7B3E1
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758496194; cv=none; b=BUuh3CiRfLsvdySQHacW9FIK8aIhjRjCVvsNpmFWqqLPY4/UZK/YtFcZlcPSmN5XX4JeOtU5xtWAdqclyYUZgBBM/n/PUbVpcUBwg9apcuST4iRAiFGAUphII+D+evBvMRn1v79FDPLbq9G4mzqw/Jaau2luiapZp+410Lod9bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758496194; c=relaxed/simple;
	bh=ZZ4aiSxHFaM2P4HD2mhNwd9BPfdNnXlrUQ8REBoGtnI=;
	h=To:Subject:From:Message-Id:Date; b=AkkM1gXTs1D+ArmfLkEYhwoKUQBwXxMfYdOet31K5n5/KT7KG2Y7hkqbmXUoWpipzkMAXP9c9Jh5aeoYXmf+SsAH3AmIC6/n21I0AnHEkQf0tpZt8e5AF5HAITE5bDC21zYHX9c7gzTZsMjs16wt7xgMqhY69/QnAC2aDoWqLLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCftzomn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCftzomn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC454C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758496193;
	bh=ZZ4aiSxHFaM2P4HD2mhNwd9BPfdNnXlrUQ8REBoGtnI=;
	h=To:Subject:From:Date:From;
	b=YCftzomnEmLLUpDrpGH5JPXwI1Bh72weOsXwxRq2P0/U9X6ls4Z1ySZSM4Rn3DlbP
	 nhVQH21Ckpqe6f8mS9I1wXgDMJVeqcE7MYmBWUwEVI9NDGpPFQEGDEKonOw2gjDXIv
	 pwZz6ZOhaNR72GDbJUkabsXO1hhbbWt/FPGvTKqqOVJGa/8zsntmQdjAYmShCl8eKD
	 1vIUySj3dd+UpNNHD8yLwLdcBUz5nLbbPjGhqH8oQ/WQ/VLghLkV6r7eFUpcbWHm36
	 r2ujtgfvtHkKkpBQuzKhuzCvcP7UvKxI89olT7LkKsCcZRFOoxDWwDe/PcpfoqK3Np
	 E2QKFqr0DZ/9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F3CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849619358.21461.2426418614883436809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b13e1088231aa10f20d889e94cdd14af402ed4e096152706f3b8929157e677b
Date: Sun, 21 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758496193
