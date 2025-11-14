Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B4335898
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763160594; cv=none; b=qTNR+105WjSVXiY2bKrWyl0SlVVPNS2uba6teosIESTZceIUG0THdKIyAMAgoMFj+MUbs9YZcQxFa3WmlGK0QLm0CH79HgE568Ld1TeetWh3i1fqCk+sufkQKSa1/npWdzvlNW7DKARzMtnUXNIMmVneWXEuRKvOtQzBIUZSiy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763160594; c=relaxed/simple;
	bh=EbmFkv5yTHBvNoXlsU6KQvPRktGP2X0jUNj5k0mj2QA=;
	h=To:Subject:From:Message-Id:Date; b=CtCAVUVrTMAUpGeL7rw8UOPit8Wqgo7DKRnamBhCYnJrvjX53eg9BSbffPbN8WXXYPoMv6ysueIgC+ERG+CbjIFncPgvt6OXOklN8QvFikfSn9czAA/ke5zJb51v0Aw9BLcCF63EvsaBpIiY5iqve3h3Iey6/orPmCdxMaLYLlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeonUVeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeonUVeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020CC113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763160593;
	bh=EbmFkv5yTHBvNoXlsU6KQvPRktGP2X0jUNj5k0mj2QA=;
	h=To:Subject:From:Date:From;
	b=AeonUVeUaMwf0sz2O+goatpd1EoOyd9BTh/XlomW4eSqRC9K9ZAK45te0wmROFfUW
	 V/HLTw6GWbWKMYxsHAq5du6JwEzIaq8FdTuZesiz6zC30li+7xkUzN7EBvjzfEfusc
	 PjGblH7o/1ddC/BPhvkg+KIxqqVcJjnVbaoK75LYm5Z8uSsV70/7lq5ZCyfo+MdOHK
	 1LXCo1S8WVbiXWCQgIpNPBhQKgtKl5MFUoND5GQWSmGwlgvfTQ6ohpDRBUlDUYi9n+
	 DMQOMk7tId4selyuvwmeJnqvrmNjZh6JuL63+7EtOufMC3pNdUWcfKSnrFcHJ1ed9f
	 dbJqUiFQ8hn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94989CEACD2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316059357.32489.2305392944600065675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd721733096fad2fec0188eb9dbd301d7f9fa33e9f2c0eccdb34fac5fd18729
Date: Fri, 14 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763160593
