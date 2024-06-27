Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592C514E2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489263; cv=none; b=J43ZhK9zbHI6YrR8NSaex0TL7JJzUf8kq0IJOhCk3ywiDipWuJ7g0KiYOJ0hFNKr62fQ5GMC3szTZVu82tLCE9OpLE8Bi5gu433U4M7I4i9VvADNDTvR3enmJuAVS5uxl/vP4DCSmmTfiVFoPUGKVEc9VLHHXpFAkTxoPBg7wgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489263; c=relaxed/simple;
	bh=L8NwH1odBtGAv/NTfiJxZRmEVrdsyDeXzeCDH1UfBZ0=;
	h=To:Subject:From:Message-Id:Date; b=K4IOI/ZhVfafrjPyNw+APIvTzBS9ZDfl8c+htBoRk8s1zMg119CPKSjIrUrEC6iDwYAhT+pDk2XjDWZbfynMch99SVvgFQAlwDLBcMrHwmxhTQPXWX8XnAo9VnbJCQobvkxIf4c2C53a+9xgbnzzOL2IKfbQTazLFQ/tUPiGAw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bveOTBu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bveOTBu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D567CC32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719489262;
	bh=L8NwH1odBtGAv/NTfiJxZRmEVrdsyDeXzeCDH1UfBZ0=;
	h=To:Subject:From:Date:From;
	b=bveOTBu1sEu6ov1BGT98QErWrDPCugi5hjZpxje2Pbpjk06c5SmqXjZ6TQbE5rZMH
	 JCNEebUW6ir5jna0/UeanYX3ENeMPQNHwTW2M7N89y/WLdeUA4dXWupi3LkC6yVWwQ
	 TnUqDsbY19VRCzNJuuTgY5pRi2NGeX7yZstjFWONj4xpyPGqvyqULti98CCcNzbBvk
	 ZAXe8xsmlmC5IjH3+2Mz0M7kYn/XxIG3FUVYJ6Z7l866KeRcUoRa2qK9IEtao3ABty
	 Dtmn1R4WmJfZA+HyyJqZuaccr8mOAFW1G5Kv+b7EHR3Be6lcrNuU8qx6M32Cm3UhQL
	 7mjiehxFF4iCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2077C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948926278.3014.7340622581919539542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b196c270181076cce782b391b9afcc6ca2ac3bcd5c500e5d81ef09553319c3
Date: Thu, 27 Jun 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719489262
