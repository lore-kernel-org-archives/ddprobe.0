Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE6F1A316E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779241834; cv=none; b=KXrOHNZdM7M4ocCn4D22Pgvb/2p8GanV2T5LUIb44MQjGZoMfniWim//pgpWSbuHjIr6YL6HMM4/pSAMnz75zS+F8tTu2Ns/H7qsnN03EdH2T3pcDg9eup2CX+cSVDnt/qwSqL7D0OMARv6aD0DK97EbvlgS9kSSN63R/+zn8ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779241834; c=relaxed/simple;
	bh=caQVqELwMpj5zFgPf/a7O1cO/iTfgBD5/KspDUV3Roo=;
	h=To:Subject:From:Message-Id:Date; b=PSL6cyQthQGh5s5v7ckNdL6fV25Db7YxpVUC9N7tSLHajBpVRZ/q+GQje52+gQe5arAwZ57tM4zFP2PuD+SDOMrYgEMSSkXiYOxcchC+cDROfTTF1dqfCzLVihTC7JumsAviWoehjoknPmZm94uAsEAHJqXivlIq9oIdnDSPbbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ7NITAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ7NITAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2463C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779241833;
	bh=caQVqELwMpj5zFgPf/a7O1cO/iTfgBD5/KspDUV3Roo=;
	h=To:Subject:From:Date:From;
	b=nJ7NITAC9OlsrorPDt8V+hXb2eLa/GjzJ9tCYha2ttWS2/XG2lw6qydNZjOGX3jGQ
	 8grAVqzyTYNVSFqfXCPZpSibgKoCTQEfxFLqQ0xbA7n32MnEdOOU5QNRosZL/cl7PZ
	 HLKeq5MKaHqbFNt4wksHDhgwlIcXaIpIJr3Q6RJOgVi7yT9NY1K6n7XLUmldYg1GUh
	 lN/GYEWEdxvnM/T7+n9/lJ8TljRGuJBZe34ezWMnRRu9Gu/bOakBc2R30wyiDqscEJ
	 6SXdExunIZO7nOYAE4GSut597cTCJCrf5TJVtCVxi8NkIS7RY3qF7ewXFzbD+iOB0B
	 dGQhLA6AEFeaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF0CD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924183368.533.8061580268775038305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdf77c57305908eb17c6588eb77b2f018ea8b4cde86963ca60b536d4d4293f3
Date: Wed, 20 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779241833
