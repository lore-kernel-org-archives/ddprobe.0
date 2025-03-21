Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366D31B6CE0
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742599794; cv=none; b=HEcH2cJiVKuFmubOXRq1XG7hMD3Ah4HjXLSgScw8P5iZ8ECXPPtatUMeoyi32fVaASwuJ8J4Aluxi3IluooA4BmeizadkOOM592tfPaWsrD9xQQHp5VP10/hRL2iiWsNEg9ASayfzkIYDBu2LElua7PXpKqsPB0/ZNWUNNtHg6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742599794; c=relaxed/simple;
	bh=6TUQCtxQEtnxd6m9Hi6pm3zBXXodo2SySvW6cfEVtDQ=;
	h=To:Subject:From:Message-Id:Date; b=FJ0MTzwJuJ+6eyPN1sFs4DGd8zPYrttLV9GHpHcWaYXLmx9fFc5CKnX5f4HZu9o7lJTIC+wbZ/gKcC/+iWHvzu/GSMGcd15QG/QD6IgWuqD7um9/0wwxIfcINY9UIpVpXO/L9wayXZ0xyWVU6seq+fWFgYAd0qb8oXYKy6jzkcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osPWAE27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osPWAE27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B152EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742599793;
	bh=6TUQCtxQEtnxd6m9Hi6pm3zBXXodo2SySvW6cfEVtDQ=;
	h=To:Subject:From:Date:From;
	b=osPWAE27DgqnmKO2xIjEPslpFhVDAIGMGWTyNfv202/+y/5D9hCLtpv3k798aM+SZ
	 BFJb4xrot+t4fbV/MZZgzRIwzLj7Mqgg4durYbYfJG4RnBwmkeLhQa8qKZy7FxTwIZ
	 0vq6Dz09aTbM87F4YkgX+E0Xl5+k7rjPEqFfogBFjIPMKC3HWWRWDn4lVQnrmaWBV6
	 m1ejYAfY4sIa3r6nGesIRCNTZtYd+Xr4S5DnwoBkOi+H3F/+nvs01O+bVBWs6rysYP
	 VIYYhdRqDdMN/a9OYMhg99P0nK4C+Cc9KPdNpWXDt/zPPEoyxUQUI0eNSNtgVFKJT/
	 Fe9Y1/1LouwkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1F5C36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259979360.15507.479431920624420583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687065ad686e6dbc2be71e4a2e2dcccf646eb938bbefdce2d91f64bdc8c035b2
Date: Fri, 21 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742599793
