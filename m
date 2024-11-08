Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EF11C1F18
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731104754; cv=none; b=jYTf30Kz7BBrcoTR/NjpU3VyNE+qXM0N0THMdSMxPqSzFd/zsgYPLOL+t3FcBOErTNYb3BmHXaixuWmrknGnL1KFCTGPvqZb1/GRsD8Rm6Pd0mwERNJ1S/iQFIRyFZLep6ttaH9vJT9Lrl78Os6F5NRB6fwy6CAf0OhofXXTATc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731104754; c=relaxed/simple;
	bh=Sgsw2+dHxDdsljaWxHFycNvtbQV4OydcDn8OMyGwUeM=;
	h=To:Subject:From:Message-Id:Date; b=XRpHBY7wjylhRr4UwDdWgGKHE0PQ3Jsli3Dtn8VZw3kQF/4DclsUvl7WWEtZNWSDrMW5kre8LzEDscCtCLmYit6hrsElog2ZKboq66zKute/MKo/xRtldNqKnsEqJO85I37Ph2C2CePvXgN09pMpJRstRxcF/A8NfJY77udR4g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/iSJAXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/iSJAXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1E9C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731104753;
	bh=Sgsw2+dHxDdsljaWxHFycNvtbQV4OydcDn8OMyGwUeM=;
	h=To:Subject:From:Date:From;
	b=p/iSJAXBXVZqxTF5prRp0Tnzh2kgcQpq4l3OCBHwKYJu/+GDAct0Yp2RSrTJLaW/Q
	 XuZf75HUDbhM2Hu+hhX3UsBT1pzBTrTDC3CwYMTDdhro4nmm/gZnr1SQ34sU+rPcBG
	 w+BV2/fAl9NsnoDoR17CALYu5/mU+ylfLx2QfF4Cafun9s9mnxv9MkKnROJOXkIQec
	 rkY9YFg3H86WvBGpRbQiX5F0YSiKv+tztDDcg4ggGF6Ns8AXQG3mmEG5PNUq57Z5n/
	 EBJxUiso/+FInLnVCwkpCIK1SvXvGJDGzDdDXxc1StdB+rTIgEXahzHM0WdFX48WFD
	 x4SFnItgzwD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95511D64097
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173110475360.32438.5760984852306041109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af31adfe513c706212d39e85f2331adf28d99df0108e88e65681cc57792d874
Date: Fri, 08 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731104753
