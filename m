Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B363DB334
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779211834; cv=none; b=a377xRiOxLXci5VGG+34WVWpRez7785gTVKeK6hkGI5BXSVQHWNpzcIsE10MYk28hQobUMYb4XjHOGgDW7nP31xJHBllNxvzHaSAj1gznso93aHcvmZibqdKvD2nFids0hS30E4IaSVT9UpUDcxrtvvfgtPztBu7Dho2LhfC7sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779211834; c=relaxed/simple;
	bh=5E5KkTvoede2+uTkH934Natf5uIEB4q5QdLF0OHwBpE=;
	h=To:Subject:From:Message-Id:Date; b=bQ+JbYYASalmo/Rx9zC/rJ5tMMWPnGIRi2q6YjtFPnT3+iUi83twbkPE6f7ODRpgzZvT3KkksQCq+WGIX92tUkND4YDdy/235pEazBBOJnv8QK5ciCbZBruXNSdJTdhspn5ma9noDs+8QPmsVpg5QP1l/6W/WvgkZ3jHScO8taA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0aZic1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0aZic1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C5EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779211833;
	bh=5E5KkTvoede2+uTkH934Natf5uIEB4q5QdLF0OHwBpE=;
	h=To:Subject:From:Date:From;
	b=e0aZic1Nupxncbv6xRDEoAnxSWw6aSSpaPZmvXUprDoZl56yMQkTSkz2PNiv0DZWa
	 OBRq18veyeaxMO9mUykDMmHpD2JSMP/kWTQrWoMwHHG/oj46VriMws991hLRpC9uZK
	 EU6pBviLBrPcnrlTXkozQ9VF8JJieMW1LxUIUbYKlJQpF5zHmofSwSAzSNbFof4Kco
	 4u5iYVJCDPkZQchNP4/KaPeh/uwJIZ9HkEAVIPpNYkm3/NJmCJrNQ+yohlFc1JaBhY
	 ZgrFPNJBfLYDkguAOxMQUZ74nr0Egt520RmPUUJTNOjNSJYMxSLoFt/F05dkCcoq/W
	 jq/ZfmPY2ioww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0597CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921183371.26407.6582338042128908756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fac6c33c37405e8180061f3aa0f10cb5867425a0750fc29c2aafce9435e9c0
Date: Tue, 19 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779211833
