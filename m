Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2315E246782
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777528054; cv=none; b=pDehDhLarUISoOLCsHh7ErgiHl3SfTr+DAjPvot1bTnJI1elAeuYMWyazVuL7oTh7YNKZacW1PpiJGoyMvShiOg7SUybXmg0ktGinivvsEP0dchgMOaQT+vWHUMu5Oy+T5C04iK7rZv+aczGAKXOhxfBG9YsBaSt3uyceiWxJgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777528054; c=relaxed/simple;
	bh=evNtUD+3mD5XygxFuMsxrcgjRpSK9b2RhrK1MAPBguU=;
	h=To:Subject:From:Message-Id:Date; b=SWq1iSE49MgGBlsrz/qdWMlTG+3osCLaRBeCLQIA6+wS2dMsA1TxVJRdxzfKqMHdrAmUpGN64IkX+UT6b+fxFAvu/dYrbatm94r9+jyIjWGnZtbnj60f3owgMZZRd8pUT317Cg8xwXm1zXF9coAsy7MDCfhmUCrkZwMXUrB4Msc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPAXGFvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPAXGFvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA86AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777528053;
	bh=evNtUD+3mD5XygxFuMsxrcgjRpSK9b2RhrK1MAPBguU=;
	h=To:Subject:From:Date:From;
	b=EPAXGFvpOdhhLUDpIyg78lN/IbFyui6nxJ13AD1jziRQ1h4lkI5wyWSGIe1gR3bgU
	 DtihCjTLkv/P6hHF6eEhml+qsLY7iP08roWSMTZl4TFehcPGongTbBed9jJYFykIak
	 DjGDrx3lDCfJKCzWxDypH7sqxf1VPwkJhDk9kMZnQTFSV4pFylHk9PsSUo+8ErYjuv
	 4KJZtQ0T08tIi8L2qQdFQVcwWvEfiwr+UEftVTRFUx70rqQOtT9ppJ8dXDJzDyYxia
	 D00abbQ6wE8mg8JhrxouScr8woMbRbhjW3Uw35QAVsK1ESWF8KQM4g13tEwOEchBv6
	 FyVIC8y+UZk/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9507CD1297
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752805368.26338.5321554782128971416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4084695b36a443ff22150434f6f59fe08b9a574e07f36fc94625dfb75e951076
Date: Thu, 30 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777528053
