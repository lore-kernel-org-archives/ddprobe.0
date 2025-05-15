Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283E1FCFC0
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747345194; cv=none; b=NUKpF350e+M2FnmhXvP+BNcxYY9yK+NkUAJPZZCWxWk+P1Denj5VRKXVFCp9aHEQezZVqJJxTfX5cEPigwEen0XbL7C0BfQVDPpJ3aX/1a/mO+6oHfkxWH/B7O12ef5ROdgbg4TAPOIkZw4Y3SImncFHE7BEyyk/X+9K8vCHh0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747345194; c=relaxed/simple;
	bh=LqNN7C2lGo5rLSazpmptdtWBxSwJJL0YDOw7w5EPTcU=;
	h=To:Subject:From:Message-Id:Date; b=SKxalE/4N0K9Dl50Gq1zeiaTB/rBwMgHdTIGfxcYHHka1haD3oy1FFIPhhBiWkuPKvowy/HagxgaihXKRMQalIRkqZQxSSrzB6PfiUdFOdSSUdHrQ8PmFihdWQCI9VzHhnyw2JfINRu44o/0t4ItU4iGRCIORJ4iT8SdTrBQw/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0OM0vLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0OM0vLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E357C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747345193;
	bh=LqNN7C2lGo5rLSazpmptdtWBxSwJJL0YDOw7w5EPTcU=;
	h=To:Subject:From:Date:From;
	b=b0OM0vLJLdFCnTvDP44NXFt8l14pKT2n8Htz4ifbDD+jYoJkEGtTdu33B/xjjDVOj
	 z0aUoP320GF5WeFBBYhQtA4odiyXOZNJ/WUawafKSrxoc4OqNVPiKuWA85reAQsHCv
	 ttGkST/HkF1Bjdwe5lL2NwOqBTON9NtVKweqbTjFioSLl0PZV9R+z31JCGf42IFU8K
	 LJM89zi5AIpTioaqWjMGRgtVUtuZG2kFCcW40MCouxls2EafZL/v5vg5r0nISVFK8P
	 iTVivQWyixM6M+SIW1N5uL19HI4orKqVgEPb8D5xHWtNA4cEspcbUVRKIiEI6hfA2f
	 Wa643ANG/f8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5CBC3ABDD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734519357.6155.3861075789062979739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6a7f8a3d57fabc15836d2d928fb14e388c062346f54c90e59455da556cb244
Date: Thu, 15 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747345193
