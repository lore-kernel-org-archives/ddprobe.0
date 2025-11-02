Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61821A9F82
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762048193; cv=none; b=UcPbROIVJ/vVihzZd5w4zCuwmJAPdmqKAyroraf0zaYTba570BvFiNAW4Haffvc0o6x+WEqnGV6z41GHJlQ0H8TXyUOXFcnEj9CIrnEerOxcKtfBDMtZmnGMxr7fm76I/LRtSfHgK/4xKQw1KZi1ic7UsYwZ+/8XHmxjv7f42d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762048193; c=relaxed/simple;
	bh=wlOQnvlC9xUf83VQCSyRLOszdbyGOu79Z/E+5UTSrm0=;
	h=To:Subject:From:Message-Id:Date; b=NUOLxtO7kL0JCske8CcqgsQb0D85hLvRewhtLbBWRbI2u26XsUETOBPHwHyh5nDGPMXdKwZv4hqCnF0lldx5P2PNW1fftsy5Bcd6JO53gHB2LCE4uB/5O/r1CxBTgaQdQkD3lvIRzSp1a3KyqQOTFmdOWMzvdmMH8jEis9w3NG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtsNFVSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtsNFVSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B1DC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762048193;
	bh=wlOQnvlC9xUf83VQCSyRLOszdbyGOu79Z/E+5UTSrm0=;
	h=To:Subject:From:Date:From;
	b=WtsNFVSh96brAf+g5/DHGOSt2KmnzUkKYwLJUEEFXN5/oYZ0djXAHWSE9PLRjC7be
	 qShkVfaeRnr6WP/5gdi/Fze94OJwvrY6g/QfD9Cb8mYUWcqEb8oJ6/jAASlyMbpwP5
	 PbXQFNSS2Cmru3I96SUj2A0QFpx5xUnWStM86McKIVfQxYalG04PKuBXNdvTl7iBbX
	 6r/yFntjiqY+cHBplj9zfqJUU77OmiG65z6+/9t9SnWEBI6An5l6OgfQsUG78qlEGX
	 AtcqVlnDsVB1f4RVaY4nRkQfenEwMb/5A6aQAtZpKmcKiTuPp2lPrPluIq67ozMcJj
	 +NNHcti9mLsiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4543CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204819362.3376.5984196064255325424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3398822da8e3f0a0ac4a8aa49e9707f34cc158d794baeb94b172af57eaa77167
Date: Sun, 02 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762048193
