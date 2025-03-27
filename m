Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4297B125B2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743115194; cv=none; b=qU2oC5+cEuMiKOWrK1mq6ircvxzR437UlCMS4d6Bp/zy9WlTcL5Dz1Ci5RUHvKDePgIH04JtyjKkKfpPBOFPFo0nUOGgWN3ETvZ3MywL0eSUU/f6EtVxPL9peNN+7X9lJz9G/r/DZMIEGlkccQsglFPgTsrSpJ7GxQTc2Mh1ais=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743115194; c=relaxed/simple;
	bh=VXymcR0Ei+kjN75UUI0eOVFiy87YrguhPHE3OS/LodQ=;
	h=To:Subject:From:Message-Id:Date; b=Lebb3KqQbw0dMbMKoMeVb0hfXZ4bNG4CM4c2YLsnjRMLYoLI+pRVhwXNh7r8uEk0Vs/IcBZ+CtSiG3ofyfGgM9Gx03BKiYRCB/5sMYZRov5ieStjmp6VU16Bob14wZJX5lzgKxW7bpsJQznvIYg4QY+QFqbt1cmlggqNLdkV5ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANbEOtMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANbEOtMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B6CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743115193;
	bh=VXymcR0Ei+kjN75UUI0eOVFiy87YrguhPHE3OS/LodQ=;
	h=To:Subject:From:Date:From;
	b=ANbEOtMvnunIzcpAT/6Mp7Ke0+1f5gpO0hM7SkpNaVBusZyuDju3DYD8affVP/uKN
	 qMswKOAX6RjrxT+TaJuc9KsyuA4QPm3qF87fHyJzaWvKh4xCtH4PMIIzHHNjbEjUga
	 xTVzXp8GLrpbk3nsWHsM9//vNWItBSYwsndwv3iJ+yDgDsXhHkOD66tqT3RDYHBZnu
	 i0y5yCfl8tu28nR97JTxTl3qDcrQwxTnaSCbGu1RHZgnUsnKyopAaWmO5l8ToNrWIU
	 jiSTDOns1gxxbiCydhGp/oswzp1pUI2UXY+2YQsDRfryOQq9JS/hKs6kCWqpGpJeaQ
	 fS1LPv1X6vmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5CAC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311519360.5084.6517646418604277055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83bb199cf181884d48c2264094e9635e64a009437767dbb37332550a023373a
Date: Thu, 27 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743115193
