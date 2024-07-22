Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6DF167D8C
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721640954; cv=none; b=Qu2tp0Izit4Yvv1NsEFyw/53BoeiPO8Bfe5gJmKoEM0R5Vf4HPwFOEmRvNODwsLmz1IdxSFfmaHKFxtAWTL12z3ATB3M3x4SyIRi66yB+oOBy63SHQ4spDWRUSDqrFJczlbx0HyjrEdyoYF/w57V0DSetmea8cXYe4BmNPDVSV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721640954; c=relaxed/simple;
	bh=1hga9i70/N7Y32g29KDkSwaRMiXyNGRchF//F0ocX1c=;
	h=To:Subject:From:Message-Id:Date; b=tdmLJB4E6vcYN705+WTakkkoacZwcHutLwd6RldcTkFXWsfPVbu+Vcr/+oNs9dirzLu7qlO+ugykWI+MsLH2QmMHDV7voj5SxELZMvWPnIL67RxywioIB+uROY2fML+RS5rL7yiWPqve/dknNRPGh74K8wFPe3pEII+1ImYv/nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqZk15Fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqZk15Fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F8FC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721640953;
	bh=1hga9i70/N7Y32g29KDkSwaRMiXyNGRchF//F0ocX1c=;
	h=To:Subject:From:Date:From;
	b=gqZk15FjP2znI6fRH6eMdWBIisDtU9LVrfa6qIxETfcFap0xkn2+Q/Lfk34TnfOfE
	 1OcbHbqj9yU2FEwiiOHrbV3tOhKVie2nYmiRvWhjMVCxoYr3vYk7o8Vs6HM7aTBpeJ
	 QdiXSJ38mr9BuEZxGlWctCNCTkpS8Xm8+kH9lIoNUOFXhFeTllVWAXxwlFVZ8R7nzh
	 /wxv911WMIftNwWEdMzVf28CJaifRK+QUOXdLarABNAEiDBX9no+dCXPqrLuiUWrPv
	 WIXLpAXH/R792/C7PEhbMbAPjeOk4MqGvXlDHcmLT2NsCcBNGvQXgELDLkZ3tv996d
	 Jjw4L1aySkrZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E23C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164095360.23006.8475764266818004092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e539e08c12d6deb716f528b358355f14d55c439be08ba897641bc7afaceb0c
Date: Mon, 22 Jul 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721640953
