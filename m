Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A976171644
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724273754; cv=none; b=kMBvQ5tv86KWR7gF64Bun79cVSwDi335bJNShyZcRc/RSJTu0to6PdOsOFwTWT+Ieg1SdU05D6hF90a+71ilU/KpdDYp6UywJqP1ck5pvYCci0e59V8LegiyuS4Qon6WVtB5JSOdV2AP5zhHuIOX2GOLDfL1zrfWkop6MdNupMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724273754; c=relaxed/simple;
	bh=YVVs1Ep+9ABVod7v5pbZV9bCHe8aDO1Bm+yg/Ex1jM8=;
	h=To:Subject:From:Message-Id:Date; b=bsakI/SyPWL4FIYZxNAhHPD2J1Ef3xs+mB0URSjgYguRvGhvUoytPE45zKCCtgcypVAhpiPR+lbVT6B5ZTjE3635YuXssaM0wmb2qlpMnh/dUSdRopNe2+WIVapvEep5kr4u62KbQRoP8Fb6BdUpl03PCun/zH1Qn36ktEYV6k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGQvSTeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGQvSTeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC2C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724273753;
	bh=YVVs1Ep+9ABVod7v5pbZV9bCHe8aDO1Bm+yg/Ex1jM8=;
	h=To:Subject:From:Date:From;
	b=gGQvSTeYj1Ux0rzxuOtx+n6AxG6F5F6ieNcz8IXM2HqMORZjMglAgsi5OSLgJ60PU
	 NWKMhgOZETEyn83S00ulFScXyBb5P4lpfBkoVqqad11yYnwCE5ZyujsEi1N1OzYC6o
	 iiMR/bFQHvXcHRo7DD8i1frpPaNZhFfFqPySWOYIY++KLfDkM/NYFewIGZ7EufY9RI
	 Pr3SQFzesep03TdRxBInT89w3RxS/lUZG0HLQUatD2/VGr/ma6h/8j4vAqVtxgI91i
	 x/X4ztLnNEebo6797V4iOroP2kGcVIQBcUhIQfQmQ3EhTTSAauU28FN6J7nsoP1EmG
	 AcdFcT2OXsTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082EC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427375358.6925.11000116638497382627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01edda2a3d8fe8d2bf739f866ffda560d939887d95f10d87fe69d04dab87bb02
Date: Wed, 21 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724273753
