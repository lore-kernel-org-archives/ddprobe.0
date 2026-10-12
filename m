Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601221DA23
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791777034; cv=none; b=rbBNQoyxH6g0AE3KFz20HK5Ae40yOJMaZbwul6LlyXRM9BPaiMjC08deP7S8tpRqz4N8WixoTV8PaYCpeh7agYVsJUQdJxCGt+1lmNWodEUy/OXHm2j77pMWrERj2aR7lMX3kjHpNlDmJCYILNBAdOUwJdBXwrmah7h0nu+p5xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791777034; c=relaxed/simple;
	bh=rRBwSZFAdsOSPKNLw3QeeYMmJgsymMdwnIh+euRZmcA=;
	h=To:Subject:From:Message-Id:Date; b=koJP0oynzy7uN91GWjl3am6GGxfVxdCs6Yrg31yIWWitNX1uI8WqornIkDIIJiPbgcbc+TbLHai1LmUtfd9IgM+adVA9KPww4S0vsdyWG0M+LJyKh+5RhIge9C0KtBey6UHatBa+9ihU7o+aQZaEvmjKUyJ6NO6jwNRQ+gbCCXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGbkbfXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGbkbfXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6580C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791777033;
	bh=rRBwSZFAdsOSPKNLw3QeeYMmJgsymMdwnIh+euRZmcA=;
	h=To:Subject:From:Date:From;
	b=eGbkbfXkh0Y4ZqvLWFm4Fx0mA1OP/m/wkL3etnZlj/j4t2M/HpubTzrI8DZRDTdZN
	 eGp+AWD2OQr2Nry6ZA1kHhwm80raeIa4ebrlemAXuefVbY/j5fQIWqW8WSZvzFbijB
	 Osc1pOjcWYeWeJT+YZu34KgWYbe5yQvoJN6fIa4qpXeWh3rFpHPEBFyhl6j15A2gXn
	 bx16qiZP+w0mn4fdRWPp+AYTgbcTLXAMk3ykKTUJY52JIG5QQUDeGr4UMXyCOV5lfm
	 GDSSTLJgGVCNkKSz6LJ7dmJsh2zbhTUMprAyrDCTZwynzKLh5KLgimK5j43ahrY66n
	 B/174jdMLFRqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA22CA9EBB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177703368.14061.1263822104092926831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35ca36b8b5f733168e0a5bf6c7ce657e7d72da2f5dfba02e3557391e0d0bfa0
Date: Mon, 12 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791777033
