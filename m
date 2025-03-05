Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656F5A95C
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741196934; cv=none; b=hapjtCQGpSZfufjSgJiDQxd8BWrS/Hm6BQEOisMN9PCwiqNIxfGlORGSjMD0A81N9Ea+kOoC0SdtDIdFfYHt9o4upQVZCaI1MnPZlguQwmASHN2mIiGEWB+IfVBAqjr9wdnpP/Paktul50I0uoeVvyVCyxlgFTYvFd4dx0u6Zkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741196934; c=relaxed/simple;
	bh=e6N860SpU4CSeOZ70DDCkzyfEQXBL8Wj17QDPWJQs7k=;
	h=To:Subject:From:Message-Id:Date; b=U+NPAjYfzvHfbvtkDtD5pIvRl7Q8nCyuASTdWISTWbR0+IE32MugC1kiyDsharW8cHSqhIB67zG3GCzsDK9/MYdeYXLza9L/C662VFvJQMTH0VZ29TgKli5lPGj4jVgjtlDClz6P6ZwxHZh9WdLvAvl3eWEuU7fDkKlmTAPKnIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkABUN/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkABUN/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6214C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741196933;
	bh=e6N860SpU4CSeOZ70DDCkzyfEQXBL8Wj17QDPWJQs7k=;
	h=To:Subject:From:Date:From;
	b=PkABUN/KuQ3zS544B8fW3JLgTij//KrYlCvWeG/2kNetySYQgKxFUX0VjQKjXtRdd
	 Zd8WVHPivvUiLlsfM7fVqdANX7sEUfnJ+Z5714NK7VYws3O6jFd3nlnNQtSMrpsqGE
	 6qAc0w7CA4V7hptCdQHBJSzs2YPDEzz5zzvlkWYn2FwM9yJCNYbHXely11KwCSnC1x
	 wcUICh+rL9SukKraGxJiMnHwWGvwribir1gE6TDA5/GrAEN0nKYqJpPWd6sNBAX4eP
	 V84eh0lm1JwElF/DJEfMSYvJ0IAjn1kzRGIQawpj/XHOTSBTcINEv9ZfAP9aUvQKj7
	 9I0CxWfuy5xlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CE5C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119693371.6356.15970910337596917601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82f76135da745026b1f8a9f5e0b1a8b50f85179ee1a11f398f7442299fc31c0
Date: Wed, 05 Mar 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741196933
