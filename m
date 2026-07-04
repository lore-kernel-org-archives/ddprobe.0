Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5916B1C84DC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783201114; cv=none; b=TtqQhPhtnGPImaojfO/l6DAsr3LQv5PfYbU4Lhmoab7LucXDO5MrkOh2pFPZDliho4TmwuLWs5jpH+SYYrZ0wAC4YMPEP777bhz1QcOikdC1sgc2ZjWZ5boD2SIZnUQ6NEsTPtwmNHbef7vWPP3k81p+d4lJEBJW7baC4B+LACw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783201114; c=relaxed/simple;
	bh=nYREJTN+37h3i10zSHYPrBpMn6yiYsgKRhQg9iYWHb0=;
	h=To:Subject:From:Message-Id:Date; b=JRQ+ilAdEMl/IyK6Hmk74alC05zqGAoP3G1j6i+5kqEe3WAwkL5hu/unHZJC380+Eruy7nh9wcM5jumO2xP8sanmtkjKwJVtjlb2QFzv8U9Hzhfqt1ptcQ3LC9TZGzk9P+ab9KopxbXMsvf/wYek2dXSrXSGe3HgwY8bgQzO50E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cp4U3EUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cp4U3EUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF06C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783201113;
	bh=nYREJTN+37h3i10zSHYPrBpMn6yiYsgKRhQg9iYWHb0=;
	h=To:Subject:From:Date:From;
	b=cp4U3EUC7Kquv0uGNpzWK9AErzWamhDbdXkk5HIQ4Y9pcmD6HqqjeiQ9Oqadx0r1g
	 0FQb25nOA0p9jwqDvl5i2DNWJC6Dm/jHF8VR46Ep05fJgA3xzijqAL3a/YkL0+bmou
	 4AYqj9tb2v1tIE8X0ZV/V9v536EF1SWsTSwH2io8T7y7e6jWV5dDMWhOoeGZkOLf3O
	 wL49qUJBxnDcSu/tqbaS6Kwphzp3daNAE2+2oEtE3c+57LWYoxGGqCZnknjT2M6Fld
	 FcDTh3JOdVmsvjoL7Kdm92A0qsLJUtTxMvAPXngxtTjuOmjOK33WQEP0pnvfjg0ez8
	 rTKSy1z2x2KoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6CCC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320111368.11403.409666146646419075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f0274497467c9a0fcab8b87207aafa48c2bff402b0a58679141b7598fe62f2
Date: Sat, 04 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783201113
