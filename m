Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBCB211707
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738674954; cv=none; b=N5EZpiXxlGGV0NzRPCotJm3+5IyrScLDHyKIcFiwUj++6GPTROnltWq4OA7ChZhck5/OcPx38tPZt6++ubIqYNxu0nP+eo5ng9G1Ewm32xa2fPINndx23hGyCMFnKM/NDwxfGubhVz9FC8sckh8Qwz/629GoMSNC15nH2pxy2/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738674954; c=relaxed/simple;
	bh=0sFPvYcKvvtQEqOHsRv92O7glOJboJT4QeovmgRPDBY=;
	h=To:Subject:From:Message-Id:Date; b=AZUudt4hdAKPFmxgVywwT10C65Qw8Jzk2qYEGyOWbzjKuboxbl9JaHvbI15sWVijiAAPkGKR8kTsvfjBocMM7NMpmAJx0na+qLOxIjezi24GPbifXU9QFrZ72F8hM3MNKQsmPGBlzJ1DG4cH0kT8mlA8n4LgjXcv6qZuRNA2Fes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2/8ckv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2/8ckv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62BBC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738674953;
	bh=0sFPvYcKvvtQEqOHsRv92O7glOJboJT4QeovmgRPDBY=;
	h=To:Subject:From:Date:From;
	b=f2/8ckv4Gvlo+5MbkwQcuMIt2yFluSYFmdOqtsBT+/lczyWIEbVGPuex6vusILaj5
	 dxQrGqur4N4eENP/sPtwSBW4yup/QVJ/s/K9wwk2GACAJt22Xi3sLslvAUyUQ+U/nZ
	 KDIM3U2WuStEcxHa40BkfwWtVsTvtcg085iYJY0XVvoOUXMzaNtj6Ae5byGqjjUiwZ
	 kkreWLV1wlnQtCzVQEpDDofnRILFGda4K2UFlvBeze/prezZRLcc028j2negFKl3ce
	 8wktZY/nFbySwCSP/hk1crGvZHsw/BPVSIl6xFJrMOpraowQQCFA3X//GWVOStOyVH
	 vNyxnIAKraC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95037C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867495360.6585.1920735209205970621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e4cddb44040956a5154bfdddce83326141b134b0ef7429c2082f1f9b99dd34
Date: Tue, 04 Feb 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738674953
