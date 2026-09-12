Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4B85475F
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789255834; cv=none; b=G7ctbIH/xtgVk7haLG2t2Pf5TNLlb4dlwPt4gDXyRQp31UT+X6fEbGqzDTNJAA/vKknqzNhTIcixRT1ZO8VYlcyxonY9fBtEPOcSSoj/oFXjZ8J8lCo30QQ3Yxm+w6m9hYSG4hxwOvkzGpIzdtsV+FVjcMA/b4ZRfvdvnZBcrMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789255834; c=relaxed/simple;
	bh=leuB24ZhXFTgzMOomIddf+v4srLLUEWpi5N0E0Ux8M8=;
	h=To:Subject:From:Message-Id:Date; b=ONXeAeqzZ9ZIeuEZfd46GBcAG69oa5x0Gxb/2cm5mOJdl21bYXbVE2H3gNJJ+DnDsyzfbwcr3vDYkL7LxGyC77MUAenWxrVWBf9tbISdXus5fIKNSFuTOZJTtRHkvVf/WuqKGa8fGwGUdyLDXrcrVMinPc0UHx4cUD7fCaLKeOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLONomAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLONomAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3B8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789255833;
	bh=leuB24ZhXFTgzMOomIddf+v4srLLUEWpi5N0E0Ux8M8=;
	h=To:Subject:From:Date:From;
	b=rLONomAk1MFGboEv8gX+DhEtPexhpgDqqcD7NAWUKHWSOQwf1AkzY2HE0RGOpi4Bf
	 lARQe9EzCM4UiMPqFZITAO6pHpx479S1JPPB9Zc1iMoCzmNRLtiMdRhMi/azQhvAJL
	 +Dc5Av/WAWqr/1tRU14g46uO8c9ezTo0E40AsnrnROt/y35Xyb+dqz2F9kbFsYphVG
	 8XDhqt8UGtbDlfhLuYP5xQRQ8WHsKoDV60AYY+Afg9BnbI4r9DbutY4HAOh3O0X14K
	 /XauOmuswiKOhjNPAVCmaAaHz9NesfBSI2BqUFS1hmpMwvaDu3639qNPX017OA8fDG
	 eXzBf+8aPhR5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9596C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925583372.19445.11202570726509301961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6812c83b9f4ba67369b3624b543b564c3b921d37b8acbe63e7b9068375a59db0
Date: Sat, 12 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789255833
