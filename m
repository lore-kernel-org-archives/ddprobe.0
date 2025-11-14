Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23982265630
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132394; cv=none; b=U5VAYvYnMuAeosBLAD9dcE9QaCKdO+8n1qdCXs8ooZvzThNZbEFT4Fm+SOkzY6ViPjUkBlmQrrvL1TS2qTD3ZVZFbqR8Lb8WZGCGIjuisMZYcnFLdjcj1pnz1sxcfVFWwGjHH72ltikZRk35mDz7DQqZ6yLjjySC5sc8gOsCQaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132394; c=relaxed/simple;
	bh=qKgMU0u1zVmf4ki4xzXsOK4MU98Pyb1aM69yM6WG6kY=;
	h=To:Subject:From:Message-Id:Date; b=bIvt8OYHw40EaJ4fejdvRJEJdVwtjMMrRh8n5/ZoRpvEIJIRW8ESIKRVTJlt66xjLR60wij1eosbLTVDblhxPdKIb5MaUD60vPxAnl81PNQ9MqOJRbTAYvYdRYBMHOqqBaxtMgG8wzbkwxybA8bAnJWsvk+2lW9IocEuIP1XXug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBMpBL09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBMpBL09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0B5C116B1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763132393;
	bh=qKgMU0u1zVmf4ki4xzXsOK4MU98Pyb1aM69yM6WG6kY=;
	h=To:Subject:From:Date:From;
	b=UBMpBL09V2CwK3wp/BESivfrJKiNerP6EI8ZNDW2RMUIl3Ht61pWqInrlpeJK9fk0
	 GmQaa8mi1pKpkT0eoVgon5yaRnqRFSbhcncioQyLC3hTd0HJwmxfyLum4oudXk3jvv
	 +JhaxyCBsR+SRUvbbt/zUQCwlUxUIjXFil9Ai1ys0Naqhb7OJmm6DaybXJMRjfgNJe
	 i1D6ijppTr9/L7S2Db6HByZqn5918Hv8U0U/80NHURV2e/nTdRX2kmkUDcvjjJ1C9u
	 4eM6Eyisug84dMdyg67JRdtCooUskgQTSuMZYopQTnVEKng9cpT1+VeJvSObSKE4JO
	 0Y3m73chqowXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB6ACE7B1F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313239357.27326.1228974364395598637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56f3fd6879487ae753bc27100f3ef3b3edcab9b1d3385012cd4898791bd910a
Date: Fri, 14 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763132393
