Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293552D63FF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759768194; cv=none; b=O5obBgfIuMq4iITo2PqQJdbdIvrWFTwo8nN3Qd/fB4+lBzhpwNCt7h55ncPtyfWSiUGNu74CNbOgCJvq0q4w5292z3exDPcnHnyzaKuRxFN7U2t5CSZHwn+/sICxsQS5UNx7knEobnxCQD54JWo9gUWYesTx2dz2sHoUTWRaHhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759768194; c=relaxed/simple;
	bh=4My9pUvk7e7DPoweUJWEVaSkR6/gM38Ndn8JeTrfp9M=;
	h=To:Subject:From:Message-Id:Date; b=EkCiuIyQH2bWnc4b+7rsYvqaB4MgzMrF8M1VK2s8zs3bOnzPKACaOPRZGoB5dKuXZu1/kO/iiyCmqAQ1DIwjg4sUMxY4MxcvGPC7toNURLvxFrgkgBpvbvLXS39pHEwdg8+Ou5nh85wKSOaCsx0SrWCMIMyGJOM45QmHOVWQ1kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k99Zy9wn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k99Zy9wn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BE9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759768193;
	bh=4My9pUvk7e7DPoweUJWEVaSkR6/gM38Ndn8JeTrfp9M=;
	h=To:Subject:From:Date:From;
	b=k99Zy9wnI2h19HeXCrxa838+19aEDBe0gz28kr9GVerRIYnUFkWsaCA4bdh/y5buF
	 JDusujMgQSqAHHe+hSLf6dzu9XiVWjS6MgYao8Wk/oV7MPoG95dElNWoeah+XFSRaW
	 ztdc+N2VkEVGVW+HzXJInYMC+0H3rwGsYjop2r7NsYDhVm46TZ4dt6bayMmj3PWB3V
	 8d6CbrrxyPEBAUXYCGR3GKu3xOaUfIvRFcdMHp4z7kEPRWVP9X1gPTmaKABhNo3tMG
	 rauZ4Gdj23W4h/UfbdT47dbZqu29ZZOFHMx7GsXBcrPIwzSdPtlo3fi+jMGv+oNuDs
	 OD483UNgC7gxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED6CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976819359.31011.7504764080237154884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f0f6f4084679ac8c55cce61c2093897723bcd425de859cca6f2ade4b287301
Date: Mon, 06 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759768193
