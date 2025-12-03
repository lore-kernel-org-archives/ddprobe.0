Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B77536D50F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764720174; cv=none; b=FgeTvtVch3aNnzoeFVr4QR37HiZKIG0TvsfLoWZDy5nCD9muGaGzGPH/tBgZ6NP4MYDm+8yC462scWeP+hi5rCY8Mt0PDZkTxFgXZ+vL/FKo3r3EzA3xQwYXF8GgCL/iChDqBISdTLQ/dEav8kJnIq7ALUjIX0C+4EE44CW8Nns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764720174; c=relaxed/simple;
	bh=Zorx8LBrXFqEKVUZxzhlgqN13LK/R0ybxdLPyPSrlJA=;
	h=To:Subject:From:Message-Id:Date; b=DtStUB+pDRIQhXqP0pwaGuBOB0F7KqvjGPf+Htki22RC0q82s0uxNwzHZe68VxuvJlKfqMk84u6wLV0mwvtrRmGlN+CD1PReDDBGP+FBpjcn77yNVT/w02+HODekR4KTrzgnUpZyQkHb+PS3ldtjCLIOoByLMTYWZHb+Zj9GpYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHuXXHmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHuXXHmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A533BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764720173;
	bh=Zorx8LBrXFqEKVUZxzhlgqN13LK/R0ybxdLPyPSrlJA=;
	h=To:Subject:From:Date:From;
	b=YHuXXHmJz9+iUFzsU8+5VZEqYuy732XOsDwjm7gvsY40LKfxKA5szAeYEp+Jgbo47
	 aybVospqFOpWbBqTAiGv//nqVbF97A7QSTku4zuXMLBLf34PNhQTaRD/whXu83UKBJ
	 TtrngIK+T0u+hsGBB5wXCPI0AtbCCbmKZxVUwGTdvOQWl8AjrwtflOt8tr5wpNA150
	 aP+1ncRglIawXj9mHByHUtobF86AJ+XPou+nqjphPZb7RPWsKKGFGu8r8ExpqNZiqG
	 HoPpqcEKSJiHj34qZ4Ed8szB4v1KM+pzW02MiDpyA3Taz8WY1vLa+7Iwdp7h17GkkS
	 JFnUneHzbBlag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FFFD12688
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472017358.665.11340449392351821700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23aa4cac99a9c8931624c81057c95dd9e2c16b01da7ce4f5fe092df7cd8481b3
Date: Wed, 03 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764720173
