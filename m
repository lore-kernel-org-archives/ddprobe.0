Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3786F5258
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736054754; cv=none; b=TRw3vUKKlQzvsVofV3OOFsHo0NpgVQiypmV9MwrLfQm3VviSNrE4360oaEocUWE217wsVERd341Vc5QD0gncXa98PsvRUVyBNNYcp+PHxu6bXYtPhnnulpGk3cgj7k7ZIgC+mGIJ3bHsyWq6hFT/Kq6EFjn9jb/yTlAJ6vYhg4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736054754; c=relaxed/simple;
	bh=y0rlQu2s3orYlzL2HWkuJObjlSc/qljhdocb6+dIe4Q=;
	h=To:Subject:From:Message-Id:Date; b=VZqMiuso6Qa86gQaVWcra8t1NVXzFxbl2beq3v0eWaPBq0Qzxh+qUPQdbjg8n6l4XKdGP+DyH4tqQLE/2fnRu2I+NCIe9swDewPARmSRveqr+Z24EaFHwfjO1NM4hZN+86SSrv04NhPnAQX2p5XV/gGUj4gwJZojgACZ99UFpL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgEzQLen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgEzQLen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B978DC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736054753;
	bh=y0rlQu2s3orYlzL2HWkuJObjlSc/qljhdocb6+dIe4Q=;
	h=To:Subject:From:Date:From;
	b=DgEzQLenwlzZfkF2VUt2L+dprsmTclq7JBmZcoMt74l0NtnF79M/t1CGE8RkJJvUq
	 nor4Zgu+udoTD8gdkT2s+cRV9qIa9QMdLYdocgB1JzLCm1pN3wxwh7B6jaqDCyF6zZ
	 1fyIB5iRR0Aaq3+FlINW3R4k49ezJOmxI1gPDw10t2VisAAE4Ez+F7MPIC1G7nuRq4
	 XmEEOiVwb8QeguTTQHYY4lSLwPKrI+dxAk4TY+zK+w5SasWGvz6MSFJiMQb9Ty3eVs
	 4JNXsAFIN8QGPea9Ww+ZXzzPiDP2f4CoKawcdW4BqEM5tz5CPpyIbRL9JpTbfKEG5s
	 srN1sckLRPEjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46D8E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605475363.31675.5027584005280006512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b17645d5b40674d46d62f70be6544b748302fe6e00e905d3ac37e4b3240a6d4
Date: Sun, 05 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736054753
