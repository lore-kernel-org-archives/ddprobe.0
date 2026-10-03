Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BDB26F288
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791037234; cv=none; b=hFzlb+4OhtEkmD25nPX6O+pQ+/aSn+6gFijb1vXL0d21HzFNZ6HTUULs+0pAp8dEVYjEDDiYpcnvxcrEaP6nnXyyh+gqj67259NCM59usbKMxlQM07SBZF7HDlC534dwAwmlHbMOe7Gm8SvkEeh7wfwKDzYuBTkRCDoDYJVeJsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791037234; c=relaxed/simple;
	bh=KbRvQhv3AHlT0OG1l5+QWa9gpyXfN0eYBlPDmCFZPy0=;
	h=To:Subject:From:Message-Id:Date; b=n8gHt1G0u8L4o2pwMCzvxSCnfZtQl6KsV0mEdBEHS0K8LhGsmVg5Aaftmed2DpwxNyC01Yo9RT+eHtM5MrxsgPbGhrMxeOiguzA+rXD3otXJ325iUbNLJQojr/9f4lVKus7W7+KpsTGq0I0fqTrh2xKs+qJ/ydbDFob0A9HLfdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSctAn81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSctAn81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA64EC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791037233;
	bh=KbRvQhv3AHlT0OG1l5+QWa9gpyXfN0eYBlPDmCFZPy0=;
	h=To:Subject:From:Date:From;
	b=bSctAn81b2A5OfuIaIF4KR7I7/eMHC3aHvOKqVJQ3xUsjV1ookj/use7+minWEGw2
	 xnKZlbV/+lp+3pASN33+8+Jdn3jG5QTBrc4S3OrswTZleAqzopu0DVf7lNPA1MHvT/
	 iEEaFE/raT4jp3QLySZeKr4HEtlnOilg+VM3OwtoouUt+5WKiUpZkZyjrsTrTqJEUv
	 De0at82VxLgSVVaqIyfF/aO/Ek5v+vP6LYY/0el+2BCVjiuAAPJ6ya50l+eNVCksXI
	 cKzJYMTmxUwIg+RSSRgsTDWpDrdJmvlOqo7Dm4a9eoYuWrvPGysPJJZKXQ1WPeMc4B
	 puJjGLYliaBxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C4DCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103723369.10619.9906686692824262275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85f20edf45a126ed729bcc7b97526f5139b3f1c0cc5e9809d369bdae67c2553
Date: Sat, 03 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791037233
