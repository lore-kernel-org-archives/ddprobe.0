Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D64F245020
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764270174; cv=none; b=J6u1QurWerZfHAfcS3vBJrzoswY6rZTY9+NFaBmzhyesoDEUyc39kxUfO5K/OMbxWS5vkbg3xnzsIUsF/zmyNNVSIf8FB63bBa5AQI6SaAEED/XZ7wsfUQwpTbxWHXET+TZEV9MAYz/+zE+6MXunZiiG7V9ceKwAbG4X2+QW/ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764270174; c=relaxed/simple;
	bh=WZF8iA8gQTap44yxXsbWFmmhVi7/wN0+73v2xFowTG0=;
	h=To:Subject:From:Message-Id:Date; b=OX8IeqgSFSi/kLpJeTfkxRqc8dp7AQAKdjn1CHolzl+b1U8nJNsE9SM+X2sYjE1kSt/9T5M/iEUG0Qijx+KvyNFwlBKcCIBeObrl4nFgl0LwmMYAab0XOfr5dBM8ckchfHFIUHfMj/DDr6SoxuLZDmMl57+7Q08AYBZGQhrn4Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3p6DXlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3p6DXlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F010C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764270173;
	bh=WZF8iA8gQTap44yxXsbWFmmhVi7/wN0+73v2xFowTG0=;
	h=To:Subject:From:Date:From;
	b=n3p6DXlx6BTTv+RXcQGq6/uXWW/m4xix3Zf7/lrDs7TxPuttlFz31tJcMaJLQf3AV
	 CTgIbbseyL9pR/iT13mTpFbjJi36Amip9q4AZ/hXxUtBJ5ZjXCfTVpd8Gx4KDEQ2w/
	 3tpy1/iU834tphek/kz1UPxKHUxio91BHpq7uVWK8RonxPcZ8DjDRhTWK1axqf3pqO
	 z7s8FwssoBJPvTe9ZsDixY00npeUsvTyB+uLHYyKbzkxGFB4p9kty+ko64a8yxilmN
	 J5CaiJ5tC13k6ilpWerX2gfrPxEoabPQ8nwaQaZePIp6a66oSPe2n/GbuI01T+Xxg9
	 ii9xvtGtJU7sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9037CD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427017358.19385.11424772484383376968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585629052008a582f82b5d1a65a5a49734852e653de53e903a53f980091f046c
Date: Thu, 27 Nov 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764270173
