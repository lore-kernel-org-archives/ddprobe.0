Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6BA6EB60
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716489203; cv=none; b=OZrcAFy8aTjNxep9h0rcEXDP8mqdPtbmEFR4VKGm8ax9cOaOiUiOc7TkXKI5R/83BDJtq5KEanRcnKg+MmcTbwEp9KhHyiCBw8SNBxPZbHjY/q4Gu65F5kKyrkGoXvR5ttEZlUi3rRltun/YcsEPu/CtC1kvpfA34EB8ldKoGZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716489203; c=relaxed/simple;
	bh=apzIeOToJyodk/CHzZV1zMkCbzPDxDSsJeVNkglC5+w=;
	h=To:Subject:From:Message-Id:Date; b=SPOFD2Yc3TsyoK5nkngMwqvPmXckkEXxtOGiDQiAcBHIT0axCVBxCk1xk04dx5LJYk+Q8w9HekeE1Q+K0Vqqj2UnFIjbDxkcyc+1W4AO0DqsLK4QKgaj37SassWiLs13Lfe+TtPDricVIIx/oDHwf8rME4YGwpmv/FTPoo//hFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+dmVYoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+dmVYoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C40C3277B
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716489202;
	bh=apzIeOToJyodk/CHzZV1zMkCbzPDxDSsJeVNkglC5+w=;
	h=To:Subject:From:Date:From;
	b=Y+dmVYoH+2QLgYBY0zVd9NKcMGPmsiUGrQadH1IzONj3uRUNaY3ynqTdLoWrJPelE
	 vpcx7u51ZnR0jZCcJGOaldVCzyyJjedSBsLC5XDU590YwatTGWMJ7irRUJyd5m3YyN
	 xGaO5Qmz8xjanD3LkWVnv6p8SkyO5u1ULulZQQ+3anlAPECer/YpSmAbB6nNO9zpRK
	 +9Z//HLypKjsi8GIXb9J9xAowVAQ6waJQlmjrEJOPdo3MFoU14DKR0B1IkxLHpimAT
	 Yk+a/h1ealfxdcuF6MewBOIPe8R9z1ETI41GSLy5HKs466O43GPV+xjZi2Lv9HOCiZ
	 PfNYqKI44VWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF906C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171648920277.28504.14498794864006879496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbde893e07a0247958c3bc978e874c53378e6c7fb1b5d1acac3c2978b57a1c4
Date: Thu, 23 May 2024 18:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716489202
