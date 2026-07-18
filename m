Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCFE3242DF
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784356114; cv=none; b=VPms1q0mollCMMGfJzjyGFWvUYxLU55svdO7Yk7GLLVcuwZR+EE0aqKwwpqNBYj+du1gRDgG0xhd2S0ArKPigH8cJVvyxpbYMYMWYmFN1CQBbvH/q7Zgjxo+jgpgn8RIwTecAMhmDZ+rmXUTHonDjd+X8CZ4Rj7vPQwyaSygqag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784356114; c=relaxed/simple;
	bh=V9FoXjA/DmfaKR43GTzA7UCCI7Kb8+Eu4nDRrUBR8bE=;
	h=To:Subject:From:Message-Id:Date; b=pUH67eaUWjy6kkBBzFsw8xAls/IpK5ZkyjoXnkHzk7Tuhiww3H5IDw5QIsdGea1gIHZYZs2fKEHfjelI1RM7/kbFU4lM55gjwyrjsu6+e8MdSkqZhjUXAKtPXwSxL9mMjQKJsAOn4/ONdOU6L3wGCdqWpIBn3CF+MeURECH9d08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6aMOrpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6aMOrpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F57C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784356113;
	bh=V9FoXjA/DmfaKR43GTzA7UCCI7Kb8+Eu4nDRrUBR8bE=;
	h=To:Subject:From:Date:From;
	b=p6aMOrpzhuGXL0u5SgTtG2KMkYKon6qe5mM7q8+w5r3hoaNkIiSb/oqjL8Nr6di1B
	 jbm39vpDXpVlF/QPb0e8Yg2UjJYGyb/HXPiUu3aR/ZxFVE3D6CWB3PVr3EN4hHHD7n
	 dRRHibFXHYBx8fF/iUiD/4t91LJZbCPvJq9+rChj1BC7iDRHNLNdrMZYwbDnrizGPx
	 8tAE1dEEUhqTcLsLlkRRdpeoSpNcPjxVsHFCXiEXq2HRDlOh3r+XN1BB1FY0UzAuC/
	 ewzZ7Lj/5qn5gR5vFIonld0UFGrhoqcXOPCoEzqwTsGfqNgphRqe5u6z+p22fVyEXL
	 v+RlEckwDsV9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECABC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435611368.12552.5155693516352999628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c01ac2a31159385ade8c6e31b40643086ea0516877502d4e72ee2a59b2a869
Date: Sat, 18 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784356113
