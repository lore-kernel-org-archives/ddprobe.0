Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71E135963
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747097393; cv=none; b=RTbigRidew71IWwkEwuLQtk/2WcV35K7r8H5oFWmFkh0yNQxLwlBw5q1PZLn581T7fsttrzop/jbzMRIiulTg0nBBDDjgHbQvt9xlZVQD4zinGGjt9AklQQvdx3Sc87t4Nnlg59vJ1uIbd21ExmPI/KMBOlLz6zMA+YL7e0aQ+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747097393; c=relaxed/simple;
	bh=iYbtSelh13x484tAsFcg9r0xWnGbZ8JzWdnOMEiliWk=;
	h=To:Subject:From:Message-Id:Date; b=S8ACI9/ts83ijb1scNe8Da1E1o/Qmq8sPYs+0YQei+OJjG68ZWYozLDEYE2fv4jtPqJvPlyzd0TK5QE3Fnbaftf6bmQaUUptEu74ypWJn6z8TgnNnj/Fqttv1jKcvBMWlCpeDFoBsUjBafS98hjrxRmPluY3KL4wNKMBVQQ6t2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emhxpqAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emhxpqAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1932C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747097393;
	bh=iYbtSelh13x484tAsFcg9r0xWnGbZ8JzWdnOMEiliWk=;
	h=To:Subject:From:Date:From;
	b=emhxpqAO9DCBY3rBcpHeJwYGiCeHNBPh7g8NnXuCWwTf2mQDVe6EjVjYZC+4DKJdo
	 ctfo8yUvJTJI83qs0XLSLjJd/ZQjTpaY5X5Nn25/vZ6UqHqfZTak7bWhS7aR5Q0nov
	 caDBywUzDj+QqOCauLoRrjf/r5p/Z5BJRI5QuJGDbpXq003AAe3XPmzHTEXm8iOMun
	 8d3WaTIYlsK8Dm/nMNm0baL2lVLUVabS9z5GlrdNIqIODaOdih40QmGm8XfyPF2jT0
	 Mv9w7yd1Hgb/oqMtoWibJkU/qLcKPdMg/GR1FeoD+TLx/Yku7f/BZNxFDrxuEJGgub
	 +Y3ni4j2E18cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054BC3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709739358.9576.13836038115930939782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29105c2b0fa7f05829659f0c84546a9a7297c3cf48a2e5aa5ca0b83ae9dca4c8
Date: Tue, 13 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747097393
