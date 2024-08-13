Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EDF18C3D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723570554; cv=none; b=YHWHtxwuCf1XRrg6sLZbeygcqAajJhrzqI1nw36SgfvYm+OAPOczq+/23WYKowb0ZMc1Hnp1or36eFXUJ3WDWFEIohGi66OtzKByUn+b1RUsV/bIhSWWjA/wYqrZXPwEfHclUro5LDNlDiTugQLi7Y3fswKAz/78slntOyAjV0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723570554; c=relaxed/simple;
	bh=959kqjP+OZiirYbCrv6TCToQSuacWvj0FOGC36BA6HE=;
	h=To:Subject:From:Message-Id:Date; b=Yf5xRo7gHVmmWeULtxAvr4QnDILPlmRTZpha1KTM5CGQGk34+oWHne41T0y8M/f+Wz2NCoDKPgy5Kq5dKMRA1rlS9K6b2zg08JeXi/GjOu6t5VYhnjwZkbc2IUYJbu3dsqAw/GdKbdxmi5pTYYLbDx21+J4U/nW0CHhlMDn8AvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhX201AZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhX201AZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B574EC32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723570553;
	bh=959kqjP+OZiirYbCrv6TCToQSuacWvj0FOGC36BA6HE=;
	h=To:Subject:From:Date:From;
	b=uhX201AZ5JNchlrmnvsrCTDJmjHKEf2xCHLgf4U8NFBolSdN91LxEFePz1W33sF6d
	 ZU2gCirdxPOAJlKgirBHaWMUHZI5TPJRrfiferENHpHYAfXEzcdc1j+SB1yPhBKuyi
	 6wzwO55rbu29A5PMw4qdF/OBHuK/eH2h7PUmxFF1bvr/02P5ZT+PTEBuCHBAU2IVU9
	 7NXv59/hlwIc20hFkkRGhBC85BPbFPD8z0tyViYgqIe4SLTeofCjLUdFpLAQbWzx0p
	 cl7G8K7plU1X0/+N5nl6nOUO6EWIfEOuwAiJCMsh49dvHPR5a2Sz7yr0HZ4mzXdpyE
	 pQbfukZ+k6WUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E7C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172357055359.32568.9492414594988307246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98840478c1e303d2f4d6e26134e154f1b5acd0fb843dea660449b973557a5c3f
Date: Tue, 13 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723570553
