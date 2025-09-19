Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A529478
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758251394; cv=none; b=KgzOGJ6Oep9yZehOmebyIkeElYXkHHSBbgyeitSrFOitb8OR+n2B3O5v/ZfJg7AP2agnilFjUQRjMipbRiN8+r0uSOOPTRORrBkJcci6zm6iv7QhkJ5An3b/emlEfGikOyCR2Ll/LeMqtK7kmxwvZy0ss/HLM/kpOLKx1wLCsd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758251394; c=relaxed/simple;
	bh=/yPAIkGBuZJQCBTAa6+5Qvtwk4t+N65UDXYVxBToYyY=;
	h=To:Subject:From:Message-Id:Date; b=CO59AD/bIvtjV5ce9zmYZMgGTsAFamk22Ehg+dRK+P9kpLQ8WNre3/fIPhqz472Iq+kDZZGd+78iIVi3m85vaWuY7WDC7qPlXGHSXVj5wgILqJfJ6WvHBtJNOZMrltF441nNDkZLZR8EXqco32q61R2PplupFNhW39Gx3wmnbV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEvW7e5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEvW7e5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A80C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758251393;
	bh=/yPAIkGBuZJQCBTAa6+5Qvtwk4t+N65UDXYVxBToYyY=;
	h=To:Subject:From:Date:From;
	b=UEvW7e5xmn8P1fTWAFzy2PW5YWkdIbfCjqoXm0FH6wa/tO9LcXXGibqGmxV8MpGUW
	 i0Rs82iC0xO6qauwKa+wRCibtrh226ldo0qfbduVj208M9yVAU3f7/x+hhJkCZS2f1
	 We2r17W86Bt8Ejp+YXGIBZ71vzMTcA7VzataZjrjdl37Vb1GpkOG+WKY2hMZ+/Q9QR
	 HTteP2/ydtAdEjth2Nve6CMSwyZW6gPdp9V4zfOVdzJQJ3+Cqyff8DCDY9i1YABCPB
	 aOid/KA/ngj6KPOkivwS5Twk5UYJVtXDvYEd1GuoC5lqHWGIdW6HwbHwQVavJIwkIp
	 UJ03HjO3Ejddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92024CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825139359.8029.8266713994726367464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672c902bdab02c379df7b3901c0d2d3d9d878c7399789d3845ea07d44206bafc
Date: Fri, 19 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758251393
