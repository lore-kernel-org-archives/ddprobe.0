Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3156F7A13A
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757822994; cv=none; b=GzSjQNtRAPKs7b3+6QZuikRtVFrG655DcPHJzycb83Sd+jtS10wUptmTAOckygIo/lETsoI4jxM5/vehe/Tpat61RkpvU9QEfxpsGuTBa8Po5yCKMk46ZOtgMFJES+CG9jV9T4CxBDMaNM4BB8mJgCidImXWgh6PEs6oKqQMiUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757822994; c=relaxed/simple;
	bh=XdqlUJa7VGNHBaMwOqGSGu9fWz0aeX2jnwsYUNphhqk=;
	h=To:Subject:From:Message-Id:Date; b=GYCPG5vvdldE3deh9JHi+gva/NpyxN67gWXPGFfXFk7yGdfWELSdxlOCOI9m7az09vxiOjna9242HswEzmaTqkpGmbJbcKTQDVHGtKk/hhxvwdF/eu0g/DDPDwQ6zBqpbNxYYL+kyg6RUdBp2OkaisGBnfyNoxm/4IxnCV05BQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFlzW9Tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFlzW9Tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6956C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757822993;
	bh=XdqlUJa7VGNHBaMwOqGSGu9fWz0aeX2jnwsYUNphhqk=;
	h=To:Subject:From:Date:From;
	b=JFlzW9Tc3KjWSc9/XfWGcpL/pnJT+QeTRlg+cfIkdEJuBqOFbFl2jRDODvcJYnpXN
	 BwL8iSLjC3MbrTJJSdTiTt10aXlFjeWq2r13h5l9HVjH6leQlaGtGXDEL9EkoOppkW
	 jfEqlzECblr+TJ226XObllFnPwrO/dDmW72uBEsKisUQtpTe/sEVPgL1P7husc1TUz
	 tRWsmWu0tA0/OD2Oi17OMsgeVuza8cu349mfivXDDL4gppSUGOwngrKnLBJ41R5UGR
	 Z/HfqlPbOyXF+00JKnTwXCdztJbAQ62RdCXfY8Xv6qYO4IXo6P1uNVNA2lmaor0g43
	 WM57RgOCUeS/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94170CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782299357.621.13550827631009966210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd019e9dc06bf1506a89120e21d165c5c79e29001550769b852847fe23d55dd4
Date: Sun, 14 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757822993
