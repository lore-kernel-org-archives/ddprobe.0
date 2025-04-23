Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B89425DAE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745371794; cv=none; b=jPpkEUSYi/uMu4IyOmV8FZgec/31G4VqGlleNyzbHjwjsjcF8cI7T/RPqve/4x654ijgXCtrDs2OETxOgM1bmxqafH5+tQZINbbQohGPmJM5wMMSalIeAOSHVOP0c81EueeDkgzkmxJeC2eJkE0UXjjp/1hSs+7wo7vA3QFYwGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745371794; c=relaxed/simple;
	bh=kRZM2oFnbuLcp71nL0v4eVNFarwN8VLd93SDth6n1CU=;
	h=To:Subject:From:Message-Id:Date; b=EswDb1aPxUgVGCALXy7Uki828x94nLtLwguB4RCC8Ys8CKHH7fI/LYOJeisw8Y1Ky3WGF3/ODeYPTZf9ps8pmyHwqAfJjnFnSBuFOJ5X9i0mN1W3/IbUo7lfkwe3hyvGra/ej+up/8+IyTjeiJAlOmwDlfTgF9Vtz+zPxD4q7QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoQvIYql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoQvIYql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF672C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745371793;
	bh=kRZM2oFnbuLcp71nL0v4eVNFarwN8VLd93SDth6n1CU=;
	h=To:Subject:From:Date:From;
	b=hoQvIYqlvNRBJ5+fW+ZG4B4jVPDJy8w9KLvENrz5WrvyKbrStmh/kqICVPwfRaNgD
	 3uSk4eF6iqpUHU9xm5t+DYfZ3f8lPDumSAw2g7j20BDgczo0AC1OLTsui4KCdPmLsY
	 WPjwdSwjb7HxDgs+Tmy8NdPrwbV6dytzCD7GVI0SGEyTL+x8tl6bb4YeDGS8+10bzX
	 tzUjAzRZmXo3OAG0/DNFHhAImTSwsiM7tO6sSCinAISJJ8Deo4iLWh/Bi2CuJy5YkK
	 FY5DaUwpypVfy7fksCG8zVhMo2lY+nRBu/bge8QkLPRp+MoyohV0OT0hU+9/gfyPNk
	 l+qjH7p2BENGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97724C369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537179359.5399.11442855541305721459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ab7ad9dec423fc3a7c8a0f9020c8e89e68ba6249e8d78b4c7961d65b722f5a
Date: Wed, 23 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745371793
