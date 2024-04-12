Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5111815098B
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712950163; cv=none; b=uxaVlP89I0PlNOmJe3IUlM/yaZ+Pspd/Odvp6KokPl+6kuXTNWjyE0Gj8Qgj7n0/pN9vaHEsOxALBr6vMaHUI9gDKyAbJn9nhJNfXSu5FfytBNPdat4VGmwrsX1zoZUopfHTySRnlASA0FxSq2PqSNlbYeGNIFGPALHjOWey1YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712950163; c=relaxed/simple;
	bh=uWGcaarso/w6VNRKpCIDcMopdcPZ1WQpx+HLMSMY4wo=;
	h=To:Subject:From:Message-Id:Date; b=iFb0qEs2j5RbSH+OroEGLBoqw6ID+VGdQmFdJdkTd1sSMIkn8h16zwP3/B0IYoiSpZnbDh+VnCVibiiA65wO8Juik3p8ox3LBYXiqDYMTxXjZdlTOlUNM6w2tYMwh05hBpKaxLvsV4hvC/BFlD9fhcTtdyp9cYYzNDvdwXKKm9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNgwz+6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNgwz+6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB59C113CD
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712950162;
	bh=uWGcaarso/w6VNRKpCIDcMopdcPZ1WQpx+HLMSMY4wo=;
	h=To:Subject:From:Date:From;
	b=dNgwz+6AYUu1YKh87HnuXhapQsQGXOMi78E/WLeMaJSCYl3HL4U6fw6MIsXpXfAGi
	 OYBSVwOqJK3AuqlQInUFBNbqcQy6tuk6WZMlKtc1RKUjYpc5+j0FxiBbyR/VdLC5ee
	 E8zbgK7TRsveSkTh8ON1eT7l23g477e/7bXlkfsyOh9PR54yXvMaVBe0Ufg/EavVe6
	 8lwlxhhHB+QhKTUsEClsVXymXKErhIs9GLUwhldgRt964u8wSrvQz4RDna+1AiNWNF
	 F0DgZci3vfQn2TlhqoKbWJXhg7wjiCgzZmCu0TOFUXn0vxKsxsUu0EkJwtuwPJ92zy
	 dn+DwFBRf2WMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8918C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295016280.13431.6480310804410759162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356e6eb409a41de40b59c836c5338d945ee4bd6efdd551d13857f37e7b7f787c
Date: Fri, 12 Apr 2024 19:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712950162
