Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBC51917EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725387954; cv=none; b=svhRRtPjqudpP/cGUJM8L5ka8+zMQXUBKbisuWSf4Tr2Yo+a2B43ouhEw5kkykJA56O6Zzw6noKyV5h5MhHFcJ6nvj3BjJI7Jgdu/Cg+LeDPQhgj4RhsZeYwsCfU10JcZPkeGbWLIL4VN0axE4l03FGxM/DB503sTE29npiI2HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725387954; c=relaxed/simple;
	bh=QcW42cmBS+QjQ28++MpxYpu5Css07AEIGOXvRqfEuMg=;
	h=To:Subject:From:Message-Id:Date; b=pcEIP1DZBCr3Rgdsd6eBMC0jLIwtJCG3LLjo0CCR+iV/Xek5iU4X1sUUxGTvLM/SKkXJ+ON/7xQJow1qjbquU/YU6OSLDYapnL811RGniX26TUMfrKG6OP932MmyISgfauHXSAYDJD7ZqILN5y/ECGZyp/BEHYU1kcTNNwp6Nlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgNmmfdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgNmmfdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A601BC4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725387953;
	bh=QcW42cmBS+QjQ28++MpxYpu5Css07AEIGOXvRqfEuMg=;
	h=To:Subject:From:Date:From;
	b=kgNmmfdXllNFNqJr2+8UFHwTBDKBPSO5wFaMnXc/ISoRkxvyQb3n6TY0HlXwriMID
	 QkndLLO/aRsakHMYKvTGPr+HR9058bZwv1vqIIE2GLUNuaLVq7LyP08e7j4QVpD8mh
	 3UKV0jR3SWgVErw0EadVM2uktxx63PKuao+K3YxZh5ba/P2KybavxVoMihgcPV9j3I
	 p+Ddc9BlSuSLF+lsEnIFG02LX1+zJwpei3ljAPCt35qBHnpd8Qb3MpQqB6T4dwI51K
	 YqR8CpjcRN23O2QmvGbKefNJoVi3Zs1SsBBP4zZc/Pgrqt+xQBMSjYo1v0U3pO9jO5
	 3aOHpYgvMMVIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F40CD37AB
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172538795360.32660.17032928743918751179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f444f854f07f61d49a9a7c22d1eb1bf37f98d6ed61976ef2478f4e2b873037e
Date: Tue, 03 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725387953
