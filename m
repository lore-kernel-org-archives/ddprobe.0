Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCEB16A956
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754038794; cv=none; b=COMqpnWBYvMsUdmWy0irHBvyRLpNm863eRpIM3oR3k81ZQ7jErgFxHfRbfsP2WhVdYAt62LlspkOmXhxjEgp/zQG3wJjiIf6m4Rm6vUheF0CfbiSb+jJY/y1Xsg+4rAIjap9W3RujejUMB5UHkyHlcp1PkLJrSo824BW5MYMKUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754038794; c=relaxed/simple;
	bh=mZKlEVg61gXho+ArSTy7h/Sem/MWZtYyxh/ojcE2dsI=;
	h=To:Subject:From:Message-Id:Date; b=e0gRqwmhTPbmIRfVD/lmAnQXHqh3dP696tV/eg0QQ4Peps1ODeSbhTCTu6gaCLcSndbTDNXaCmABBuotlgWNwB8wlMXVupYWiQTegvjGWB0OB5exV8/93QJgTqWnM+s91WEnvjopBhJU1HzPvyrPRH3IaufgyBrBbN2CyRAmxY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7ejaXna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7ejaXna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A529AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754038793;
	bh=mZKlEVg61gXho+ArSTy7h/Sem/MWZtYyxh/ojcE2dsI=;
	h=To:Subject:From:Date:From;
	b=A7ejaXnab453bLi1dSFYqBlHZW8f6MhakV5/uZ5cEm4XrGoTBVfQxFtbu64sTLxv0
	 yI5sQxbHjWYQlrtvVAKITXA1v7pXFS/nzZmNz5PK5QPgTPTCq49EX5dGQrAvrwg2Hh
	 PAjzlX4uQap/APLnYgXkpAMrT1WQYfiPEa+YnldXx6P1++HgfklzypEbhFAq3WnoIi
	 eWyEGZrVuLa24jdGHgL/nZWT5WKQ/Di2DpCay91WJWMA9alHnQ7pHOH9ibxpgjC9Dz
	 SFrqUU5ekBDQUSxttEk+mrfZeCQYCipbNyd0LXRsq6UO39v44Y8H1YAZ/nslTokSJQ
	 ji5z/1rFkjrSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE3C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403879357.8184.18013401305892838959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144edc87a563e5e7b6dcb07f01a3ebafa9ac72b02e7d2ec8d3b5c8ededad8c33
Date: Fri, 01 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754038793
