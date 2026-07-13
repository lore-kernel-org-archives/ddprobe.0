Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4297A31F9B7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783910314; cv=none; b=WLtgDov9BwJDYfZN4fhatfcPApJh686XZn6+BMGdWCRoqPHdZ48HzYm1cBeB0lkYtY8pbwvxbXGchKem/6cjIbZylLw7jQGPlNod1FiqmwI6qEcRP+6biS6eVPiI0nT6m63CBKlFD2b5qq0fkD9LJPjmPT3QKPM0P1Wmbo3MtGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783910314; c=relaxed/simple;
	bh=GtnZ9W4S5gFAsSpcG8W6zptoztupPUgIS+yj8xEpssM=;
	h=To:Subject:From:Message-Id:Date; b=X4BTRLGVgVudjRvdKwA4eYnYjRmQZExZIekNtr0FZFealDwqCmZxYInRPfCJvNn1B/5Jvsiw3MRs6r+kodFz/WxYzIk7g7smRE3VXh0pxeLBGRSVSXXLFh4chDj2oqcz/oVJEUHthrklTyVHk60tdKy/KOQsLL8Ifojw6+vCxkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKjH48BJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKjH48BJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5A6C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783910313;
	bh=GtnZ9W4S5gFAsSpcG8W6zptoztupPUgIS+yj8xEpssM=;
	h=To:Subject:From:Date:From;
	b=tKjH48BJyODTqy6MabOS4PS/xVroHgn+X931gzswKEuHgSunkfunOPt+6BKaj9OEs
	 EWbPxWlw/DJE6oFKRLsL3PXXEZ+1zziTSQJaMOtxed0KXg1NWSlMVH513U7WfYwSns
	 orl36p4IXQ840JZ677/FhVje59/Wjm8hlWDe/z4kxfjqwVSbYUYAuqmqYbLX+gqmbu
	 ri+PQi8Q5qSAq/3vgRLq6Jmv3ZlvPzPFHE+QUOM0sQuCmxACdRJPVyi7KWk42WUV/e
	 vocf94D1Zzoytbc5+TCnjVbN73JRO79StSCcFmBWOLxwrrOwqFk61pLsh63xx+kSMZ
	 qqW27/GlSyPrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8464C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391031368.2591.15057425503694015103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9cd50866c6f72c6cd9fe6de5a3e2cdc4a86ba00399f812f0f010b0c0cd6e7eb
Date: Mon, 13 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783910313
