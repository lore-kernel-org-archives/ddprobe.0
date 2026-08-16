Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD4C189B84
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786867834; cv=none; b=s4hfmPPL4+o5kPV352rlq1hGuG1d6ucSB5/cPBGFnymjxohIZS41Xdhr+jLew9TlHXYUuzZZ2+eDFdNsam2KnIoFzFA5a0A8Ka81HeuD0J0Sy79T0B4ZGpg5cEh8RL+1flYQIgAsNFkNIr2QQ3FQXwA/GaIB59xvgmFT0rS5L1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786867834; c=relaxed/simple;
	bh=ULJgwDb9JSl63kRk1SnA5jdL/yViKCisxo0OcZ1Ajv8=;
	h=To:Subject:From:Message-Id:Date; b=OVC14P9n7FjvW7a3cmpU9C5uChdU1athzJhPvKJuUpAaC6+V7GT2NWUzET7NKHrTLr7VMmz+zGSLuZmW/ps7f9taWyKuteB4U07p0pnBHbNXSWcqQOWt4/YcXB5cpBM3VH2EZPxL3WQ7Mj1BZMV46Lm+mWJ62aM5WaQB1e04iNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgSOkfyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgSOkfyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D679AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786867833;
	bh=ULJgwDb9JSl63kRk1SnA5jdL/yViKCisxo0OcZ1Ajv8=;
	h=To:Subject:From:Date:From;
	b=KgSOkfyTSuE1sjSitM62mwCUfBDWUxA2yNA/S3DDo5BnNlUOHcv0ccvbgrdRcmJvK
	 /DfUemDsKiECAIGdNmFBgwWpSo1v2a7KWPPkhb4da7FODI3bvnMAgMz9b1SrRvQl9K
	 GiOZqV8QrFOWDqVOf8FnUuY1IGFDjQtYxPkXjijL1KEKPYy2/bhQpbdzVKL0DhG6my
	 gEOhntqBp+8j/2p3tkOpDEWSbiYqhjbYWoLbF99sxHlVV3JKtFx6dkenPlsHh9mQ2s
	 +gv5gGZCu4SaHRQhPBwbByd56EMEUoBMgR2WgHX1HSAIh34dkjAq4q5EJzBGS5YG6o
	 UccNW+MThy9RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B214FC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686783368.403.7980825728902769866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8c2b6023479fc358cdbed679e9ceeba5ab95c9f95e97b90db9e38f87479b4f
Date: Sun, 16 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786867833
