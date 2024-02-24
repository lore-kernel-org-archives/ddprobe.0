Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231591E497
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708796897; cv=none; b=YVFkmWVczSINB1pJZzDvBBqvzW0nlBYhGoDkYaN7qf6BTzmQAQrH9fclQc9C6wPslEELIEleeSjqA+sYwXOS309F0NQ6ONc89KuYflIEa8GICYt0kC5g2MvdtJUasBetVFlV7WK1UpCGljSJzsNQuG9+l5/UbdaEqv8mZl+ZPV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708796897; c=relaxed/simple;
	bh=osCiC1FLGoxy2bIMZzJNTzEtmspHrh4WFQkl5ND+CaU=;
	h=To:Subject:From:Message-Id:Date; b=bv0wC6KYMWYKHZFr+r+F2TCpRZS8J57ptoicoT7Vz/x+VNx3GFCqE1wh7Dxt75l9LOWq6SgJlEc184jKPD5lck8iw6QrBO29v4rNZwuhShi6m+w+MZR/8rV9dKm497xsVCTjE5ixPgjCYSDGTEPYEVDQoDu+xMVK0/iCDEykTqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQdR8WbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQdR8WbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B6FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708796896;
	bh=osCiC1FLGoxy2bIMZzJNTzEtmspHrh4WFQkl5ND+CaU=;
	h=To:Subject:From:Date:From;
	b=bQdR8WbAFPlIma57jA5+7hzLvtBQ5lMNvrqdSe6ZnCcT5lKhl3ZkdOrnMJvhmPi90
	 G+JEMvmciFaB+EzY+NrO6eNFJJyqlVbtepOx+g1rF2XCysVr9f2D1BFYKyTaNIu2Ty
	 J0NJVU82o5JGRY1XH2RbbPVFNMkH1Ce0CfK9upPTXqX+ewsN5rZmzTEXkK8/ax0mJN
	 JvVvIdlLqZ8o2mfA3Bsw4FucQe7b1Hbthazc/qZ7KE0A9cYwjGZl3MYuxnV12x6i0Q
	 R2G02TovJod+A0wpMiHWLSKIJOk/gB7OsyE7yh6cFc4jk7c2n1UENMsCjdFbmBvgng
	 uWJFhnCwg8Tcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C11C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170879689639.25058.16657836090029555678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90eadb208a9f334531a3a397149d805f23483229f0e2295c238d2cfc7a6a2bf
Date: Sat, 24 Feb 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708796896
