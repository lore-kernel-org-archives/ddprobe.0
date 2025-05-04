Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309DD1CACF3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746394194; cv=none; b=oRNvhc2z346XvGaw+QKH+56PGkuLQEbRtfpCtIJGwPJx3BzyGtbbMD8cctVfeAnLAA0GBKkhEI5/2HHqEOy0tLHUs4oS6o7dfEByEuR68+KqvmFtJ4RlVSESLK/HP8hfG4k0C2Su82F34MxXCepZGCNYKQKpZB4u9F4Dpo5ia/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746394194; c=relaxed/simple;
	bh=+FDqWrjZfM02ePQHuYlcpgqQdGFOpWzTiWBjclX45GU=;
	h=To:Subject:From:Message-Id:Date; b=CkKVwsLEWwd9pF10Y93jLK3tPMSG4hBHWWxwGiAosi5UJuHlZNJc/jppwuUlcMos8vsPBQ7cM2qp55aApe9skZduE8VPJLsjpByhdGvynk4aOEPN8Js3M5S6iGG8cGjJFyKdSH2V2G6mWcm9Yu62CkfNIwfaipToZMgZMB1x8JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWVSeOS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWVSeOS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B72C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746394193;
	bh=+FDqWrjZfM02ePQHuYlcpgqQdGFOpWzTiWBjclX45GU=;
	h=To:Subject:From:Date:From;
	b=WWVSeOS291uDZfi4zP/xL3LA6LEKwBgJOR3wTMgrno5wm9lbsdZg4HUb6MLDpVx5C
	 BAEPimN6XUuMFXb9hrSXJVNn//NgupyhM/C5xXgP6Qw/6OaaiIWGnsu7AQv0NP4Ib6
	 woRPq9F98265jwpYdih2VMFNpPPhv7XRgdskvHnyewb4+WHYtzAR6RJyjUBlqiCZ53
	 tzb6XCpPrBR+f3rSxbB2+KhDodC+/2XPXG/JsgT6GDG2a/2WHMNTw6T8IzBSjJh+Ks
	 Zot3ehiGiWXXCkUZ4tGDPBWbUHDQiGNoaCrwWg/hGZ4p0OSDpXWEYtEklsyVjswvG9
	 JlCMhZdyob4hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B94C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639419358.30092.607834995285226010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990ef27f0de9360cfdc241569d1111994cbb84b6e5ff05c2f44ec4a757c86214
Date: Sun, 04 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746394193
