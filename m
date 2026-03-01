Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616A19EED3
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772361294; cv=none; b=UlU7gVeKe+gkE+m6wX8SKe9Kud18hSYa/v4fPH8WElKiy6Wik8IxRnROAFIvjV4RrDIQaV2XSifkEF3cgHgUabDUNPntvAYDKQTEX2aRzNdFQ3zVW4L+cCw7LJ4p0r6Y6de3TMU3wnZOXVQrC/TNJ6vHUwallcs9n35DPvj7ryY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772361294; c=relaxed/simple;
	bh=kDW6MtUnTnamChvuxtdleAcQdlYv9QBIQwdUjPzymqM=;
	h=To:Subject:From:Message-Id:Date; b=PHv2VUxHSAOpKo/wmE882YaWojTEzmGbuUO+be0wI5oRj+iithmQZ/xQcqAkJn1Plls84R5rB3lESOEqWwFjkdVLa3grAJGm4o4MI1KcvmffwhDFv1ARGezABTgB0EShBswrDOgrfQ2kwg573eIAHX7aopAm5K5Zf8vY9aPU4GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVRilpXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVRilpXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF85AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772361293;
	bh=kDW6MtUnTnamChvuxtdleAcQdlYv9QBIQwdUjPzymqM=;
	h=To:Subject:From:Date:From;
	b=rVRilpXDBrmHsxN2RI7DPuXojhbvgNlEjYzXGdMkFjkyYi+yXVDx8ct4AeAmlgYGE
	 P8KaoTB2p5tTkxnVI9BTuX3usTxZzZXdUtRp0fIpF6+6LbW6sn/G8UQ0vxY88i/vSu
	 bGAsPHvyW1DaxuQva+V3p9JE++VzI72zcWKIQcDcneB84CP3flwoKHcifSNWDFrv9V
	 amOFZ3f+o1zvxonHEUtmGfgqxtY3LAMOkUfV4HhI7HAE4Qf93G+L3AmzYZwuMP1dbH
	 FbW6JXEyDb6whPmYXxKDqtpsUmVUPlJRzEEkdHQLEOIOHUIJJOeOZfhmMcGIDpMCnc
	 trEW0Rq5+frBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959B5FD005A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236129360.8170.12364432311329967607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b9f73ea7df01b5126fc8974f8b1fd244fdcbf7a5c24c43856eb33b9b74d514
Date: Sun, 01 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772361293
