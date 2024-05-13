Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF127BB12
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715630543; cv=none; b=JQdK90YT9SUP+8LaKglGGjfHmjcPwZxbHDCyseZak0pIoPU0NMLFuaZqgCrHguz3zE8iPqspw6829ZNmmplfbKRNXqBWxzU0hgTLol7/YCCF9vStdKRE48qsBNU+C0kWus29SvYp1EcjLpKCyIMnk+6qhD30/DtahtFniZ4hNk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715630543; c=relaxed/simple;
	bh=a0jOVik3LhnHzkNSeTv9CczGD36grH7wLfzLvYjQWR0=;
	h=To:Subject:From:Message-Id:Date; b=loc6f5CjjHiZNY3Ve4C3Jhq5w79nnxegvPl5wEGgOBdGPO+4QZeGIS/HcViPBipcZMKVhilbGG28RTj2mERURY1K6fpZ1WcoN+Bh6BlNvE3/Ha0XZBxh4jnQARu9zDoWPjiHRdd8l5tp0qSKgps4XqxTuJAj9AHLDJHYkA6rqtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpOpyoef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpOpyoef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A5EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715630542;
	bh=a0jOVik3LhnHzkNSeTv9CczGD36grH7wLfzLvYjQWR0=;
	h=To:Subject:From:Date:From;
	b=HpOpyoef9dg/4SPeOqWe71SP+8nIPiRhJr7FV66apWvsTgBdHB4P3FduQ4vjYrCBt
	 nSWYjv3NdaplYy8GxCh/gzdXIXAvGwsQS7p7NFY7zpyieuSUxvy12zNM4cqHF1xYUA
	 jqK3aoshbR7WE8X356mwlyGT6eKKaCZCZXch3pooNQaH0uhheg4R35lHIt9oYc54QL
	 pdSPrFXR9NgMoPpkds5EdQW3cHgV9kc0wzUO/hC6Xbgfb97gdqDXuYGRPlj8FPP1l5
	 EIZVN1qDE+z1FO5wL4mk/bla9MIuzOPL9S09tcvcers99j6udgg+Dp0dx2Cq8Yv0n+
	 J5GYr+2pPTpXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CA7C25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563054277.29135.11269790660213952299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25a822427b062925347c080803dd34ea8a942ed3210fcfe5cef6f0612a2fc51
Date: Mon, 13 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715630542
