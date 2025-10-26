Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AACE1C862D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761494394; cv=none; b=mJYy47+twi0MPPKEBgmGyjs3SVp5qFZ1ZdolLtvCqxgz35pBdrfxKAbUIgxvDgH37EJCN3xnvkRcFiayE8dVGL2PZcm7CkO9HV2CoOx/XjQ2Bn+0Aj/2bqIJekb2ma7hNBVGCefluBRU2INE5vXUSMMk1aFVMcneBdNFn6k8gug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761494394; c=relaxed/simple;
	bh=hrl+ezggFY8p44CAMkDXZcJEtDqZVZOwhirgfWhFVcE=;
	h=To:Subject:From:Message-Id:Date; b=esM2u6CbcYhK1brE7ImzyqPiDKnCbpEkiLL+QR5nz1fJvV2eNAR43JZarKql/tmRv2g2QmIlNSqTHao2OSEdqu58KxmiaqzhCtaJqcvYWnqvGw+DPJUJH5jqIrLLzg84wiTcDXnFLQrBSacM+1CM7pzvnolrcQzvX9BeKHHBUh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpMKkj1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpMKkj1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B86C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761494393;
	bh=hrl+ezggFY8p44CAMkDXZcJEtDqZVZOwhirgfWhFVcE=;
	h=To:Subject:From:Date:From;
	b=EpMKkj1El0FRHgdLiEwtxGYMM3BHKoXr8F31vhuP86O3s2KDhjqXv/cjhuNlJPtPs
	 zCj+GO8e5PZH4enst29YEIUCnZEUSSolyBnelXTg1lSBM/DegoTuJBFv3kImXvMg+1
	 K5nbGM/Ls1e56GF2HGd7Awm6wUNmwXxah4ovlbv2oxRe2pU/Cbk6p3oVrlz5fLzmRI
	 odJ8GWuLQt5C3qMkkfDhfmruGCpVEpXuB8dY5x03+VK6+z69KT3CYKmYZ2v3e9Pztu
	 E0j9U+62nRenx6gZvh5nnNiLWv6E0Jh0ijR+njZJqWcyDrfxMLC98yNgXddYEcbi+z
	 77K5DXfAw5sJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5BCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149439357.10682.5152426990324390798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02a3685417415c412517fea2abd89aa92a6f937f239db5afe53c3e8de937871
Date: Sun, 26 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761494393
