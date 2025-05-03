Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB322EE5
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746234594; cv=none; b=EnUF8HicjGLXGUJgI+pXMAVZPSPU3jqULgb01Yq9ZKoHro246zQrRYeIClvgPAMAN3W7pW9AXOdalnTpZGYIwmrgH4whnmEEzLMBHQ/7Szcct8/lOfGTCWwEQOI4K8/zkSvwov+Z8Xjk0mbyqOds/3Yiomlff/fguJdhlIRjPPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746234594; c=relaxed/simple;
	bh=tGSpJNpWj0J0caiQeXU2xDwJGPxWvqrpxBslkPAr14w=;
	h=To:Subject:From:Message-Id:Date; b=B0W/SWkQopV0T70E7YaZpS1USjve/zAH4pNVKqiIVOGJ4QtqskAqXT5dw8+GPIv1VSFGJlzhz5m9EGlhw933hno/78FPxa4PlP/SpXCQN8+yg5TyH/t0VcXz9yH72eoPdIjBvFymyvhXdHRWmxcEYQAmYv7l7VppHLUR/rhA/Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHAPmMbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHAPmMbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D1EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746234593;
	bh=tGSpJNpWj0J0caiQeXU2xDwJGPxWvqrpxBslkPAr14w=;
	h=To:Subject:From:Date:From;
	b=IHAPmMbeG9VOZaMmqi3HxuF9SGiFRj/a0WMgoyMD4tw3cNv5pavp9qvxL4JgxSqRk
	 Hg8A2cfdfyo7NajVZeLKWl4maSS427lt2aW/DTqAdxXhNimjQtW2Cg4ly1G0EUveKD
	 BpsPCITVpOr5bB7gC5gFGfc6Fico6qgeylCg30FsqllE9rs/+my0KgaZgPXOSVMprS
	 aBNXwwfUsirWHyM5Pt2nKUmVvq06R63/CKzB1anXteLbW+r9UgxMIoGAnbuEss2fQR
	 UylFABItU+l4pi6fbIwyAi//Lwh8ol/ZCrbh9VWs/LgVH/2FClpHWj+whU0hTnBWnn
	 kvnm/hHMNx54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DAC3ABAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623459357.4453.17835462641506730151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2515c96adfb2dba1fa7e68258ebaf9fc70132ba9328eca2d3a57264b561a3b5
Date: Sat, 03 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746234593
