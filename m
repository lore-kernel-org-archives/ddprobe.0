Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E691E520E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754607594; cv=none; b=LfgLSkPgmap5EIS1t0t2m5XR+4C2tSHPesPxgQrgvi11UcQ77hVYeSWoVz37cLJSJ6Vz956mJ9MacNVQ6pzNArULM5RSQfm8oB1o3dAfU7Bik8KXYwwPH02EjNKb9WhFxQ3Typ2tI326SIyRFuhB7D1aiGNyhdvpiZNnuIN5y9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754607594; c=relaxed/simple;
	bh=7W3VkB3mOXuckV10MZNpkrDpkO5v/6LfUqPOqXwcEgQ=;
	h=To:Subject:From:Message-Id:Date; b=MuMGF05DGuR7bODTmvq049uhUL0S3puG27zcdK62cjpJ7NptPt5vbEGpKkdNyQ9aCe3MscBYsE3gb+QTv1OjiyQaOi6ns3KhPBN0yQ6MilKVok40vR0EG0vOB/m6adKT550t+w9/3v7F8TYRROkwu9LCxaNuUOwEXsCiyT8RwrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZjqADOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZjqADOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A070FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754607593;
	bh=7W3VkB3mOXuckV10MZNpkrDpkO5v/6LfUqPOqXwcEgQ=;
	h=To:Subject:From:Date:From;
	b=eZjqADOAyVhsV25Gdk5ifhTFKZo4ia20QQ+JauXMWUOUcDB4v8tEqNnvpe2gn4hpN
	 IEvGsaRDo2y7pYvOAfz+217W2SDXTLav1Y2xk7/xdapGksUhVA5X9phPD7+uHKLHRd
	 J8CpGcvwQY7Cm80iKR55rTIGt0Lnbb02Z+B6TCkv5uGXX8p5M0dXarHDFdzKY5Kdip
	 CgPmDsAmnzhZucLzhOJuZRxFaMrqPCL93lh0ESoNHc6M364QbRrcl4ZVf5h84mz2Ti
	 pUyPYWkIo2kLODwPj3LKsvya221d/36qlxW/gS9RCr2dSOuCxWgYiAGIBqH100zyXr
	 QcGrn+KtQKP1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D04C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460759358.1942.17621817026683751986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb75296b687daac5c0c13e90b15d56b19985142e3de43514d511f8eb1663bb29
Date: Thu, 07 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754607593
