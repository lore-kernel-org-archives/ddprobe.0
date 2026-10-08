Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F892BEC52
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791475834; cv=none; b=L44eCl7I9IkjoCMm7QEnGQ+ofJqnBotAzpvZ+yjrVtxaA8ZwxcXv5ZhNvYICjUWFHAjsUMMGFIoM+AMMRjGc6Cq8FN7a67WXlo5eB+4Cg7s/heA5RdcMttISZQQ6fjZK13/gT7/UCHliydc6BUQHTWjlLKNQivdptFD88z6FB7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791475834; c=relaxed/simple;
	bh=fNSa69Kvb6DMbaaKMG2MPCrmpT8DZu2R2qBLVvbV1aY=;
	h=To:Subject:From:Message-Id:Date; b=e6zqtTx1Tx6SHE9g2HtKZkI5T7ThADH7JZaluTjdeLXlLd+det5Ge419e9Wm7yI/z1zbVEECkr4+kz4Y3DKfWkJQY2jC4Hs1gbd/M2pbvnsPF+U9Hxx272rkesasVVaOaoHL+ukF3jCaKsAGBEF+4H9moyOVpFf+yz2Md1YG5Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgYRt+wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgYRt+wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1095C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791475833;
	bh=fNSa69Kvb6DMbaaKMG2MPCrmpT8DZu2R2qBLVvbV1aY=;
	h=To:Subject:From:Date:From;
	b=EgYRt+wxULI/p6ZINIBToNh1ih+WP0eu+aqYrGy+BCDfbgbqMtS4XEYVOS9PjZ7ch
	 OFBXXoPZfSySFad61mIBA/lHQQy9w9VUQ0llxk52H+Oug0DNGccCyfFXXF3YQCPj0w
	 YAiTEbYQiJfEpdJ2yGZaahYG2SGykCohrjftc/+WHiBoB0CiCdK8C6pwIJaVaB4dJZ
	 ufnMpTvvlbzGVD1iwxEBy+6LoYz6qQ5ASnI5dhHj95YSHV3KrhhDqaviU9knD8xorx
	 7LNjPPDpJJjJRn309LvW3AsUUNPt7riFNELSDQIrGWWzk4Cxy/ChqFrDjrpin5HNu5
	 Y8vOzyLwjq2Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA23FCA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147583368.14730.11834017976282269959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d472251564559abc28ba846f383dae95388f6b3d4fa94242de1e54763dfe91
Date: Thu, 08 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791475833
