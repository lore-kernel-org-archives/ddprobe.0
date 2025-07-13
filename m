Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A0A15746F
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752415794; cv=none; b=lAn1zsVW/0usWhk6cb/xyDJ6qDsGJYYAEA3YtuGru8BjIogWW1qbZ/v8vQ86T1Y78M44a2O0gd6SWDxSnz9zZfssW+StXfxx2yJhD8a/FJkcM48M2zuxqAprOXoxxUKP9pHx1BUAsZpNAQcaoCpqwDdDtErKm6dEOK4Nbf5/dwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752415794; c=relaxed/simple;
	bh=T9F2mA9HcU3oDvWLSBXNN5OKcdv2oZlbj/fB8oARY28=;
	h=To:Subject:From:Message-Id:Date; b=FXjo0R02bzrpyeSrVFOmgzDpbOAzrPfC2e/6Av50g/9B5h1nJ6WpGdRsOkY30zDu43YTP/D7DPOKXC0WbY4SBIczWxs+dPhyjv+c0wkZs0qF88i+/65SS9+fkAMHFnozp2B0XpiNsRlUogYBA5ZBD6e8wwu/35W4otbJ5keP+XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsNFBqrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsNFBqrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B19C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752415793;
	bh=T9F2mA9HcU3oDvWLSBXNN5OKcdv2oZlbj/fB8oARY28=;
	h=To:Subject:From:Date:From;
	b=NsNFBqrv1wBdOzg94//KWpvweryMHNzpmPScgcRV9GClc3a/Obz/KQuL9ivBi6b92
	 PTc/V95rhlRzDZuawkX/avIIfVSEdcIIDz5UHXwqD/Te5x53FtUqTRrxHWWhM9rif6
	 abr6sqlLQGovI7dVrPvIT2PhF3N5S/7aRL9xubOETACzuOQEPF0FuLgCVLnkBGgIXp
	 G7Fekb3G/41I4+7C9rhdH6F39XY8pmVnlLizcttEc2H1Bm+bjHR5291Edeap7zUfnl
	 fwPiPdryoYSaH1TLra9TYpyOieRNBotMGzjf9ThVPnvDBzKlH0r5FlbJtodExPmMQD
	 vA71qFSp+PkwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96091C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241579358.450.16965705320427995212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed46dd883b9f7ad4bcfc4b15acf3d3230fab51c8ed82e2d5c6dbf0199952162
Date: Sun, 13 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752415793
