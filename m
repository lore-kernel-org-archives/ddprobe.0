Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15B21EF1D
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740703734; cv=none; b=ou/6WRp0ShVB9t/Sfi8TcpKgX5kqsAu+hPJOt9+0h0iHm3gyqyjjnp43Vi5dQta0qppse0FL7SdpKw8y7IirttkAOhhHNnSZBgA6O+fsfqyOLxwfprRxoh/UitXoeJ7XOILcX6VIDbmK1aIFvp69kfQ19/7+IJiiPX0JLuXCtgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740703734; c=relaxed/simple;
	bh=Z3CSnBve9GcnFst2w15Kdr2GmrJPu/lxrnlpYJccJhk=;
	h=To:Subject:From:Message-Id:Date; b=Rs7aMRI03wK7MIcdV86NZsyD3utVMMCnXSXpQgg5gZEzfxeswvbJSCUmLxFZUvwD0fOVI+GELvFMiT7EZo4yuaOS/8+u2gZaKRY+hGj/QZj4gTVyX7wKx+wruBNhClN9uR6BT2rxZjliKAiXDQ10vrB5F+hAGU/iRN47rlgiKj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgUgMf7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgUgMf7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD83AC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740703733;
	bh=Z3CSnBve9GcnFst2w15Kdr2GmrJPu/lxrnlpYJccJhk=;
	h=To:Subject:From:Date:From;
	b=DgUgMf7qMm3vwibw1BJ9p1vmn8HYRByhZY+COZNF7XirftrXA8vKuSvZidrA+fSC/
	 2N1MF/SPOaU6NXqGHqVgdTNeHDMuGuRtfrpwuBg5KS1LK9fFNVtl/N2crIwDfDJC7C
	 Crhv0L4FYzUqc7wbuQx/zvzUUeNmGw8tF98FylkpLrkLpNbH6tjG0NOP6/frH5HdDN
	 Sj8+nYebIFgWG2mbPWyiYMXTG0t7uDIe5Q17udJUDXRvsOn42K1oB7k8t4HoKzhNRF
	 TIeHY8CQdakhVCz+uMc7Mwg0emVAHWOw60KteiFeaO192AxpGv4LBVS3Voi2xWBxfJ
	 frJcfRyKwBPPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9826DC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174070373361.26578.16989225219832754377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c103360415573f93615dbd315b975ece120b23d6f9041c046c5eb1b09cc9b5
Date: Fri, 28 Feb 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740703733
