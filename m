Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA4FE567
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742045334; cv=none; b=rANQy3T/YzNBOYl18yqnT4iv/AviVc6RAxtkEUy0cuw8Q1wscs2nUPnNvMplm1Pac+JMC/mLMSAcyIGEWRGIs+EM+c3FGgh8lahV4Elc8mth0CtrYXZ3s7C3V5517kU2ImkapHrXtITE/hA+aPPVOkL7HKrMGlfGkyNDsw91gVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742045334; c=relaxed/simple;
	bh=wmV1Wn7yo4tGbHp3D5BsBl0/vlZsgPXCarxIZS1d9Ag=;
	h=To:Subject:From:Message-Id:Date; b=fs8K0gV0FRjyxaAb3nnKwH58yRLq8yafd3kAGbt0JFJGvxBs/78Lzsp72yhMYt1cfX2nRvwCVrOPy37oIH5Z6/eefT8oXD3Kx083zpP0DUtQdz+3kjVruVmwwpBVDEHzdof+78gTVjvfkvqp8I4tiSo53hgpA5iwLV6Nei+B5sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWv0q2Uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWv0q2Uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EBCC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742045333;
	bh=wmV1Wn7yo4tGbHp3D5BsBl0/vlZsgPXCarxIZS1d9Ag=;
	h=To:Subject:From:Date:From;
	b=hWv0q2UyqnfirjYYnx3pOOWJ/TQA8CsD288wnwfQmEwPSoNv/gQee6EzjxNoXDF4j
	 ki57m83lsZCmH4XzEjTMh78ic/XZUUN8Xk/t4vbDfuAoqWr60t7722js0OXlQD28AT
	 N+OxNiZoRW3xurCTp3PRi+CyTWRircRRiEW4MR1jnImL/NLwIHiAfs+4yktrIqZyE7
	 0GwoNNFUEI1j1MiymLGh2akSgRS6UGVgHQHmj9XTj+I0+T1Ck4Lz9B+UEB3FpZBeBb
	 Q9zHlLjI/Ymot86UDMU46AUZHqk/68lZfqE7H8VMbFiHRIjZB6DZ6GhADbrPJ3co9+
	 nvl4P1HrQ8k9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9684DC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204533358.6302.8665017966463867741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ea714677eb9f48d9cbd0753a4f776aba055d3eb898845158df9af6e5a31348
Date: Sat, 15 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742045333
