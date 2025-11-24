Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ADC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764027174; cv=none; b=NY5FYO0ooiOCi1JEwggv4fd79EuQf9BT8n8xJfeC+00QctdUqGIe6qwlBmAT7tRP9f4XVwk2wf2grw9jXuGeWHdQGqdV4L436E6thF7X6BCJxXEEhBaUHGlOoIPqeotlE1vcVrKIgxQ+wG+S6YKgCCunxq2Xz9NJLHL1by107Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764027174; c=relaxed/simple;
	bh=NsBdibpW5YWc4vChouW5abGCPmkTve9XI42CKgmJnAs=;
	h=To:Subject:From:Message-Id:Date; b=fTMxdcwNjceJFu2TlW5YM8vZI9ndAIGx13I1AfjmmRukDS4m9UOt+KKTZoaGvC2egXYL9MkIp1BwY3ZR00Dg6kUcezAlS0ise1CtL8lPSpNlthmXIkGmC1jWw/9ELay+1KMovrg3NxgS53/6t60Q83EhnNtBLOcOStUKuopalbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbPZvSII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbPZvSII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE51EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764027173;
	bh=NsBdibpW5YWc4vChouW5abGCPmkTve9XI42CKgmJnAs=;
	h=To:Subject:From:Date:From;
	b=UbPZvSIIHj1IJlAhoVsc83ffUHkEAO2lf97vPqFduY0joxHOEEIeWEHiBXkShIIAn
	 iEc1t0giQFaN5HO7epFr7ws/ZNW7NmKUtz/HugY/4XSuypar/fzRNVoUp/s9L4H/K2
	 qu1sPWslb2ubFXxxBoaCWR//+VSM1FnyX2ugA1ObSUaXqk+lDtN6T5YiAGTJMmTU9K
	 VWn9H63YzRWu2qIzaLokeY2j4JDgA+uIPC9nhmL0+08s8NJuwztaxZZmv5VXGRMveC
	 qhQpLdNMP9hrHen2PG1XAPeoQEtvuF4QbUv1v0iuCqBXyXESbwB2lLuXwyNSeImzA+
	 cFhG1ZlubeFvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96184CFD365
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402717360.14504.12524867063606474561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b724f92fa0b63f8931421d857990378dcc4631a84dfab9f1e4c7034b058c43d6
Date: Mon, 24 Nov 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764027173
