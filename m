Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EE132549E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769138636; cv=none; b=FkhF1cx4crSxWy3vrQEmtOz5BD2N9kgwfft7C0Vhjf74CBsmirLh1NSpm79iXBuPVC7/tLkArNaZvY9YzcWW2ms8iu3jOJ0Y7cidixvJwTXv2JANbAjoq+MJ+EI/QFTkPaVUC8IV2iKJl9T5tYdvsJ53r2cUvxcZAYIJABMEBQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769138636; c=relaxed/simple;
	bh=PJXz6UL8yWHP0jqrsP6MG9ptkp/lvtIbuLrFRneBo/o=;
	h=To:Subject:From:Message-Id:Date; b=JX1n//iXijBNS/h70vjGtY0jLkWNxh/Tf6ZxykxMf+VpS11ch2hdNMoikKe5YG6ro+aBAziH4Jz7h2WfZ8PNQxMNJEwLtyBr2MzNzRfvNKQh0Me3QhpPECneMs2qyQx8SgOZGkiAe1B2nVk1AIWnC84m1M+CVlEiLA0J+d+pYrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aK1WqCCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK1WqCCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1663C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769138633;
	bh=PJXz6UL8yWHP0jqrsP6MG9ptkp/lvtIbuLrFRneBo/o=;
	h=To:Subject:From:Date:From;
	b=aK1WqCCjXHc4edqP8xqoRALmKneyIOVb0XacZHsTHhz+R3L3+RrseEJgjZYUPKsGR
	 WP6J9nArCZfZuP6N/hyrovizeDIkyqQKZe5H8j6CtnuxV2HKiWnXJWKfZUtcNLR1gT
	 s+/57AI2QYHISmq+jz3Y6TdkZ8bqpQzIe8MS/KMAd9UrrmN1b7lK9MHpSL4IYG2WQD
	 wc4JwaaIz4kQCqahD2mTPBud/vKv52iwbAxtjjPe8hmDbxNwBeut+sKf0ZgNQ95icQ
	 g//3UvAjVh9uBp4xDPQlEZtWpMX5hTSNZWc5D7haELQha4DrIMohbBk/pujrify+Nh
	 YnXeIP+TI8pgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE37D6CFBB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913863358.32109.6907283042593843422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cee386a698263a4f49bb8d290b6d6e256d4bbe2ee683c62645cadacd895385
Date: Fri, 23 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769138633
