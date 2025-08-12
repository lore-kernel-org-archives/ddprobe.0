Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83CE2E2DC0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754987394; cv=none; b=s5+dC/Fkoqb7CHIOMMzutqG4MGQLJ3Tb8xKotcqM9I1JZPNiJbrMb5pWX1zS2TdLwDfJjJ+sEQ8SPiKuXwWR/lCDs+w33+m5IEQMwFN/S5A5aWzp4F5k/vGjNLhLZ5QtoG6JdcapugxqGoxSf+dwL2V5qQ3yK0MPTpcq8otsyN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754987394; c=relaxed/simple;
	bh=xOFvgHBmarX1hvgofGhHbHTcCXREWMvDNtdtI/fOB/M=;
	h=To:Subject:From:Message-Id:Date; b=NBCXpFVo1ZhoOOVpRhI2V1Mkvo+A9DebQKW7Xhtoi10ILArVas2fcSBUdsv7bxHaJpCJv9fOpscMuI7E3uQqqEeuT/vN4S+ez8mjJsYMtgYubHLcDkREq1gPRIzligk2qLcB5wVkyfNs+hCLL+9HoGa3Ax0zotdJVBtkbSIPG7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpihEkRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpihEkRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4693C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754987393;
	bh=xOFvgHBmarX1hvgofGhHbHTcCXREWMvDNtdtI/fOB/M=;
	h=To:Subject:From:Date:From;
	b=RpihEkRMbJTE5P0dzzpVm3Zkj/8ABic1obNNXuNZ8d4Mfd4ytxdLEuYYFdois4RdY
	 cwMAqHeR8ptvskJ08BPuU3sxGU09MjQItSjouWsJ2VjD0aen20r5YVqwxQNjX6nQe2
	 54HBwD1Z7H+FZUIt7MjFUVAjatR4C1ZnF5q/pt5C9wT7zAaPfnsO2+PWmQUOH7pUsb
	 aOfAQDI5ANvBCAQeaYoUIlx9HPelxoDwozrVdAKxI5ObbQfgLjoyQe3C/Migu8viMa
	 4N0KvrmdhCFXV03c1JIQvZAclqyqud68AkGTGDSuy3z5V1q+fxiDnk9lZZKiq1zbyg
	 GgoHJqGLvwP/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063FC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498739358.18794.14645383821167996510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9645becc703d716b0efdc5977f438e4a4cca226d377326aaf6c757158e39e93b
Date: Tue, 12 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754987393
