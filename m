Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E39C26059D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765854774; cv=none; b=D/7EfIaGPiKA+U7tMPpb8qfiKEIeWR2PnrP9vpdo/QV2ogTlInrlQUND/d3jfHCse0rVGGQde0oMpklqCEXrMOwtyrxuhavBKcp5X7Wjmk/3ln+kXUvE2ARl9dWTdM6TnSj1tFuPfzIRxDVxvAVM5Fu/FSEzRMj0qocbnJDWXXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765854774; c=relaxed/simple;
	bh=PHQ72Ts4j2EHq6W/+R6kFRsztFRcvYVo4GwuCZumZ/U=;
	h=To:Subject:From:Message-Id:Date; b=uKpd0xUuR0/Ye1Fv/gDhbOce/oshz2obtY7V7HcjUtN0BCD8opfwtl8VrkfycIkrECFZxAa+JpS0XKsbnvxpXH+siyJhHbp9nDhk9DiqBVuCqxRpvmfHCUdvHJX/Lcl4c4pmYLA3/9afYKavEe+7ub0FpFKmAorhO9AnV02HDUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjq6jojo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjq6jojo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6541C19421
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765854773;
	bh=PHQ72Ts4j2EHq6W/+R6kFRsztFRcvYVo4GwuCZumZ/U=;
	h=To:Subject:From:Date:From;
	b=fjq6jojobPA1MvpMKpM2J06Dc73NpKnzDF5VQowIuZUuWHwCtsh++k6HcxNPcOE2n
	 k5CnpRgpfOCQ/xWORGWP1DfAAauxfVw1b4hknR+MTq9pjm8l1+w4MKZ0a9UkKx9sHk
	 dK2yMtAybHTBMStRg5lKPxTBurLOVrQ1ge6tYVDOfUoKX03IwLGKBIcWGjHyFW3T5N
	 7uvs45GGfACpFOSmwaKUP/4ZG/U7nFX5VAMrfkdXeWdrVCz2vWpETBhaxRX71Cw4rz
	 pWFmrvf/BqA+3ccKExsZ73T8yn0otWaydu1t2hvM/B53VTairtAW3ayMfdM+F3E1DQ
	 2Rx93T7BEW3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6AD5C0C6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585477358.29077.12427426051579028319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070e75680d4ed375f1a55b644ea0057b0d44e9d07348485d39239712c38fafd6
Date: Tue, 16 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765854773
