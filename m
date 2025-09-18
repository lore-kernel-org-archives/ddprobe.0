Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BE82D6E41
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758236394; cv=none; b=S2fTL5l4Xyn/7hSrWk/vuNaUOnUgQ/3tvnL8QycAPf6voNKMJ2qy7MrP798J/S9g1y3127X2G89uKwNmqlIGDr9tCK/ZgnFvGFbgke3pTahf9Nk7YKEfQoav4dkZl4Ddg4pZGNwSpkBKvBMEf+mDW695WN+Cg6ut865+Z93X7vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758236394; c=relaxed/simple;
	bh=pQWqEx/UrNc5KvvB+BBiFwn7Ds4K/c4yQG4cmTgzX3k=;
	h=To:Subject:From:Message-Id:Date; b=FtLX/rdGBECZQF6aIKOP5Tbjdr64dEw7sS1yPAHXGA2LsU60bSgHdur0dxRca72Mv00kIVX1yPNhXJrU+Lc5hF3291RlTtClVuSQBjjgdhkM1awYr8M0AIXHCbAp1rswZISFSJzRZq9ZxD+ubxcZ60mTQudeVnl+zF2NqMkWIOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh7I8QyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh7I8QyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A140FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758236393;
	bh=pQWqEx/UrNc5KvvB+BBiFwn7Ds4K/c4yQG4cmTgzX3k=;
	h=To:Subject:From:Date:From;
	b=rh7I8QyEsPNWwBLSNnn2TQLarXuopNy2eGx5g1VOcIh7odG9BIv9oK8FBNzwO9jkE
	 XQ84KbWHqgwH94S9n6qr5jr763J5SqlkSlDBOHLWuLLuOK7LUMX65X9fz7+gb7BqmH
	 gc6TWHzXcfZgO9GJiN7o/LJP3GBlg31xRUveKYCWfTRX8aAFcl4EZ9inFKhav5TzuA
	 AyxyFo7kVYtSse6eDObt4Jor4wE+KO4HXTaLxlltitHv0rGD6afv17Op0wwsMaG+wA
	 39TYYwJelZ5mOMh118glh5CgWXqMBBo2VEjpMTuHqZ2nb3hhj/nF2xeF5TgO11xiHZ
	 w59S7PW4WVKLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90484CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823639358.31473.1332428774846700349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65f9e5569d64bbff58a409f3d1f628f575bc5de0c49c37ee2d0274fa54824d4
Date: Thu, 18 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758236393
