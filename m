Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8544B1E60
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746713394; cv=none; b=RA/oPn7yVXt+1usvEo8W5MPz7ysSH827MUBTzo/aB6FUPe14WeFHGTFz1napw59X3qEWMW8kTfE8zWVtG5kvnBucupldP9kK3IGmrHyokmQUilT3/H3/gnVwxzUW9stLBLfvAmgsNnJumOhXqePihciQb+B3AAXq7K3ca3UXG4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746713394; c=relaxed/simple;
	bh=V6ErFPuVDoUAXsu53EuByZW/KKMiSQrwoG2Lr5EwEJ0=;
	h=To:Subject:From:Message-Id:Date; b=H5x/nFZR6nCdQadyq78pNvHhRlmCxMZczHzVW3ecqhmlbeUb54VQOFqNbpFKdUV6dZnL1b4Vj30aPxLi9LZQdeGbevduINEtxQbUA5UxyuA/iyWWEmZjleABHMWHISt8+TjRBBlVyTCp9rd/b3qODvExH1mWS0BKNVQ2WvqMiF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwXUseNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwXUseNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D52C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746713393;
	bh=V6ErFPuVDoUAXsu53EuByZW/KKMiSQrwoG2Lr5EwEJ0=;
	h=To:Subject:From:Date:From;
	b=CwXUseNShbTUi/NPHmb+ESKf9qmpG9qZOKeU/tsxUU3lReZWmJ+1G7RMm5TwW30YW
	 Ciot1KApe8AUiTR5YPpkzX3UjPOy6SGLaExlZyxA9RfhsjJioxmWHiD8v4ruGX6hz0
	 Yi1AgQncN9iyMPcilon6hAvF4iFQ9weGfvblwn84nfw+pZjJhsARlSiH29WTp4u8sV
	 g6FcSpX7hBjO0DWO9Sbcq/yV2GZ+QTRTZhGMVsmEP+TI7MAD9EPbKM3C1MbwxpAp5j
	 Tr8jnvYafcAub1PO90mjyiWDsiSYQrk4NQ3397UGOoqogxjfXdvYSDKiN8/BtVRdOz
	 paViKVfKyZTSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D0C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671339358.25396.6035768929423354249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6632d1c69ea5795fa041130c5fad3b6e81eba055f4d92bad639038f96b2b67
Date: Thu, 08 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746713393
