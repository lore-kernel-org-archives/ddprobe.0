Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53B9288DB
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748265594; cv=none; b=gMmuSVPgt3EAdarrJnYYMh47VEkPBk1aJApmnjFmS9T5S4kENzqxYZ1PVSzCPnArDzrFMIKJgvam1aI1GJTXZzzztqanxDHktRw5kvohla0AvZ1qlmF6DZwUGOqRC3wN0fcr47OIWfsZO/Rvv71lphjRWpcDfKl/VZsi5/wIg1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748265594; c=relaxed/simple;
	bh=xHqy4NpUp/689Tl7XGDuWAePzx62hagn8xrfCgHPtCU=;
	h=To:Subject:From:Message-Id:Date; b=GmKbq1uZDLIPLXsPV3yT2pYe3Acamad7h/ZwUO/+vb2BbOjgzkcfqvfSyVyhf7Ul5x9Ee4XlzeP7rCjnyTWobzuT1Tw1O6QfvOLEB+pNCRwEUG2CHcmnV1KeQcxSrE276KiXGjTyZizAhbeSvkPGTlZ6fK8d+vdPH8biGrIdnK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAXpCsy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAXpCsy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8E5C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748265593;
	bh=xHqy4NpUp/689Tl7XGDuWAePzx62hagn8xrfCgHPtCU=;
	h=To:Subject:From:Date:From;
	b=AAXpCsy4fZO9THf1tH5RNSAqsGu1ebS4gRt4qe22IDsrjCPg9AyWjUjLWlwlaPJCL
	 ON4cio9Kc0RqaoluzzO84nKfPG5FeKYq6+tx+OuoBb0g/iOQTp9+r9/EVbxd/hsqeS
	 RxHF7InwmB/E9xV3/Haz+I5mnJvOdLfeXFvlYvbVIAJz2mS0/XAB/WC//bjcFiEnzc
	 RT03YpipRuhS0AkNO/NI+1sRjncnGjKvV80k58L8hJg7xxTp5/gha1Tpft5FZNtxcX
	 D5neU1O8g/jm4YxP+PAxeX35/tpnMfckN0j7LZB8/5oT2vZUxLxpYDSw81LDwYiWD9
	 XCl29eC4Ed8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC83C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826559357.20245.14471989868938556642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4d9c1a613da76c19207dfc06a0ce0ce85ab993f3d381719c7b634729cfc78e
Date: Mon, 26 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748265593
