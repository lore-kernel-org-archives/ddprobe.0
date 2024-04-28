Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439CBF516
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714309343; cv=none; b=hMbZZ0/2CEQhmm9pk0sStDh+Kkdz23yK4aXAhSfKyLj+rf8+NKDArsfs0ocu9g2rMudURDX5BtAObwgepIGFizasgwckugRKf7G7jEvw07FYTS9YOrFzzv8ZQg0MysGrLWD19NanWK3K3N7M0llbWt8UUa+2z76ZGjsIBcPc0CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714309343; c=relaxed/simple;
	bh=3ZCQgaKfuEvpx3oeHJo7NyfpzbKoYES26KOTbavU5v0=;
	h=To:Subject:From:Message-Id:Date; b=V4bFscBz2y2qEW4TWmi7YEjjOpNaWfeyTefqRLwc1MfR4eJNXWHw/ql19WhO/jKGxYIv5EAJf7NxV7gJhS9PNK8neXSBTwePwUtWYKgrig3SZTwij2AXqPRuvcGai5f2oY6GbdsOJrYqABAMsDB5rVP6S1PIXOLgzXa7ovTZa+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSOaRglk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSOaRglk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7344C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714309342;
	bh=3ZCQgaKfuEvpx3oeHJo7NyfpzbKoYES26KOTbavU5v0=;
	h=To:Subject:From:Date:From;
	b=GSOaRglkxzXlf+kNk1HUGui8s4xToknD9r9D3gV2d28SziUq/mqvB4uDwkQ+yWMtE
	 NE9YH1+S84SGTAMikwpQtlAk4Z1uLY+Hb6ud2r+sGIBsTVSSvrOmXtP43qjvdXICdq
	 E9Is6yMMxakZhdM4m83OIgaInCBgU7cP4tFgZ/iImvuA6Yob+LzGcMLJmm+mlvggGQ
	 RHK+wRbFKuRPjQhrqDK4VtkfYuBWwO3CRTMjGMvMNTTBIzFSfQs8WKQYAZyR6OA9SR
	 EWgQngZGr7zuONbslRQtA+Ei8tfv840ELjZqXV4PEnmivcf6LgtNgm6cpYdBB9OaO9
	 nD5cr0is/AZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FC7C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430934277.1738.10986447867779321722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba230d13e48a1d77cd75272188ca370fa84ae1d661b0db1935032a2d944f1067
Date: Sun, 28 Apr 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714309342
