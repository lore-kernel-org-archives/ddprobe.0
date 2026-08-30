Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5835E14F70
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788097834; cv=none; b=M9VbtXDVEUW064wHKoZQII7PYdlsZj+qqR55Qb2pe8fmRkGIoDHvMA2BDJCzsX0UuHcyYkNdVuvrz6jHP4p//vu/oCn3mdONpRZxM3XXdZ4+Ec0J+IxlyvAY1Ebv0NEjqo74d9OGUee9w6Nt+3dGhkNAh/VyfaoK156YOgFcvVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788097834; c=relaxed/simple;
	bh=KZrrIjHx4Vppk1dNUavMPk2GanvqmFYciCQDZGwfIqA=;
	h=To:Subject:From:Message-Id:Date; b=PFoB8Pft1QyW5CKysBrgBFUcA9/F6MvwJyu2d3ErjVVDQDiGUf578Eiz6oPAltLFjSA8QFlRc07MI6eLhXmzBaJxL0pHpoUuZTaLUo9dwvX1M/JIQ+p+HxIp85XhY6QoaME6thIdK6/SQTF7mixWwrRK8Q/+BPajrVCxKj9WLSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCKttvQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCKttvQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFCFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788097833;
	bh=KZrrIjHx4Vppk1dNUavMPk2GanvqmFYciCQDZGwfIqA=;
	h=To:Subject:From:Date:From;
	b=MCKttvQBNg9vHdnYspfPdz6CyWRu0OcWfelxx7NzrK1KOMIPbE4LggBalipfMVhea
	 WWOZH4wZ2gqXTSnfq0hEiSRqiXKEVch79G6P3nh3Ggi5dHaudkwNJfF0Wm8Bze3rG8
	 o6Q89NGkVRZ88AkQs1H+JMLeR3MLbJ17gSSbyiRYR21EXPq579zhyb1h19qZTaQFhy
	 fy6/fT7kUFObA/lFX9HQC88IAeBDdaJop5dajSib6vGuthZvjAAK/GhmOqoRL13oB5
	 ciRtpXZx7CbUSQXu4eG9O6qb5VjonqPxncwe/byLuOOY/3WgG/LmXpTuDxa/i/qQeT
	 qrWYbyQETW7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB731C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809783369.18790.1993964969446648988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1231db46484674268f6ace80c54ac471cbf5473afaf5c47ac5154582c6c904
Date: Sun, 30 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788097833
