Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1422F2236F3
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755547194; cv=none; b=YpJ51w6gmUmHNPLmzhAMI4tm8B6O3CZQhOYRRFjrfGW8tPiBBWHANGEMr1IZPRCu46gu6gTriacK0IfHeM+RBe5lLntM2nas9OcMdCBd8RvY2S+zslKg7jnBf4mSdngUDuGWQp1Js9NaSYB21rEq4OCefSRCDsn4955rvB51WRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755547194; c=relaxed/simple;
	bh=8YN90fLIMHb5EksgdOwgYrdCOK2l0gdiRgjWE2iXdu0=;
	h=To:Subject:From:Message-Id:Date; b=a9W/s7g2qqvoyrYLuda7121jMjUx6P2WK2ZqVywf+lAdjvIKokry3AXImR4e5LP0U7mh/reqP9t2hr8GvPDEmIb4VH1pMmZljTgcc3Gnvhw142p+CGhyMzbigsLz3EOFrxz4rMvWp5daqEB+aAIO2a3ePKLBUbA+8SxuyfPpYMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxrfGN4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxrfGN4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D6DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755547193;
	bh=8YN90fLIMHb5EksgdOwgYrdCOK2l0gdiRgjWE2iXdu0=;
	h=To:Subject:From:Date:From;
	b=PxrfGN4YAAIQSQj/30eeF1es1lAGJEhxiNIlLmb7KvKjElXx7/VfSJEg/JaYyaduL
	 /foUgOHntpA+fPpngXPyPdhrBDkeFh1C92RuM/484ggH6eile7pUWCOf+unBhDTxiY
	 8XiIRFvuLo6DqptZ2Hh23nI7ubCC3hjgTscJyCifOqpTru6odJ/6VNxSGUAdEIsTmb
	 5cE8zRcHNVxdCPyw0lYVmSJJnIYQpcKMCsEL+pGiZPUn23G/WhWPqku7bOLu3sOcsu
	 ZupoL/USYX6FwVcqo6IyEu/26YdjjzeFh6Uizw96GYCOreiQGPCGpmz2+yz8s0KlBw
	 mpcPLoY2GEzzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F3CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554719359.9557.4322264010001908771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46603c4d09fe5c3be13e47361eb358cded20cc934a7068790ad1e328ab21ba65
Date: Mon, 18 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755547193
