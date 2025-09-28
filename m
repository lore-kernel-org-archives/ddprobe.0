Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F69C2F2E
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759072794; cv=none; b=Z86B65ivtjEi7fSR60RS3htu+wgumrpvkx1aCxWS7zdWjZXVN40cL0t0mCn8pvwHRg4I81e8xGW6mAlmYJ+qJdmTVCp4iBHvtuQiG/dGhx20ZteUIBbiFoP9I92gQ1fXPQouz/pH/kVBCFoV1lXHfg5js+a8N49FPAqOOp0cBE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759072794; c=relaxed/simple;
	bh=tp8IB9jb6+GRIB0pgfqyzR1GEukh/amP3ykX/PlVOjI=;
	h=To:Subject:From:Message-Id:Date; b=HIb6ptkKcElS1nk2KE+lq4yDIOk88UC3vzXuyN2VllWwc/ud6zenf7nSP8R56Z4dpeAG5II8G0uIONaTogNVrzm8dX1LQWSDulBBrdFuBTEUvQsG5nuNN9cFQlApXTW/7EZ42Y0jgKfMUXbBlLpd/KObeYS58USvNaJ9s4j8Hk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJfkHrIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJfkHrIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C2FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759072793;
	bh=tp8IB9jb6+GRIB0pgfqyzR1GEukh/amP3ykX/PlVOjI=;
	h=To:Subject:From:Date:From;
	b=rJfkHrIp//L4mU7eZkRrUljOnrPYZo/2XVFdVf+uAEsqkmG1VvqQ5loBO2Tk2WCPr
	 uMvk9EdPWQ0p08HlL8Y6uMKGgk0KFDtfr4SS6qCEvJFGyfi7FluO3MsxjsQPd5resN
	 djJvWJp/8Dw+ksjNqWMwS+380CBtie4EO1qkmX0DlLvSrab7LtpKWe7cPtavMYK/Ij
	 +vkgPa/pR49hlm9IRfjSL080ovf5jMwZJNxK/rOyT3rUpLuzf/C7Ib7eVPqwBsL3tx
	 6bL+EMQ1AWw73VNX6ONclavaWoRYGdhWs49+8DQRKbtKIsY4MtJ25fq3YkL25/FxRg
	 rIDeoWSqSR2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94279CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907279357.15498.18241861120634244274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e61bbdd76c2d4aec1ab1f314c766424736ee4e2b6300634a53b52682374ce3
Date: Sun, 28 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759072793
