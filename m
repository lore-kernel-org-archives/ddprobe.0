Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7400038B
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713575423; cv=none; b=CjBolynXjo1Wcsp7Dw3UBLabetq6hrxn6nu+8EcYvDiCJWEi+SGyHQS91y29zuThIllUdHsEZtBVe9MMQvRTiI/rXnOPrK66SC8c72fNUrm63L/oLkW2wwgJvzomkfqaCVoZ/TfMZwSbpVoSkmaK9X0YIgnNIoAjt9qwFf+9a+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713575423; c=relaxed/simple;
	bh=dUpRAO2Qp802XMyMsavSDqpdWoDdOXXdKP596AuvXN8=;
	h=To:Subject:From:Message-Id:Date; b=M+l9wPwFugzn5XIIZmzcn0G5Vf+Sx3lNblFhR7IZ50HpomKRhkZLrcUFYG7lYl3wfL+/V7ZTqaemPAawXkMBBRFIGtJomEs9pTWMpd97AHG9VRm6yiOC15seN2SURmvTTeNI5QZ+/Uja1UAoeD4uCYcs1PrxCtvqY9C496+h2z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzuSl4Wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzuSl4Wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FA9C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713575422;
	bh=dUpRAO2Qp802XMyMsavSDqpdWoDdOXXdKP596AuvXN8=;
	h=To:Subject:From:Date:From;
	b=ZzuSl4WgZzPE2GiXVHHAorDyw7YHcV9beT8MRAL7+ZurWmIsxVx4bPLmzwkdhLRf+
	 KIHMnHWZA55OQGe4hYzPbKi55bJDuX/Oy+v+NUynfTdVo6NiGO3Fu5etIudAY+AgqR
	 mQGiw8xwS2qCC5FwqiuWvUvy5jQm9sp1lZ7tdzK76DDYz2KYGwpFAbEx9CGt+eTTMM
	 T04dcJP7psuwXu33Dk6O5ICQXQUYzN4YwauHbeFEM4aQ+FMG23wESJYh203iaO019D
	 XjvCB9UhJOBo4B6e7zUCrheBQJUgmp5B0g2gDtVp12fzZVwYQms4jn4JfBjQhwgBEh
	 1FwR/d8oj2swA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD48C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357542275.5478.9441069564583124736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4400b1397fb93f9221aa0fa2db11bef3a38e12febc3b41716d09e4ab0b38be
Date: Sat, 20 Apr 2024 01:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713575422
