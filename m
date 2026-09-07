Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C653F6615
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788810634; cv=none; b=neBcR4n1ZEBbUFhu6qzBw1xcXm6ZkBCa5H4SAkMsmFZHCH9ZQ2VYP6mnp5tfCBl285k9fYq6SjPu9Ghv7bw5zcJUauUOdNJG2QI5/4xzV5KL1WXhgj8a0mvcPX8r2ZSnVjWQKaTc5hds1GXMo5pmM5uDhOfZ94emVpNtiYpNFuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788810634; c=relaxed/simple;
	bh=5Xe48ysZVjR5cS6YQFdxGrbCO6UAsvO6ISqGxqJevtw=;
	h=To:Subject:From:Message-Id:Date; b=FJj5GazF9o1R1+EBAbAWwjQLaHjznA/N606oYXGCxAzIT7kcKKzmF19NcRS8xoIPB8RK06tJ8TzHL3Iwp7+7IZNdzCSycMoBpI3sBOIMOrVlScHGZC7D0V6EYHOgUtBMNnSCH9ahbnp/qkYccihhG51yYVylketei62K8OkJWI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+Nfesbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+Nfesbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26BCC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788810633;
	bh=5Xe48ysZVjR5cS6YQFdxGrbCO6UAsvO6ISqGxqJevtw=;
	h=To:Subject:From:Date:From;
	b=N+NfesbcuUmDE08OE8p9dD9cAUPGKt40uY8T14oROv1hJ/mnA/mYWH0224oeGdvS1
	 huFWCwrRlMeILV2iw+gqoKRybraw0RUuOT/APH0GpkmV8yJk1YxiAeF1c2e6qhcDuN
	 /9J/OBtFhcB/RBY0zXcSZatdMpgwx/s7gCmnXRL5DPm3a94L6k14+W4qu6pwy+AFg2
	 9nwkltI5gHQFt0drTRdQE0mlRaYDWy6wxE0ilPvg5VS8Awgnkn8NwDbEimCxT0emd1
	 p8c0piUuM6SOMn6sit4knLc9A7Ev+sj7nuOhbQ3yQ9NYzshsiJO0BxHmdLMDcR/VKT
	 VJywXRp6eBd6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE12C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881063370.13145.9916814474739762311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee11ab3145ec6f22458033cb8c198ad212d07424eb4e07314169388d7860488
Date: Mon, 07 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788810633
