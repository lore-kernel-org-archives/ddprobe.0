Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FE218FDA5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750995594; cv=none; b=UHkWjH5tR13QEgFCctkTu9yoi93Vz9gtjQUYqLiLQBIzM9xadvAVdPfdrk316Vfp6CVC05t0jiHsC+p3ZQ7ITEakGtEp+6HsmulrAhm8bOv0fx1DP24R/LRfau3ASKnWgKp3GBLycX87DtXOKwrkBdCGuNFT19R0L1reyZwJaRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750995594; c=relaxed/simple;
	bh=dEGtKnmtsSvCSuGAf6Sa/siywN1LLmowMkNJrES9OfQ=;
	h=To:Subject:From:Message-Id:Date; b=hzii78JwrObU1NKJ9AXVygcI7/k2nPVILL1Gju358T5W+tEiTZFhruuAJa28mPSRD3qLSToPrrbockTecmMshYgSRjAMl71fPsO3eQlrkU4GCSBpp/t7rlWetT3apCa44KQaBMl81+9za+m8oo3CXXBpELMFIXlc6qKFD7q/ha0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/UVrEEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/UVrEEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71DFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750995593;
	bh=dEGtKnmtsSvCSuGAf6Sa/siywN1LLmowMkNJrES9OfQ=;
	h=To:Subject:From:Date:From;
	b=q/UVrEEOWv5zuku0Fn8QAdIOQ1FA9Hf3MGQP4M1A5qDM3v6pB1KUglHvE9aDE7fcc
	 gR6vjoDl5etB418mLAxueC/tQFUqQTcwLKkpznSbScCXQm0ROHyA/xwJlJ46/y3elE
	 7IcOQ/o3GErVzZ21rVtrCTIjVCL4YJ2D27z/AqZJDdWeRbBLj59+tGWHiNso5/hIO8
	 iU8QhM87CchgG3sGfqKJu6H15JO5zISoFdUIE70s1u2dsnYDJFjYnzistAd48YxNPh
	 7798LkexsXgpPKQswAQOC2dmYguZlAtwWv0CKFWwC8sarsCgmT8Rk0sPYZ/373gbkz
	 +XWS36gpBL23Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEBC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099559358.2543.12415603445510168296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3313eae2f46b6937e7e21cbf5aeefdcc83994dad9117de1a967f3d1c5c084b
Date: Fri, 27 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750995593
