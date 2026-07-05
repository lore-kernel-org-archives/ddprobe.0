Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153CF3890E0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783266514; cv=none; b=aHE5UGcvQMDSSIYMb0gGR7yl4PBmiSYz+oNtBEsyaSzGSLBLdaGlNsa5j6jMJlO4OQiRZht3czjVBFppeGuJpEM2W3heOU6DI+vg5QxWBB2A79Md2UmjGWok7iG41zodPJ9Josrhfqyv+i501jEErQl9vj7n3aQQY/e3nRhzMPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783266514; c=relaxed/simple;
	bh=Pfsa/u0jXJ9eOmKisv74wpysuQEBfnq2+of6TJ4JueY=;
	h=To:Subject:From:Message-Id:Date; b=Kn00BJ0Rr1IA2Q1yuCYq7xclYM1jnOk9wzIx7hgQ6k8LQe3papSSi30dwzhQbBvLbto3QX3eH0acaKHsdPZcoWyrJf7pnf4gW7aphBIx14NaQ0S8E+/XAVwFQ7bQE2+ASYpTt1BzhJaInk6hnMLWxx1pqpY0nKCz5cggY9FK9S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5ihmlLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5ihmlLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFB7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783266513;
	bh=Pfsa/u0jXJ9eOmKisv74wpysuQEBfnq2+of6TJ4JueY=;
	h=To:Subject:From:Date:From;
	b=q5ihmlLbm1/CoEaBuxifUYa2sinzitxcZr5Jl+Jr+RJwCbeLQ0BDlXU65mc2/gZBl
	 sY03Fg/ZtSOQqMhq+LyaWrMBrcbnajXls+jEKblVo+l8gO4p8sILTDM94PuzQcMt3a
	 fOEo4jSvSAW45fqixTIq/MqN+LDAqU6JBv3Zt3MPrOyO64E8sP6g8i2RPD9ImXZI8f
	 PlOn42xgtJXUPkcpQDMCVlEtWHdfneVgwcZyGlwydFBGNCM4nxoFABP3O7vzqoBxza
	 Jw/vNcmJhEh5D0K8fdjoiI0BnGuYWXWdgPLP9jJ2t7AiB0hjsfkMpj+q6fDQ6dzPWv
	 Bo833WM/FHSCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E9AC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326651368.7640.17767744424697550583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87939113a2b1afa97cf3feeeff459f416948508d872afc5988c2879a1cdb81b
Date: Sun, 05 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783266513
