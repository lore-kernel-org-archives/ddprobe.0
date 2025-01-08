Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B11F249EB
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736336754; cv=none; b=MXb7jtKmsAsXZSaDWX/hdRaBtIvgLgTA966Ji7hMzyMqPmfDjwsRMA5gUMu2ZRNVE3Bf1v56N83nLTemh26fdtW75iDy4VEE+kvgytsAc9X6j7kBw3oFRohLsPtKege+ZmJDrd3M6t6nRnq3AKbY8FKtaA0SvwM0RLQ1J3Ui9+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736336754; c=relaxed/simple;
	bh=mBB16zlCgikbTRsyk9xEj2zhZz6hjeCWFlK97brpxAw=;
	h=To:Subject:From:Message-Id:Date; b=SEG9MxYStzn/KB0w1HwSBaIRUgylX5PPdaVXD+9tq+5lVWmFEJGZy0ZlOznV3oaNZpdvmieIt8J3KxiHgCx3xduECvd55bkwkHWT3r/apvVgOgPPAfWaGr4B0dL8whETK65uy0JmZ2BwYA7QIoMmRjdz5jsN5He89gPQCVzXaQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kf8Adm1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kf8Adm1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6F6C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736336753;
	bh=mBB16zlCgikbTRsyk9xEj2zhZz6hjeCWFlK97brpxAw=;
	h=To:Subject:From:Date:From;
	b=Kf8Adm1Nod8kVKwDEdcBGOakyqxLd49J609LiM78/vp/cFrUkXMTp5UUsEHX/1oYD
	 8hNnJBCO1NO5gzQju6I88flZQJtseKhfO08icm834NbAKR18i3qDmWXI3MeZGLg7Vs
	 jhJZY8GiK/nqpuMyORWdFVA1FgMeavCb05kihDhwpBkp1CMHsQThoHVCsBeXYocVt8
	 LvnzaaUtlPkTYuagHyOsdEjJg3GQELyVMgr1qzXZj0y3+H+W95P5FwTHa0UC4bRROH
	 ZpPXypBDlw387Im/5zeIc92qIwUAiX1encqJ4rpLpGKeXFRvQ7IJg9lR910fhKlE4J
	 itmu4IPm21tiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0644E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633675364.25122.3587543067490254116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44bed8499402501aa6ecc64ae38635f4a2770e16796abbab56035331c2d27dc
Date: Wed, 08 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736336753
