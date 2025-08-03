Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32949176AC8
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754225994; cv=none; b=ssypWFkYWEfooRKBHYbnBavC8uwo2r+CoeZF0vc71CmxK7ftZabYICHOvn74ZrobT69LfdYmz/PFPEtdCEXna3RSsypZY7DuSHE5pdz0FLZrOLtl3n2Y1Izjt6gE0Kb52/yH6g3Vf3xrjiRwRQ9Pxw26i1SC0FTZdJm3AHr/8gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754225994; c=relaxed/simple;
	bh=YzIkXyxolK6Ca+gzgQ99bY6fQDL7RdoKKlffNrtTynk=;
	h=To:Subject:From:Message-Id:Date; b=QDtdVPY7tZcopKlQq6QW3ABEMXfD7W6L7C8L1FVqsrEvIu1nPsP5W/nzp+ACVPFZJB9JUK3SUBOtjkx5QQZk1BXgV0uUf/wp8THrDHp/QGUj2PxaG2faBR3/EnD2SuwX80aRNSztkxiuLG41St1FC4G5dJ7GSQiCgU7EVo5H5gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU9qntQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU9qntQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754225993;
	bh=YzIkXyxolK6Ca+gzgQ99bY6fQDL7RdoKKlffNrtTynk=;
	h=To:Subject:From:Date:From;
	b=pU9qntQjCkkKn7pE+3sBeFz90AArAzNrgF5akL1jfFNOOznyt3EsXAn1IAQ0dalSQ
	 WMjXALyk9uXSJgSx6GPPVcpHBrSWgMU4P6vRUTQRv3nqSUWOCjLLRS746A4O3bn83K
	 41cYCfPD5N/YY8upQ1tAnyx2URA5Ms65bjXIvgyLPAAeJaogYRLJsBBXmtfLyidABG
	 6U50o3tYp7Y1QCOKOcEDDNRC/2fCJXlbc7Wtt4eA/qa6xUGW91jQ9TNo1WXE4iyFjL
	 iwdrilpbuNsWZa6LmiffgT+8cfP83c1QKD+9/LR91gL5z2Usv+aawt5AqFxFoZsCRn
	 JQsURkCBGtv0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E19C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422599357.3986.13344661841852755276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094d08307cfdc8ec2737b82aa6d539a753620c285802c445c96a91050e0eb190
Date: Sun, 03 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754225993
