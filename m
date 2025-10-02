Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECEF219A89
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759427393; cv=none; b=CvjI50YlGpAqgSINierW1sZS/BUEFF5BZh/CYCViroSuukuDismY/Wq6q1oJsI9K5TDmAoMmR3CZzzYjXv6J2UDpgC+PTfj6P8Xyiw54DTVYBe9RjDiJvZUbpbiwO+qxbqnA+Jd0xBnLaxHABfcrFaU1sT8XetKihC89vXn/4N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759427393; c=relaxed/simple;
	bh=1B/qkPlXqrG+gPLO+hDdoCRV5LN1HJY+rkqSbtN9N9I=;
	h=To:Subject:From:Message-Id:Date; b=QxDPeVh8033dXHv7qdy7cSM61GYptPbcF1DOeQF78OlLzoOiA9L/Y/VJjl6fqzNvRSEAUCVLcxSGD9qlVs46nbnzEE7jmbI2zlS4wPC8myAysyGmgDzJJE9QirzYsG71VYjq/w+XJmzYSqHrPxheWtPCqXMuo8oyuyV3MzydydU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCL2pfxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCL2pfxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3223C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759427393;
	bh=1B/qkPlXqrG+gPLO+hDdoCRV5LN1HJY+rkqSbtN9N9I=;
	h=To:Subject:From:Date:From;
	b=HCL2pfxGG88EPyw9KHxUB4r2yqNAaGeVI+TGB1o+LY2s8Mw4onEMb7kr1FKnGN228
	 g42216Vj2QHKHeRALMulUiZBdVbwVmyL9NnQFPcTAkBmBHt34Q6RtbAdrKfxZCuqNA
	 4RJcDXmUKyV9svpaOLvYQW/PjdivuIJo5J9QlYyJv9WyDVgGJCjGB+bhPfmxs8+w6f
	 zQIAcT0nf9yzGn2n/nC5ZDJNTyAEnd+K9K9qA/RGf7pAR+ZJqnJhm1bMQfESjO7eP1
	 LLD03aXpWjmqQNa6FOSYyBINfuivTLFojSEBWQO2PZtmtCm4fM993endLAHV+DDb2J
	 02iLyc5Xc2Iew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E0CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942739358.10217.12950632005570588453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0563203d5d0b15b2804017323f90f91719e7529a3161e1a140307e6babfc824
Date: Thu, 02 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759427393
