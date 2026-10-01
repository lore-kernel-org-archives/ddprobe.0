Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A3348FF9D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790889034; cv=none; b=OpUH5vFaY4y2LD9pRZ4FTHkmgaPrCu/htfWeq3idw+s5pj5hsBFzHXBJZie1X6ae4ipKQKS6BneFWClYMPSofL+KejT9tnc8vbOKyl8yqkTRVu3yJkr0pG0Cbfj5VBJtsPTWzyXFG2AAw2Vt4nkYPDI05ltSX9W+KX6LwRF6BVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790889034; c=relaxed/simple;
	bh=YmydYTdS4RiHPzG6m9U4gQ8Egbqg4BCYQkNajSHQefc=;
	h=To:Subject:From:Message-Id:Date; b=CGku18QdYeXfva1nBgU+tNZFJe6Myuvw9z9rAp2q92w2QhVWqUacXC6HwvnsPTlxJOO4ncQS+Tq7Pw0eJIavg6TDj0p8yT+KCwUpZ+mLwfpTz+VVosElFI/K0JApZHiLsnAVfp0s4qkzzAVKLWSI/hVdzmo4DJAmpg26IyVzhoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNWghs2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNWghs2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02EFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790889033;
	bh=YmydYTdS4RiHPzG6m9U4gQ8Egbqg4BCYQkNajSHQefc=;
	h=To:Subject:From:Date:From;
	b=XNWghs2mMTZtv6jQ+l8hq4dtWtu9xi0lcileovapr9HTqmYQITjVFhxsuodJxHBmy
	 RCK+GzRygkZ9+uKM1r00wlUkrCPUIC3RtC3wdUmIGwcf2wDyRoaGn9oL9q4GBh73ag
	 efTWVoVfeYZYxtRi2BeCoO1CcZ80Veo8rLy8b47MkmrV7PnthSJ/y67qF6h0X4KL37
	 Hi17ZtqxsoWCSPx+qjOoG99lID6JBDIk0gHNnrjie24hAFotGA+iJ0cpTKCtBIesVT
	 BCnSe18TXR6PUsRK1LbCDkYJNRDv7dx58HPZ8s50Yfp32Hy7c4/cW4iMUxfg3LSI0+
	 l8TPxVzSenung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9768CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088903368.28453.13704701235026374484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff4a40e17e804f89111c4d58c9e4eda0abfb8495da3de2fcf93e5c3118d99b7
Date: Thu, 01 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790889033
