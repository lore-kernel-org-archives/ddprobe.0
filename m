Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423102D7386
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791772234; cv=none; b=Xg0MC5h6LG/Yur14gGHCD9RgbvHMOrLWfUzWUGOsR2QlQXda2qpVJ9+8zPgo4TPlOfOyFsufXWTHtYTcKzEULA6HTU7rsjCiOe5C1O89r4j+V2jfpS26NEshEV/hz1eIKER/ZHhYHduQYnoY1D4Fd/HxpWkC+4QDHTikLipmMsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791772234; c=relaxed/simple;
	bh=7nkcuvDqdAnI1oDqf5ZUCnblhFoiBHMx7MDCb+R3gao=;
	h=To:Subject:From:Message-Id:Date; b=EjrzjcPb5eeOjyf2TrRx2Lr/5zMIpixdpctO60dUCEBeCIjmLSsbMaZzK6Pw26OLVfbUpvTZqZx9/v8MbaELh+evOJUPfc1pe1O+ENoUeNk8jaRhb9zw2cbrwRIeQAYF1cNSCL1OF3E88QMSlTl6wAIMOZSavyebvOr0flrke8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrWfT2Ji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrWfT2Ji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDE2C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791772233;
	bh=7nkcuvDqdAnI1oDqf5ZUCnblhFoiBHMx7MDCb+R3gao=;
	h=To:Subject:From:Date:From;
	b=QrWfT2Jia0F/MePEw/MQQfUDkmnJAMT47YHITo0L23La93lyyz1HTYhNaRoqO+nZP
	 todXK9JKfy+OxQUAQX6+9D+51RajMmXlZtK/j03VZtoh1yx8ZYNXthBdv9GNtx07tx
	 0A6zeNprN3SLi7wl4x6KTpHvffznQY2zeQ24No0eUZ26v5rJL6mwSGS4qxsddR17HA
	 +Un7j5QQQLAFNgC7GquPvPXUig7cXIlMfX7nSY3W8pAoahFNRkKa2VncY4n72YEltr
	 ZPdOZg83aCl+ztma5CWu/UtSfGXhXk92OSqxEdKc4XdbHjSbubdGRggtiq2+GUzDuH
	 79tX+oPSB3LRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C7CA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177223368.14279.5682413991211486156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c6a34ab0640f191154d97e54de80c388d0839485a3e83ca57259546ba7e15e
Date: Mon, 12 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791772233
