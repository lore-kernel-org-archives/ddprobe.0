Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA261AE021
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722621354; cv=none; b=eKqK8e9eGNPgpX87HvjVHb6ktvefMQhjby1F3rcMUgVXD9po2eZX2yg8waDdNv5ac/X5VONtc5Z39FotBfnRAG6/Xn0DA/O38HQHMCF3Vy78c0IxnHkTPxQ3V3VYWK9qoBhpXpAXFfSuPsoQm6QOv0/tBoJartFeZu6Lbch3D40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722621354; c=relaxed/simple;
	bh=eRTqGw8QtmTpgWnDNjbKf/BvMdJ9+bAHaQjl3LjqVX0=;
	h=To:Subject:From:Message-Id:Date; b=XXCz0d3BdhtWeTFW1VTtMULkAmil3XJJZVrUeUbD4MGOGIwi7OKC1F5iLvb9i5CFWxj3IQF1rDwEWY8kGlRtdCHyIblepqQ8OhLqi10j7Ax9JzlXC/naWgMz8iYEj/waPyNVUTG7cP9gVRc6vJ43t5ztcqARnGl2JpDA/FqZpCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZMFmrms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZMFmrms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC98FC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722621353;
	bh=eRTqGw8QtmTpgWnDNjbKf/BvMdJ9+bAHaQjl3LjqVX0=;
	h=To:Subject:From:Date:From;
	b=HZMFmrmseieCVc6RGrWYPx246mSwL0AN+vovN6zUJiUpuQRpCS9yMi/50veh1AZWc
	 6Z05DxXlEUXBcxH7a69HY0vo/UG1Shuw6KqGG64UfagyDoDYlzNzYpVB327oOdCB1m
	 TL7FghOeni1bAbmwpTZ/DWJmLOZvkrB9rkUxWGKYfJREMHWJAcrctnq1ptq8+33IFE
	 xN81DbbXGz9fvUrpacdrTITquhmcs7J/qzSInVidzMweeZviv2TjbmMlIuQl/HoND3
	 ngiCxG8quU2ZVckYVIT043/v2kFDrZTgA3Yqbv8zdhGc2+SatbXM03T1rDYqqRWmdj
	 I7CoHvQEEefWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5798C3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262135363.24967.14470406914001624309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5baf56b444453f1015b4b4994ad9bcbe45b51499cf9c860800d401d749930eff
Date: Fri, 02 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722621353
