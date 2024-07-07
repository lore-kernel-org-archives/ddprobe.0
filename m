Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614042E85E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720379183; cv=none; b=muvDMQb7COiurQ5aIs7EU9c4DD9JPJV5toQzEsKoC6EHVn83/ni3OiSw212CoRTQz2FRfXQydlY16boQkKKut/rIs6OjXa4zavQ5GYLmaWNZGcrGo+WdFuQsWln5JHby3wqNsKzYyK35b097dF9q1IR3i2MoNY23rDlyqXxgDeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720379183; c=relaxed/simple;
	bh=I6UW1ukRs86GcifI2JndyW3ni/pkcVU6Np0iFQ2Neus=;
	h=To:Subject:From:Message-Id:Date; b=aqg1YmpVTQlzYV46AgoxLNy2l8JxMbaz1MfpwX3jNtW7KyKr6/t5PFk5m0wT1hARRD1+iainS+l8/CCirv3ynuQdjEsHZUENDXWwNXH+rP2b63mchqgjhrVr+fGtEGC3xEWZMmSGGIxKbHwcb8POE9tc1U1MofcB7cc1LxlDzSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BE8trzuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BE8trzuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E579FC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720379182;
	bh=I6UW1ukRs86GcifI2JndyW3ni/pkcVU6Np0iFQ2Neus=;
	h=To:Subject:From:Date:From;
	b=BE8trzuRH0Lk+RdrN07njHUQEK6Z++E5Vi1stzzLhyCW5ghRhd4oZ5+r4hPCRZagK
	 CAO+Sj+8YcGmjVdkXjN3o7w1glDrijugpc3h0w+dyFJHF3TF2qxmyA1tUI1ungGUfh
	 NzIFnSJoFJieU6uP7g4arxSeJ5Jfjrff9RDyGVTnnjszNJn0IEePdwQqqU8Dt5vwAo
	 i8XcTbWaO6XIqV/SYbdMwfL+L+pve6xG9EtktLuJ3i8CGR/1M+WFDA3iAjutqSgPiQ
	 53dTK+LQElxlrOBep9WrKLtOb5+fydOL7MOkPO3Txlp7h3YuuV/1Lx9otTH7Kbr6Fn
	 sKDs3LHfMu0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC93EC3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037918280.24286.10580369837945552502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0cb4178071d1d8a2e28e3660348b988d600b2440828c423e9733a4a562bf1f
Date: Sun, 07 Jul 2024 19:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720379182
