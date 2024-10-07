Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3840718A6DC
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728338754; cv=none; b=aXCizj5YdciLhE9HTXcEi4L9jZ2yhYsLe7wiczbLeGhY1fHUyiWcLiyoOc34bYfD6dTBs48UV4t40PT3r0B0vf1qvrWYlErnjvNZfl5QGuVmI+erIO+HLuuiRSOQ67UkokPlUDVUR4ZIFoui3mI7g3qra7NK8H9QebjgWz3yG5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728338754; c=relaxed/simple;
	bh=BwM+bzmivIDDfrH01joq0yIjgNQFci84G7ynEEpglHc=;
	h=To:Subject:From:Message-Id:Date; b=IPMCAOwoPQphKZitJVKNNPUVqywa3Mrx8yHdbkwtj633P5190qa8goBJbTcV0dSvdXxLJz4PAvaQPD3s3x8fGt1dqhFf9Dbt2bfTcuDzK9M8iPKP5o2fkPGWLAR93QnctlGXY7fZkGCX2XnLMYdvSEyzimamk/TTMldhPxYB6TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUA9cl1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUA9cl1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C4FC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728338753;
	bh=BwM+bzmivIDDfrH01joq0yIjgNQFci84G7ynEEpglHc=;
	h=To:Subject:From:Date:From;
	b=hUA9cl1n4JgA9q2z+p6LKIoMyx1SSQf6u2LdmMgWs2jyODpl4Ch+ocoGvSqGe6pu4
	 biEn8QtuGPbsPaTodN6wzZqTwyZnpyqO0UV3trcvR2fMr6GgrDpdaBdyUa2+GJIv9+
	 bv/cpcungdpR4MgaQ/m+wCRGn084HLuZAt3oUD5d6DGhyDcwvoadgGfhdh+xBzfyF1
	 04dSMuG4053e5C6/IDIAId0Cdd2391DP6+wzL5VYO42S+Sg1OjMVPKkrAA+7go/3UC
	 vFT/RSqxzuuf3Cu654ywPWfSUT7OVqvgXRfqmQPUONffWRSNn07Ygql+0r6Ak6zvr+
	 u93xv1ELWzWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93650CED245
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833875359.15086.18238926186113107042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99300a9b5e2218fc6c3882659e4b1fbe7c4711f096d19a9b2168c69b9c1fd0d4
Date: Mon, 07 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728338753
