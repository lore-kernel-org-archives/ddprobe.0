Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D772717C64
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712126896; cv=none; b=Y8FRFsXJAQ+l1M27TxivuTHiQJGsvdrkxn72yuwK1wis1Jk8NCEkHXL61gBuUwqMsccuPq1/o6s9sX91mChidaMesTMskJRxaKEU3RGJrPsqEozqkIk7gzIAHgh9gTkmuQ74gBB4IXx19MOd3gzSzKGmf9OemocBkRwZ5ce0nsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712126896; c=relaxed/simple;
	bh=JxiR/RW6SG4TJcEEPzEWWeXmy45r1PR1xnXMJUEr4wU=;
	h=To:Subject:From:Message-Id:Date; b=r2eiyfrg1Jtf8ODQenP2v8k0kbNEq1QuRrMT2LaqIlngh5OXW+ZzyPk53B0urOw2aWCg95dZkRJP0IY03iuOiCj29VD26AJedXNEGLg8a0MZ1O/tquT5z1uM65D7nPOU9ZYR0pRPjUOpxG8sdk6X1ytJP7LDGKb9ikJihnF09n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVbtgwJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVbtgwJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CBF1C43390
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712126896;
	bh=JxiR/RW6SG4TJcEEPzEWWeXmy45r1PR1xnXMJUEr4wU=;
	h=To:Subject:From:Date:From;
	b=nVbtgwJZ1fbqDDz271GrJCLP/3NgdKs32kM8KSID/INX1rCzEdYlF/EtB+MW/3g2p
	 bCHegYt8pV9UZrE8iIzDpz+hW1VVAWGs4D0uPU2Ao9NZ6vuZ2HFAuKm9qvZHcDi0Wy
	 gmefLYSqgjj5420qJa+rs7bI+UtDxRfzmB9DbseQuvuTGlBiwMqetxa9GMPdR3jmE8
	 zSZhRMVTYP5ZAfUTzuJsnPV6RDugW/OjTAfzt9+Nyhuh428OA7M2jBpaVTojGBaNPn
	 V9Mn80LeY8PupHdIov/CAMuL7DrTraYDpOkhkgCGw07eHPeBVAkAwObvJ6ienvDatS
	 MMoDpYvV07sTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5C0C6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171212689638.25967.11899690981732846907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73fda6a57408364f1fbbdbc5688c9861d3053828af618a189f6673cbe923d3cc
Date: Wed, 03 Apr 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712126896
