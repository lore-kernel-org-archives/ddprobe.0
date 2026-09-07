Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CB2306746
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788757234; cv=none; b=gNcuYQ350r/0zLLNga/kHxy/1a7KJZ1zStqHWheXo1n3QdiznczBqolFq7nd7SMU8VnaCDVsRVC+iBXlCJuZ8vpf3hPcLyXrLl+CkqNiLOavHggPQoKLCxtV09QtkuGRujRwd9ArJrMPUtE0cCxtkTcWmHKF1a9WdpVOI8QSrNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788757234; c=relaxed/simple;
	bh=LEkVrC5OOJkLaLwZSvcxykJWLOGqyNdHtZHwuwAn3/Q=;
	h=To:Subject:From:Message-Id:Date; b=BTtrFGxCj6o30YhWwHPxy1YiybPP4MNS5Y49yEnQ3FV8NO/g2ervIkP8dQw41I9yrOsdl7VTqyJF0yh/Q5TXzoHcuOxYOiLUKESFAB9KFGyBIuL4b4OPV8e6Pajr9dPbuTnF6+cqxI9O7bN5JOc/97N2zQMPSVsi5gSbSiWyRbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lny0Eq5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lny0Eq5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3BAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788757233;
	bh=LEkVrC5OOJkLaLwZSvcxykJWLOGqyNdHtZHwuwAn3/Q=;
	h=To:Subject:From:Date:From;
	b=lny0Eq5/jexRPi4gOkR8dsqnvAa0BgSAd5kLBtKCn890hvcULLlREzNfgvkQEcFd+
	 lvG0HDmy5ymwbisjrle+ZJnITXHIwL67CRYnadwkuQ+tFoBKvR//GPpVNvIj1+QkVI
	 nlRrMQSy/iWYCcdAqZcDocZzhnjeB3hbywBzblU8CqxYWI9O1qRhFfLrsN89jAAMRU
	 44b/Lrr0dey4jIxPPuqPi1gG4WjQ0+i7ryANNM0FtEsZl8uQF01ArxEJmIxvHcKh6/
	 0xH0EL9X3J6tI+wkOz1mucANwnLNv3Yr6sTUGU5oHyzBNapZ4thpgJkfD5+13SOSfr
	 BqZ+smSC3WMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82AEC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875723374.26233.16118318364697032271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2814c1377055ae54e94662d1d7c9713c0251217df0781a1b132f904b2e85fb33
Date: Mon, 07 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788757233
