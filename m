Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604B419A
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743034194; cv=none; b=Y6ywWjoMHD7um6bVtJMaQOXu4VTAHyzd6Nhd3b7C3DQDQtFps2FuISFaZXVUTbnCcRsfGOsabIxzJKXCTVJuICdQbdunmCHje1YSxC362NyJnBVGMQ6ot/UmTdGX9kMoGWp+TkBjcLIzmQBzLELDoR+PhREtStCiA3ZhYSu6jyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743034194; c=relaxed/simple;
	bh=GYIhVvStdyDlWg4/KioNT7fa+eaMZoF5P2ljYneYu7o=;
	h=To:Subject:From:Message-Id:Date; b=ED0vQnN4o+7tVbe4J5rmhI9DpP2wXId34ye2fCmFseyfgwY1ZbD1RyFvoBlAXhoiJahXzzQtYm0HLj1XlxynoSVvkR5dogA17A7ggy5z15/bivo5ujv/RTRtB93WNtzynrpGis1p8BSvYTq/mPRKWZAIXRSvu6oaXCoB+sxDrbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm1I6Tvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm1I6Tvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C965FC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743034193;
	bh=GYIhVvStdyDlWg4/KioNT7fa+eaMZoF5P2ljYneYu7o=;
	h=To:Subject:From:Date:From;
	b=Pm1I6Tvly1oP/glmSmoy3IvkO2dObqlkYHYuzyRFTZce6O4p486u9Ijtm70exNuVE
	 OR4gjCBwwBydeD4MR/IbOsFweaa28XuakoTP2Xv9JUt7tZHRyG2Cx7D7gEywblV5oe
	 TBGw0ibFeT3Hjk6+m+r8NywGgUAxHzFEDjtOYucnPpHOmT90pu95eJXPXOgffhgPNQ
	 7hJ9bHsvc59XPiismbE6sKmNKXhqRXSQ7+QSOsOHvt0TUC1ESC5v+IpdevOS5YTi3m
	 D9I+hZm/bMmseIkA5gPDertMBkF4yklKJWC9i77Chb5hkDrR5+oDHOzFDWkWu62atk
	 7kQxs979fxa0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02D6C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303419369.24278.10124603894337297670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3040a878327739af29d6519a7da99789d43df36a705d55700bd8d051833cdbb
Date: Thu, 27 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743034193
