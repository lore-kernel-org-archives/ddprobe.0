Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEE11922C0
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745923195; cv=none; b=Shx8GXeWKGOTahyZQrjw7UBNih8F39ghsecnYL3syDeN4m+DkQcsv67NnHR2D9myLffhEIGLw+D4XQdOdWembh7iMPGElBeAc2VptNRjbv6pWT5bULNXRBB7ojY3PPAi2fDIpt6pTLFLwedRxKO+Di6d3b8oSMKRQQlxUwgH+hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745923195; c=relaxed/simple;
	bh=fyZCXLfmYmIqy8f0b6rutdBUGT2w5I1TSdyBRW3OVp8=;
	h=To:Subject:From:Message-Id:Date; b=UZmAsFUMrFbpi6hqjKAcUtHe7HpdI80b7HeAjBces0E7QpYenKoPI/VbnDEy22JUln7CwGIGcadaph5w96RysTX8AmCkcImLQHSFMYgjitQXxYwy0l05lWasjfZRonDDMw2za7bCZWRtA96q0afXkwp9KJGPthEDd4YxvsFCTcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vt5mzkVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vt5mzkVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB81C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745923193;
	bh=fyZCXLfmYmIqy8f0b6rutdBUGT2w5I1TSdyBRW3OVp8=;
	h=To:Subject:From:Date:From;
	b=Vt5mzkVphDVkm6Y8K6T6eCJAckNrRckM2En1CjHYl8f8YW1b4eFG4y8QGvq5OkWpz
	 2CcTNdLL35XdlVLn0zSXFrgDbC1q4kqrxvUq6bpSDcL/1xiPnSJUvvwRGzIogxRZ3c
	 Lg4OyrVa88xoOICtJHAVr1NRnlJQ/WC5fiKxRfl5QNIn69HzPQvRJlLSqpdEg2dpM7
	 Gez+pPi3betZtUVpJO2iHx1JxX5iq5VNdMGWsFhQGHUiwqa7i4eDrTK0oxA4BEnZN8
	 y5lvuRmkjzZbp3eVOBsyvw3lBJPDmsfg41Vem237VLuXVPmxg2lcCymZPAP2iChbgd
	 Axv2XOJf3FxkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0E5C3ABA9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592319357.14413.15333474037969582238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d5d1043596a94dbbb7654a61ece61d631a35db9e5dd60b441ff24c8da8edaf
Date: Tue, 29 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745923193
