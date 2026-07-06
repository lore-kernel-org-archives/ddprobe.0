Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF633CF942
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783365514; cv=none; b=uI5PI1xGmEQKKoYqte5Fpk4mgUmm9aWXGtvr79FNtYyHG26vxTLRb7jl/uRW5RdW+G9jyZDgaJ3ybJz3UEyc7zdvPryE/Hge4xgj9mnFCRNlMi/9mhvBlO9D9ut5/Xbq2UnxmrJdwBVlucyY22zjxsz/YSXVkNJp7AbmFXeVHFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783365514; c=relaxed/simple;
	bh=ySSGWJc28XjnyahG5+DhAslxDAnaGa06y9lJqAet1CI=;
	h=To:Subject:From:Message-Id:Date; b=HK7+Roq53gt2KuBp1tOBol9o2bNjPFmTmW2am+zbHSK525Q02cV97tL2hiNU6aXScucB+DAiH7fqoYOKjRnciyDvg6TUuTMq/1iFVjG6JXY7SmEJ5x2Nmx143/41LH141r8Sa3XBCJPsg5vWguC5TJPT4oVMhFf9FHb5QNZY6wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+AOB7cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+AOB7cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFCBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783365513;
	bh=ySSGWJc28XjnyahG5+DhAslxDAnaGa06y9lJqAet1CI=;
	h=To:Subject:From:Date:From;
	b=H+AOB7cgErnBCzxZAgYkNsVTaLe4NDvMlNxiITT0G+ECCvsg7wcM49NLUB1be02Ly
	 q9Ok+KnVYidupIuy2WBcLwjRUCOSMsKywtbaqGbgcWTmQwBUr4A3Y2pfpDT3OjMblH
	 8jvpk0IW5wjgpwN7r03Nd3cx4ex4aGIH+QTo3KHq17Rps4zxpf+rlkhoDaJ7rAkbJz
	 2MLNsJw8Vf/PIFPu5aV6Ggp5r2lQBEVNEzSp8YeBoKvNHrJxtYFawg0g3jNW7Yv/yh
	 y/qdlyKrbb71I7LUUMf44Zynma9BYX7cIbYf3u8f7xQ9ZUm5+x6vRNl38yIjgt1lKp
	 zULUUKUTJiGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91D0C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336551368.7722.11718631675739889224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7a4761f2bcafba8fe70768808ec37a454c0e251d48536ea8c696375cbb5d56
Date: Mon, 06 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783365513
