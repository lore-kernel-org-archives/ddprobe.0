Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3192916F265
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756808394; cv=none; b=GlMbTbk1hA+X7bzWlQthYUuuz8CTdZwuSG3SHirzU4qasixZa+VKNNVpPoqQk4DiqJCvbeTXGjSLnCUNW0mpTCTsoWaURIYHp0pORVgU1NX9Qrp1QnNsug6DRBCzDSHD6GiuSOi2FdkAvht/flVLCKKasmKQ6LZ0KwHOZPMOTv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756808394; c=relaxed/simple;
	bh=vtbq8quHUDRRYN4X5ZGVvTn0PlqmLNLk6x36F6ZZMSc=;
	h=To:Subject:From:Message-Id:Date; b=ZY0fiHRAaLiy38LYSjBe1JtL15vL+v9BEU599zlTP8tN+I68GTCbM1UIbkjhYOc3BOJWoet1atP/4OqE6Lg4IXbtV80qlaSB5SDCYwbpibemQkjITVt6coFo3/zp7UC7UTWMpXbwuJvMokeyW4WDVaF+mbCSi3FGNnvWA65EXKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE/XOhds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE/XOhds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F8BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756808393;
	bh=vtbq8quHUDRRYN4X5ZGVvTn0PlqmLNLk6x36F6ZZMSc=;
	h=To:Subject:From:Date:From;
	b=HE/XOhdssJTRDVHcVwDsZlfKEJ9VV8T8d65WoCERXxXPoX+wqZ7+iwYYqzk5rHsjC
	 fighiPE7TV/JlHS3U1ZT9xnoAQqvpwamBLWBtdrMu4w73vvh9jDGBnPBL3YC6IxSsE
	 sxTU9euPNLbIORBrmgudSgntt9LOYFmNrcQy0keJt4g/X1mj9PN5JcXFfluIMQeYVr
	 exJQsqgK2AS8s9TaxsUeqiVjfUTAVbbwZErUGJdsvP3HZXOOayhXnm6wlDAx07SNqZ
	 59UjvCjJEi5qBPAWX8zPqbaVEkJ66h2MjEJkv1YrTaPU+vC3sAHB74Ve+CR0NQuREI
	 yWxc4H8B4/DMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F992CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680839358.32543.16368850619541744183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a9013769feeee6c3448cd9f216a851fb8e688882f569b7b5131d0d63aa8113
Date: Tue, 02 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756808393
