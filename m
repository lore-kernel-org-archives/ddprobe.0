Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241EE193077
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755973194; cv=none; b=lJZOhRb40p0K5/u/wbIlE9yJp+Eda+0/IC0b60SL10BnVV0xyVTpLKFYphqRqcmYI2xGB7x7RQmL0z04l2lQLk7YbrT9INXjt4NTO7GQwLlgxsJTkYxs3J1aiDau50fqTN9xl9HT9jiSvPOnrr7Fk6J5ORKfEOMYjxgnBhGOeiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755973194; c=relaxed/simple;
	bh=pIhxpjVxa93rlNHoPtoApduRRyc1YYn4XRynvfK9fY4=;
	h=To:Subject:From:Message-Id:Date; b=Ha/Zy5Kcfs6Ya4NLgvW/a1PiNbkSMOSU5uv24vod+CYwRQb5WduPUq07SoymDUV52/k2ZQSisQXeZW5psZLnDy4RQZUwHTST6kKCNBi0O57E7G3xltMMwAyDs37gavqgsWbj8Bzgrq64dNwJ2meaBVSqQzi0UkHi0rygdmmO8l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VD82NG4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VD82NG4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55C6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755973193;
	bh=pIhxpjVxa93rlNHoPtoApduRRyc1YYn4XRynvfK9fY4=;
	h=To:Subject:From:Date:From;
	b=VD82NG4YjSQmPZMh9sdGjWgPieaf4NhBASMsVPtOhuSu/vxsTKXx5wbtJRrFq8IPk
	 prJk+b/vgBYtLtCELqlrlVgERUO/mVQlV/dUBLUMHnwp44sgf46KF62w7URC1eVtC3
	 VvgFjO1KfnqzjC1oB+Xt8ttxrwnrzPLpuqY3SnF2pWC2rOpQBtQysmjzpqBOOd+vpe
	 ZrRmQa6tCsNKt4LWbn2P6rIAW0fR5C1BFPBy8oeR98k6Vw+nhZYvWjSh1KVFPrVZUp
	 VBpPx02ScEYmX6qjqE3gU+rqdglZau2N+HPxoDLjXDdQri/iKYcDAgUA5uj2YOJAiT
	 DFDdKhxafvSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92160CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597319357.10455.3913404154748056713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef14ecbeffaa63ee92d05ef4c15db24e0ddbce2fdef264eb5836c5bd996e19b
Date: Sat, 23 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755973193
