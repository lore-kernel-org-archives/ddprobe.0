Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 937161DFFD
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784425714; cv=none; b=kYuH9CCWEAPyu5S4GIJfmayfUYW9FafHGFcw1TOido3kKWAzL9twj13+oRdmekvChxzKQXYIy3oL/zym1+URFmVymVRBZ5gK0hyFkXxEEvRyTNBpDcM/WKTSp45zN+1O5rmC0Q15AWWCOFSgeDvMaPQsoeYuCN0ZblpY/YqnYFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784425714; c=relaxed/simple;
	bh=V8llL2UWA/BSATtp5ihnVHkrZMxlDNpqHBT4gTdAuh0=;
	h=To:Subject:From:Message-Id:Date; b=SCXHeuYkMELvEtcBnvkVg6iHoFubJ7knD4bWzyAtVfyNYQHbe91Kzv4C6LvhQ6CGVtpbuSvGmZvbtKI/ES0qa8DDP8QXABWtnn0A5XX++HA5ZxTcmBslvDgBBfptUHwxOurjq0aLO58qusa5TwrZ2ikonvDMzGO59y0EOO4YzLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKdt1hTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKdt1hTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 185DDC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784425714;
	bh=V8llL2UWA/BSATtp5ihnVHkrZMxlDNpqHBT4gTdAuh0=;
	h=To:Subject:From:Date:From;
	b=pKdt1hTLXIVdFDVKoLhjC2YglUrQG5bXT3lv0ntzHHojrRoZk/zyvds+Vik6Ky5W1
	 oI9Sj65hsVx0eBhmHUjVfUklYXSUdfBe2zP5KOuFphzqdPCoo1IlfhnssbFYV2bSlR
	 38EwKK1RLv5918rG4h4+ITRACJ32DTZgiCkvetvCtCx+dtZA9jXfiJti8WQL4xZpEs
	 i1usnY2kJgWpNzj0KxCeZXF2m6ApxDES9dsYhbqXI9FLvWtpUIOVR/KmcwuvesPOg1
	 aeOMqCTBPL5cJ80P6QeNYG8piohjvn6YrKbx1R20OPRktnkZjSLes2cd0cqqDuX6di
	 pVP66bpQOJNjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAB7C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442571379.21325.4825564725248991332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e864a9ff5bcf8caa05f0c0fd525c3beab528bfc8b48cea4190519187c806bc8b
Date: Sun, 19 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784425713
