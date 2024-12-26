Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4847317591
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735193754; cv=none; b=bzT33+xLCvmNDx0cv09CoammPrXcbrVLvA2XgjSla22tLUiVKumUjp+uVO/iBRTZt9WVQgwfdyNO8NuE0L1YEii0CFClpdIcrUuc0zXfRMtzenP0STPRm6FRDZLmdGWCKYlf4HuAskgP8ccKQRlMYjaP3jtSYuLpJ9EcPWP66PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735193754; c=relaxed/simple;
	bh=9rhB+xLSNG4WM+G1jiQDToAvoVX4tIA5VsUfZosRfTI=;
	h=To:Subject:From:Message-Id:Date; b=VEV2dbBDe5+QJEZtE+Ch3vk00pbMxeq/1bVnAQRjvApgjN0dU4c9UUlEnSHa1ZlwX/z5DQLVSVfVaDJnUb4YJTReCysGKs4MxaTgxCzV5t6QYatPWP3BY2Cay7Ir60mCLn5qcc5f+UXanR+0WeOuAr5EVb2mJPLpGoFwfYu4ENc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXVKfvTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXVKfvTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5515C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735193753;
	bh=9rhB+xLSNG4WM+G1jiQDToAvoVX4tIA5VsUfZosRfTI=;
	h=To:Subject:From:Date:From;
	b=oXVKfvTCjp7VZqZYLhuGMD3ecR6ZGLiy9QnjYNRn+1nT5N9XCeNiJ262HaDkGBUMT
	 uURgXOidIW5bTZSdaxiVGugi3aB0KpOmylkcEd0zcC185z4XspPsHYCq8uCpCwiWO7
	 AgX4zjBTZxolkUYsNHuBaVqwkZ4bwcl/lYROVp24RHqX8G955ICTvD50v++C7ziiL7
	 ug1sWQES5LQTHfG09p/WoWDVqlwq/kZJ/ML0fo1lED9XofvDm3KVzKYn9f0IiRWxtk
	 dmdXVX6sXVVf+ib0IPFrzkDhiB/X7GjN70BD868R4tcWLsQt45U0oaCMcn5ndNMPk7
	 ZxUDs1ByZscrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7797E7718D
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173519375367.13353.4317129579657375241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3aa88a5b4b4d38b1668aeb9d956f33556f9594413f0e4ef1bd683b6baa46cd
Date: Thu, 26 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735193753
