Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232D818C930
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728339954; cv=none; b=nCyP/7hTzeNxycHj6N/MESBDrv3eBm7EN1Qo28j2/pks96e15LhA3MYmS1wO2QlSUylIOSHAXMWgub9egqH8YcV723rZWfQbK6TXewIg1aN1GJ29jhmfdsmOZbg7pBci2WjterRG1iUS4nTrifMkC5DqCmhOjZTX4aRGgkZLdtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728339954; c=relaxed/simple;
	bh=M+8Dy7g54ZHAkx7gWf+Y8fP3ixLZ8qscG/spYravM2Y=;
	h=To:Subject:From:Message-Id:Date; b=YbQS4+c/V1vSieVGOp+orztO5gzQC/5z2f3MAcO3fQYOj3SnUMRDTw8Ekskacd9aH/WfpoMcjnpREDQ2NWTbEtxI9523QNM3SKspP+nFX+hylJQVHD3XVL7IzCHWThapVHEZAnEuu17JYS1SFoRwiJfKwMaWh/QtRrXFZSJknOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6t5Fe7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6t5Fe7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F6EC4CECF
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728339953;
	bh=M+8Dy7g54ZHAkx7gWf+Y8fP3ixLZ8qscG/spYravM2Y=;
	h=To:Subject:From:Date:From;
	b=i6t5Fe7NBah5Qem5qg3nL/FLVsRjDrSMton8fkv6DljURkOjvkUqDCLNN7rhEVSTZ
	 CPkniWLIgpnlTzfCkc+1h0u/OhX4kZfv/eWu/mIe7Bmu4050d3UWptcZTpSqGee3xH
	 Gs6UsWmYN8afw7++WPCdJXCeKf9RWrQ3E5J7nvLFvDKCCUl4/eVLFBs1cGKHkXuoyD
	 41V+QEZ5lwz4HoGZIW5o1FDzFwMHHOVE4dOgDB011rKyft6/zIrH4/ko6b+p/png/H
	 i6txvbEIqt+k9e3wiXztzKlfWag0/p8+AOFwf1xViHAkW41e7a/nuA9YNnEMzSkjH2
	 kjdDGRTr43Thw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72ECED247
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833995358.25991.17204942348829504321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dcd3546011095847227029b7e95ccf4224cbf6c0e48e008533984fca26ea781
Date: Mon, 07 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728339953
