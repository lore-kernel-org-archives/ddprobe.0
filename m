Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F33A59
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760141394; cv=none; b=f5B8WjKoyTAMq1s+g6Eo+s+hSXk70bU2I+uresjyggfQm4IFREichelxxwRBYozJpgU8WhbqXWoO5ItunY2KyvZL7Flsuu5x0Ui01ijnL9qKPvhIWUWSwzTwBwsJ+MxP+U3UBF2h1Rk6NPSmuCqPdrSJFRMhLtGAShhkSNg2mDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760141394; c=relaxed/simple;
	bh=SKzDcWfLwhc//F5sXF2Dwl1suceASN2hnSoIUghTLd4=;
	h=To:Subject:From:Message-Id:Date; b=ioAqqzaSOZr2zc4m+e1y1mPZnwEYLln0jcRzpg2A3HgtLOq2+Zqu5LQUmiASJkaxhE+rKaXKG8SdgfIOPMt69XzJ9tGjOrvGXPMxLoPK5T2Et24BLSPIJcKSu0mfjEzZSiT63eYJzPkrlXOvlJcVUi3Iitfyh7/DXEX6KhCxciM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjtPSk09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjtPSk09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760141393;
	bh=SKzDcWfLwhc//F5sXF2Dwl1suceASN2hnSoIUghTLd4=;
	h=To:Subject:From:Date:From;
	b=ZjtPSk09MeG5rlgcvpypTWrRDBaHeNWD+XBL29Pvka0r3wzSGmzldUHgq25Usta4s
	 QzcFZoDIxuNTb7vd0H4pUoYpyk4B+TSVVq6DLabE1JaAAJ+yt3M3It/D4B47k5lvTc
	 d5xjvzsRHmo8pUg0zvHrQhQTw6Ro2va1qJ/Yp7MaQ7h9iw3zVMpacWxaQmtu7vCATQ
	 gnxtv5gXnI5njYjDqY/aflaDYb2O4x4nz6X1ty59KGOARgZceAATg/tmxWA8ekuqxM
	 bn4sOM0zWbPPMrm1OVgSRM0oiZ4rsXGMQAPOrWUHnChGswWoPaD1tqsfToXKqSBbKD
	 feFCSiAf0mTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA9CCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014139358.30406.16535116862739600817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5249daa4ea7ae1af74bfa37c00db4d93209adaa0640700aae4c83792e87eabc5
Date: Sat, 11 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760141393
