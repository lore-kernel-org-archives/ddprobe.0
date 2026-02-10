Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127EA329390
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770730434; cv=none; b=CevNDyGGFnJShEun4xamK2wAzM6Zasfa2dHuTekB2XLIKPOwt1qNTtflAqD4eCZVQAlcZwYyl9OXfQYwdTYuo3TIWcs4vvWsQT5hHeT8O21bKGce/ErOOhiShykpEixAOHgyAFaYqwe2cUfsPc9kAYC6Ofv2lZ2uMS/unHSEAP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770730434; c=relaxed/simple;
	bh=5ujKHybcasXpk3YypK7/w/KEj0BT4k7o+a7zQw5STN8=;
	h=To:Subject:From:Message-Id:Date; b=K3Ugf9lVB1E3OWzWg+wCcoU+TJ4vdMV4lhUmp7KwLzwsP0i6EFzwkgCSvYj1EQA7khX0dESrga9x4qDpNHvZrI8+iOdD8O8NPSukErsUXDnMu5Eaqf5k/IDPQcA445juu1t9r2kwjD8lBzG5MZlSqHiwsxtHwrXW5zvVJNMSgG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9fxlUiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9fxlUiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB0C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770730433;
	bh=5ujKHybcasXpk3YypK7/w/KEj0BT4k7o+a7zQw5STN8=;
	h=To:Subject:From:Date:From;
	b=D9fxlUiTbBlUGgz+l8NbjID7FIfvYEHEPYMzNFyT8+4kE2khP4+vXlPCDufNOnPNk
	 vgFFqChiEIBNY0bKSIyxjyQVCwabiyxtez5u0HuW7f2BZ4RiDPPwgm3HwdyCJIKPfZ
	 jPQ5K3Sq13zlj/ROX9qp4z2Pt8bht6mBtMZNDrQvU+g+rUPTOogReExEZo/SSnF0No
	 V/im6wfYNusFo5sOK7HWpsz5AfEb0o4LmWKEr/F8Mf87DFZEnJw1GafMUoAlOGt2vY
	 PIQIlgthGCDiHLcPI9YHs+SvJkyiuPX9h78HLsCwsXrTfyp9ay4EekLzou0ExMj17H
	 SERInQSEOxfLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95287EA8112
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073043358.27358.13433236775397840412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce4c3e07cb8ab615bd74b29064fb7a53360ebc5d07f1bb39e20567383163483
Date: Tue, 10 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770730433
