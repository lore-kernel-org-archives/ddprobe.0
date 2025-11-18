Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3348327798
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763434315; cv=none; b=t8LAE/zu1DeeMei6VUQiTeEj2thP4nzAoPtYIVYdFfgfUfxB8ieusF5hKe4F4ZbMT4Y0I3CQVJ/bllZ9c9UzpxXch3/jTTsdnkahyi7L6UifOMfCmpYq1/ATm489y8Awu0khy1CLRgm8WzfjjxsBmuWODVl85RS/xesWUBA4exo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763434315; c=relaxed/simple;
	bh=hhidrftvGqI2HceWoeejKcFXycZLa0psdSZrvCr0H4I=;
	h=To:Subject:From:Message-Id:Date; b=HES4h1mv9cQA3dduDSKRalElg6cpRsJkNKJBaFNCJ9t2DFVvNHWoMs0znukiZCCrumk5jfCw0S5SuU1f/XUwbVSA/95NAUT1ldJ63vv9QifGvl9rbHhBUtY6iY+7nk4NhQ4QgF6oXPfmo0g7SKmGwSj3eyDIaanQ2zOHyZ5tsYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tu6+261r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tu6+261r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC443C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763434313;
	bh=hhidrftvGqI2HceWoeejKcFXycZLa0psdSZrvCr0H4I=;
	h=To:Subject:From:Date:From;
	b=tu6+261rQGThK1z7wyT/ua+zImtwzSXnSmmtgLlUlNRrk7FngVXqFVrW06Res/n/R
	 KNe0G/fAus5fe50VtJCic1EaU5x302S+gD/v4B86Cu/OoXHQL73Pdkde4gmR9oRNtL
	 /Vh4Bf8yoCGjv95sHS3ZJXm/mMBh3iu23QyGECRHhJu8K82/ZrHBpCJvk0soQy6tG2
	 xHF3Qm1OoqETRbqfUT6lMzhNeoHx1NDRC5BQWHzdEWbj/tjZqvjtld5PNBo4f2ayuh
	 5+wNacYB+a3l5gJCSG9n3JxeetZhVgut7o4oOm8r0Hbij+XkCimIcc1UwfK/pW9eUX
	 nCRdA0xN3ViDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEA0CEBF91
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343431364.22680.17409646820883328060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fbb2f426be81beb7a751bc99d4a25fcf1f57817d3124209690e03f661ec66f
Date: Tue, 18 Nov 2025 02:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763434313
