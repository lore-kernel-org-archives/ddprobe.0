Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087541BD4F7
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757897994; cv=none; b=mVnCfW9PqCJgMND0h9sUrcPYgpFqrZzD2gwiIqsHctaubXUrr22SFt6pqO+naV3/vYiJepbVTBzMeiLcg5+G7MEa/0g6kElB/kDDprvcY46jTap1lakKL1WSbeR0abRrYIKo18VsjBfj3c17X6mmV2xaiwfrw+AAo29yiOYE8Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757897994; c=relaxed/simple;
	bh=nbRmVsOlXFLiCoVFXtwAbckySLmM3ELfdEkkkpoESVQ=;
	h=To:Subject:From:Message-Id:Date; b=i5e9XZaZotL5e4541Fcjtg7pV7IalTjtAvT4S1nbIrfgieD+LYnmrheG8zMES49QQv4WebpqT3lscZtJ49Ly26kTtXwq8HF2tMpFyZMr8Qw2HOyFQY97gMrEeyxAk9s2ltn0oS2qA0tMfXeCjbgT9w4GvjYJ4qp2hdIGLrPvPHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+qV2N0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+qV2N0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEE9C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757897993;
	bh=nbRmVsOlXFLiCoVFXtwAbckySLmM3ELfdEkkkpoESVQ=;
	h=To:Subject:From:Date:From;
	b=b+qV2N0gw/ZmERRjo1K2+XD0ULsgrImK6kbzGf0I9n6YE3iAPi+ejRhl+WD2jnvu9
	 B0OpJ2YoegIl8ovrUNxWa33eL6qhZRV44wAtCVyqsoA5OiRuz6u60BXRP5Y5syyxYA
	 mF30dFcg8xkrzxw9mNQ3SV8Gu6sWXMUZk40NTEGSA5W0oKXaz8IvAZF4UQeK2BEDLM
	 MqkpWMq6sFdL2tSa/Nzmg/40YsoTIxf2ScfrrbmEAOOE6YQ/tvWsy94cPnLnwAKcvs
	 9hXEMKg8VpZAKuQ/LAwYpAZ+/9ViuUrV3XwpBskkk+SkuE+TqavTgHH7+FkQryLg69
	 mtw74oaPeJ9Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF42CA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789799357.10471.4145957446616043564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892fdd72f7fe9dd2d8cd32e4cf92f51cf42a9d7a80c58c136d9bedb2887c329d
Date: Mon, 15 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757897993
