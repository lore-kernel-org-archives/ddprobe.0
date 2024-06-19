Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F00139B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718756963; cv=none; b=K8YFvzmTNT2HJnl8RyLNeb08FW2d2xOmuxi17ayaM+YmfukDkGg44ZoNroNozII2rn7z1k64I1790n26DwmEzYLLJHmzsaH1LVaRSvoiWCwLmlb2kn3ENT72dHWJMO4l/XDLPYQLCsWGYEPveRWmOnfVMvUk4N1E674kO08YiP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718756963; c=relaxed/simple;
	bh=pe832DAHkaT+SAsrUHNim2bmzEhuAr+2N3Bu0/qclQY=;
	h=To:Subject:From:Message-Id:Date; b=qW5p7xlaTknr86xjFjA7QF2odN5S1hhC7aWEn/oqt9UveGTLyL3ZvPi49XdL2jtU+iD5WbrYtUI2KnO2DNFU1RZYcNjI2+1oa/SjvDS3ht0S56hP6Lpmunj6joK/XMi3CMjUU6qr5Bj9Jc9x/5gAS+v2eTJJ0XmoTDT0U1S5KC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbG/rnta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbG/rnta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FECC3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718756962;
	bh=pe832DAHkaT+SAsrUHNim2bmzEhuAr+2N3Bu0/qclQY=;
	h=To:Subject:From:Date:From;
	b=dbG/rntabAntLPcEITjQGdxaKNf/CTTowVA8wqNKRwFqsI9GTM4sxc9MBOiM8t6aL
	 aNnnzR1S9reR1x6JqDHnjkK8NPOHnEKiaIV9+JBsEPWLN57RAl7GUChY5KgvNwMwZX
	 gN7sfDehrkCsmU/RXEG59xnJ9RWduu8oWDEEDjbfVyIwCTU/ce6ptSCtgyGv+uGFMb
	 SePgWvnlQfRE7R5M854yp94do+S/qsHRdnp8ub2JGYWXlaMPNeI68IkkmS7Zmwq8G0
	 DXU7ViAp9rkpBDCEzMugG0/hvON/+BQLbLWKZfeNHKDc7kRvPogpk7QC/hKcWqC6kX
	 /J94A9lo0UtjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DE0C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875696278.10209.18398176021801691581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43331cefacf80794078a2855cc29eef80c285de6f1cffa941c10f8f7535126a6
Date: Wed, 19 Jun 2024 00:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718756962
