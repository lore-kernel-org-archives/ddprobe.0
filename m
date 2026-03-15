Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC54E14D719
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773537894; cv=none; b=MIhDziiQxKGIdZuil4CgK8Z7ZLHmO2gEM8QuHZYAObwEsAd5+PCto/XwwCBFMiT9CykMn3h9SI9qNbK5YI4gFrJx0PNy7ZMyW6bf/fWA4MhQO/BMhlZsVIqMv0dJW6PlduVStBjsBw1VaPBcQpyrh+6ygY15WKVHxfsgLgbfVGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773537894; c=relaxed/simple;
	bh=Kj1D0y0QFK6YUXmPN6ZBRSTiWFTAGnZ+6EKmY6BDiaU=;
	h=To:Subject:From:Message-Id:Date; b=uI7/14K1d++7YoJFuoV91T2evPk1Yu2Z0g6HaScWJR4Fm34N9pY9IfDA0XBoKO+bELE5bgdf3h5546qPywqaWQzFm+F18GUIAkuHdFFqFrIEflGusoYiV7VsjRk8Z+qhKYoT9n/RRuM8oBJzA0UVntcLvZxi7ueTth5Y9lWXSrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIiF31UY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIiF31UY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346DC116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773537893;
	bh=Kj1D0y0QFK6YUXmPN6ZBRSTiWFTAGnZ+6EKmY6BDiaU=;
	h=To:Subject:From:Date:From;
	b=JIiF31UYrsZ+e2rCdyZc5GYJPAP/tWvg4yC1Cy8ROhQOSs60rVVuD6qxoh8CF0weF
	 VyQg/k74RvBHtQldzCwsUehxvtoP/EM7WnkdT4IftRpGHgIx5F/XfbmM2bn86eX4yA
	 wbXyUejlQlNx/CinIoCDekzqSA/wuK9t6LnisaBgfPMDX8EU9DsHyazkmtf+kY+fbm
	 O45/4A6ZiW1XofKcBVM17p7LOC2qiGw4zG56HxbKdv6CmyB5PG76Bynec7hZ7XwxOb
	 +Rq9u+mMxl6L/alOOKcPvapLAATtgmVySS8CLTg4ZX03Bm/GQWeIiaVpnwSqySvRxe
	 XnDgLLUwyk0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503D10854AA
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353789357.6251.8252050854918246849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341f82082f8e0fe31aeb2ec3f30f359c769719d81be0e44ad543d9542f55a56d
Date: Sun, 15 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773537893
