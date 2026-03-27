Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E226381AF3
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774640094; cv=none; b=Ovvk1z4XieqXhlPa0cl0tpt77gSjBB1yZsWi7irHtgPAMSiKrUwhNI9c809OxbBrG6yioI2qPKdViYX0u/XTSF0EveTeY9HDkZmh/ogglzm41ag5qocJ/ax7GDNMEeNtrtCCiyGFHvKvPR1V8WUiPsp3FmqLrycyjby4mrImnuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774640094; c=relaxed/simple;
	bh=QyGcUbZojiZA/+qv6yiMRykiqZ7zaskThe0HapYRoXw=;
	h=To:Subject:From:Message-Id:Date; b=o8+OS8dfNDQUo3nAb7Gbk4b7kTIv+TA+Vrfi//LRvsNi8dPsh3op9IH+uloQunTC4a+pkxyOflWdnOISmiuFciS9Brre5gTBzq/VI744Zzog4u0y1KI0Fk20gSvmpPisPBmb7c9uaaGlhQTMI9NFolTnIRcDbzF/m+2lgzVpmpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYUGt3YI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYUGt3YI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B538FC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774640093;
	bh=QyGcUbZojiZA/+qv6yiMRykiqZ7zaskThe0HapYRoXw=;
	h=To:Subject:From:Date:From;
	b=uYUGt3YIbzdcNlJ7NahVyWmVeUvKs4yRndbvjDui88iXz2hY0JWfA+D+WlDOcpNwr
	 nPL00VGG0QR+Wax58oy6So5DyBBW7i4VO5E+Avkn8kudFQ/bgaqoy9jZsHIg9q0DW6
	 0/OFZg0YVLT+oi23T6TS4r82LArRV/8kLkOo/Oy4sbe2E/hleBirsJRlcpvRGxq9GC
	 sS517lqO+LT68Vcfvlv1dDhoTFNO7hiPUi52RnpZ+H5QOsDkFjpxaVkle/04ghtbtE
	 L71oIMZowZOHldHdf7aWfghhF3zC9UgdjLJFceiiex3gUSvKZIeZm8Em2iSbggw1S5
	 rcmBhjFofKTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CA910F2867
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464009360.31349.15426454976412945734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5aaa1ddf28e8cf27185813870ae96ad427e9cc228863b2c390cfd26ec1bea64
Date: Fri, 27 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774640093
