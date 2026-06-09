Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C4540D573
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781048734; cv=none; b=mjFQ0kbukplrsZ8GF+QLH17qh5pol3A/x1qX32J6cWQbdCZjR9xVYjWxNUVoZvy4LGIIak6GzKshy+dD+v+Kguv29KQ5SiHLIVKmloAHYr5nhn9W0dgt6pn7MKw8rmijyhaiHmBxOZ3UzMbU6ahYKObdcMkig7danmCXwztxfQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781048734; c=relaxed/simple;
	bh=CzupOrgQCWT16o4b8EDONI6PjUKlqqt3jbdWYKQFIq4=;
	h=To:Subject:From:Message-Id:Date; b=fVPvyzlt86ao+Wn18kUJz4JSdYQ2IPXQ1o1y+AseHe/KYArChHpnmw8Y0m/T+ntqGkb4ckJRUT+xROWVc2ReFMXvD2/x/p7gTlV6mcb3JatkXJ41kjHZ6HxD3m1AJ6675bvqDuk0qnBz89/Aqyam01H+2XX9xtL7kbjbsS3U8Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PESD+SgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PESD+SgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93B5C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781048733;
	bh=CzupOrgQCWT16o4b8EDONI6PjUKlqqt3jbdWYKQFIq4=;
	h=To:Subject:From:Date:From;
	b=PESD+SgMp6PZagzznnrbJqYdQ1OBPxgJLO2Dj+z/FJmQZ5iPb+OtRfRixDiSvWYxG
	 0/a/dQ5i6aZGDbt8bv671WOJjwsdB3WRAbBxrpEuj1PsyocuJ8goMWd9MNqW3qFvGD
	 8U+b4L9eoDHVcl3ISWsECpcrSnRmvzG8drhD9AjvBZw8gq212/J/P+/pX+sOjcGIgz
	 rfkJM0atMCCTWtIc6V6xR94DRiLT/spZC3E7VsVJY4LbUWqiW0QSZDIPss/S28CeEd
	 h1U54bvtomTX64AAzdFZvsRViaWDrh7ziIzvotI46ujWX41wB/qUmQw4QP7f22W/qE
	 brPghoEYJX8ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC96BCD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104873368.27080.1133703904505065812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7323241f02b15172aa5cb03fe5fb70ce745b16a6914b857b9bce0e9c62ec1e3c
Date: Tue, 09 Jun 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781048733
