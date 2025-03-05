Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D3E242911
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741177734; cv=none; b=Qzm5MGBOTx9BOXLnm080lt0kL+BOHu8VhmTYP52XDATRcKv7QAWBL4ovGuOr43nKpCtj5+ODDIUyXyf3Y3bxpMbaApDVSdh+vXaiC2+fuq0kkYYisaHye+gmXQXblQSCzJoMjDRgw7R+vPzxgRFiYppUKvMumCLp5A4pEycxJ4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741177734; c=relaxed/simple;
	bh=F4+iKjT0don3MQe9AcmyYWx6fC3f3YutI5U1FFEdWqE=;
	h=To:Subject:From:Message-Id:Date; b=sxE57uxFUCdYvEOZlfNptGNtcoLNhiDhXgPf+nDZZmeIVHtrBvpY7vef0m/J3WiecvbpgSkqyNx0BtNAOksbeeYcFazAPg/0Dru0bxvunzBq1+2Wdb6Kr7pTcL84EP+uGlpPQgWHBgFvh+7T5lipYch+KTM7T4MyuMpByab9bL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0zjYXLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0zjYXLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F32C4CEEA
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741177733;
	bh=F4+iKjT0don3MQe9AcmyYWx6fC3f3YutI5U1FFEdWqE=;
	h=To:Subject:From:Date:From;
	b=e0zjYXLMfAIilqq6M+acDAGPxV3Um12s0IDCyaHKfEwhlPPsYvGXHtlDjI++b424c
	 CLWm1xurJM3zzyykwLtkd39QGRAW5WFSUH9wcv4ksI29N9JabvprIWEyiaLHmVjbZ4
	 3JZTLEAZTE6MYRaqwyR4yKrqQU9oCNgPB/5Vng65QNSaNeUsmJW4NWT5MbYyGSU5ip
	 fNSyd6wWvDi6/biROJ5gV2DGTa0t7a0kOtZ1ftHJo4AUQGw69JK7IhkWx0AWX4yZD+
	 iSvphKRGuUD8JKq45fGU3YjVwkDZpSyz3nG+OnPebrf7LKqqYrE+/lbYNrUXxlaXj1
	 EMEy1Fspx5www==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1012C282E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117773364.1652.11757564565128132865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fae2ecc7908f4270c3926f98f3fdd960ebcfcf5f578b745a9b28583bd3bae7a
Date: Wed, 05 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741177733
