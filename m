Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDDC14C591
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719057143; cv=none; b=lP0vrvplLPXiMqruFqteyO9wrjxedjrKS5ddG4H2FI3WMf71R3w8wUBjdlCYjx7hfvFRPaxzRTZEfPc/vsh7lZJoYnSy2qHkG/dRUKm4PvseN0AcUmN78v1HqB6ELmbTmFtsOIpasoPNWy8YT94B53S4eBunqNNy0/VAUYNktJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719057143; c=relaxed/simple;
	bh=GGLohF/sFlPXzS44czOjUjWTHMinAwK9pGT7VEfEOD8=;
	h=To:Subject:From:Message-Id:Date; b=sWmkqvPBPkkVeusr8F9UuWOcsJQvbDELlsyXWBBdF4M7qhSknPYZ29RKFiIYXtuhc5CvaDLfqK+Xb0esz/4pGbE5+j6PBpHDShkKu3vGw9TgK2CdTtAkBg0R7oaEBbGrh1gGPp3zvUeiBOV299gy1sCENZlkcGSqJxlIuIQg9t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jT0eMgjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT0eMgjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D852AC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719057142;
	bh=GGLohF/sFlPXzS44czOjUjWTHMinAwK9pGT7VEfEOD8=;
	h=To:Subject:From:Date:From;
	b=jT0eMgjQmp80LTBY0bC4Yi097pq6or1/BovS/QWrXGBwUci0wfopcY+ViZACtD9iF
	 dCE0szRCq4d2QyAD6sHVU2YOZJLsDFiW4AQ4Fmwp/rmmH+l2+NeiYSUR4rX12OnzdE
	 NkHrT5goypocAHQdBhD3iCW3kJ7FzUerks8OGE5EjWqqQaKHzZ4P+Tn41IT+I1/6/t
	 ZBk+CJd8sMefbK7EYzesG/qrk+TF3GhFVILm/Cc5Wcx3fbwnGXZ0HxAnlbf6aTAcZP
	 AMbq1vTBtxCCyt1pzoLiVQx5Q1J2jQmo4bmVwFktwmIYHyrjHIRXJttBosJW/8XCar
	 YRtgx2A7LDKgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6365C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905714277.8581.426262132477967865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266e07765fc1a551c8b8d572cc7af06fa345b38ce9a5366d6b1c49f697ba2335
Date: Sat, 22 Jun 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719057142
