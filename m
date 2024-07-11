Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476361A072B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720735643; cv=none; b=neY3oZDQFBEXYrdRK+4/+oGSN6LkbOlOP7ilqRAxrIrjKHF1K0Y33Kbll1GmC6Dg2Po0hJZ27zZPIIFMCEU2eSaJwKAG8EFQZUVWVN9ssGLr08FvsRcmYt7/mwPKiqZ6ubzv7gUqBgUtcV5sZVuJ0XE/P7/23JWm+8Hwlpq2oQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720735643; c=relaxed/simple;
	bh=guqOSAe7bdWIkGMp8OWLKIFmdEQRtLDauVL33fhqhVM=;
	h=To:Subject:From:Message-Id:Date; b=HJfcE0FjNTRa28iLoMWY+sIY/Mge4Jl9HIVUilIw663cxvC7zNxw43KXVU9qAyNqhDFaTf8XecT/ZfigiIMWqQcfdvs9Pk+yfgSRJA7EgriV3fqZM6HIB8q76m4TwK3CmH2GLmLYdnGNTaJm28TSVyKcZiH2UpA27l2F4KAgtV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuWQH5cG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuWQH5cG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC68C32782
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720735642;
	bh=guqOSAe7bdWIkGMp8OWLKIFmdEQRtLDauVL33fhqhVM=;
	h=To:Subject:From:Date:From;
	b=DuWQH5cG0i+gLSCFAngnAnoNpAEGo4dxnY83gH7FW8hEXZ5Q59xjZ+iHtGb3VZNwh
	 jNEqzb3HxYXc210gDW2Uqv4X2s1GqA6aZ5u6N7ekSiPH+wV4HXdwSrNYLOLtbO5qXm
	 KGewptHy3BYLrb0cWt7WDqpBVVE/zFLodlpYiY4KW+6ZhHZNki0TrwAOCcTvQlQ9Nu
	 sgRDkBXCpqDRjPW/+VKXQqwFN71DymMnkgmr2IRyvlCSo9rcrDCToShh2XUtvQCOQR
	 JBpVNTfUZF2yGz61cU4NGKuJ0PxKRCG1ubdDQ5p1CZCms30ZZ8zsc0yqPTozbKj+as
	 1bTU/68sktUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24A7C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073564278.22768.8971451739841015420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690bfb8dfc1747a5ef505472c73f43819489e3147ec0389fa9ef17e226976400
Date: Thu, 11 Jul 2024 22:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720735642
