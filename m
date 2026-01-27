Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB1E28F50F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769523234; cv=none; b=V34+F4r38A58agYc6l9aty1R24dZdyhGWlv5J7A4S1YdhmPH4vfR/fWbP1CAuciTaIaADtM1bYoMrFGLQiNi1f5DFo4FR61y5Qt68bWHw+z27AfWYff7E/ddZzzD7QV7pf324S3G3UkgLWWQqRfUGC+nnY7OxtJmGVPrYXowhk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769523234; c=relaxed/simple;
	bh=ZPaCFeQleNlrfOxRMD4nEOrR7cl9MiBx00GtLG2fEYc=;
	h=To:Subject:From:Message-Id:Date; b=uzttOrDAt06YnYXmY1jT0EVrlFcpO/OcgKSYnCTy98dbwyCpEgkTNK+JZRa8U2KpramJze+tJfWHhSZQG7XmaXpLfWrfstClMYvHr29Y2h7NtyaQ9eoY6xRXtHryTiQdXJ4grvkAA7OKY/R19sNL3XVFVNORfyVM7cKE4SK6ivk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qp1ANM8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qp1ANM8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE0DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769523233;
	bh=ZPaCFeQleNlrfOxRMD4nEOrR7cl9MiBx00GtLG2fEYc=;
	h=To:Subject:From:Date:From;
	b=Qp1ANM8hQ/WCQqbM6FHX11lYMe0UPBhwrS+pL4ACCSyhzMcJYjXBUkuvDNapT7H5R
	 hW0898N8P9MLuVQ4PhG0UGynjTas8udJV4yqXA2Z9JQBJURKuMKiabDQqe9PaDJ1xr
	 7c4qd2JE/+RA3nX+9Cf6Rey7vtuSqr0s4vpypj7LlqdSKTFtoOHXUzbuMJCw5/JQM0
	 wdTiTmB0lcKtSg732TAA24IyagagzLPE7JJDmivlNb0Ks6CvkzGebLOMZBFdGBDXIR
	 UjuayNfKzyBx+/Lw7EcIxUIxgq8T1Mf4D3k7wgTOk++ZJ/mRgIEEEgAOhblYrL2L+k
	 GXHeUfk38VHPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E6D2F033
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952323358.1607.1312541351393456990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301690ab1a22df57829746b9026b8972160469d57248e961ba4b63c958348a14
Date: Tue, 27 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769523233
