Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443EC1853
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745125194; cv=none; b=q+uALnhwQVujHKG5ztKZWom5vAWPtsDb8mn67tETT6mNMOJUeg8jdQTiAdtUhlexxNt2mC6F59hreE1Xrw2/ahzWzrpd5o6DgMU9esgTWVZxjBsSmsNe6IA95ZgkKc8elMFwFqgWWe7aFXvmhMl1B5UfB/PTnMvZAHvU7DOEYWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745125194; c=relaxed/simple;
	bh=FxD61cMNdLlVwZutK4uqDnFjDJsnrjsPTDG3V8ry5vo=;
	h=To:Subject:From:Message-Id:Date; b=NAcKUKlxMCCW50fv2Ej3TRuJs78PEOK+/5cVsp/8OxBmbu0veKkFhVERpEiLseJLfBbEUU5D22IeLc4HKN3smTbTe/2jF1w3qK3I2pwfshD1DlBIB8OsaJ19nTBZ46ZXkY/4iTlwUWP0SeX8hMZkQsUQ2wmWQ8Gi2rd4iIHDV5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9jFqhGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9jFqhGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2181C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745125193;
	bh=FxD61cMNdLlVwZutK4uqDnFjDJsnrjsPTDG3V8ry5vo=;
	h=To:Subject:From:Date:From;
	b=l9jFqhGJlNt6eBGFr+jwKxsrRnm0GN9oeAmpnWSZdU0+wpa9NTIXoUGCinrvU/69n
	 MgsBZNzlL2jSBpbmDox47oyHBTVZo74UIcQrs19p92qUtlx0yspVzFtzwA0hf8AvVC
	 ZSSslP+Zt8Dr1y97fTyGiTRJ8oBfPNN7LzsPk+t+sc6lvbZVa829beiu2/3EIJW76x
	 YpKM3SYGSCHwLCTbjL6MSvoCYIld49MSZ/B/m+7mJdhZcDx0vCN5mp5B9DP/Sep8Ut
	 cZq0R+QcgqdMcJ8ISV+KtOVknRYh8kAjK2R8BA45e3ZgKmA0p6bhL/z2Rqn9taHUUk
	 bi8IYPS+I5rSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206FC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512519357.15183.1706919634983679650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5a368a9709908edd1526f6301669975f70010be7937812fbc2c8928e44679f
Date: Sun, 20 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745125193
