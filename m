Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21741E412A
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759285793; cv=none; b=fZrNxOmXdF24WxDJTmFIATTDsI4k7mGRBb8i/AD9bjLZCHroUXG1RwzL4tGb9YJI2ZxHu2b8FlzsddZ/Dvzpa/vmivLreY3A7UC4d7XWurBTWWUpeR8BaMPKUd/kHQ5fba4p8PhzkmKbl0Ws/iaxTRuRS81JwcI290C3vShZFbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759285793; c=relaxed/simple;
	bh=TeqjeYhrKE+tfbxzTrBHdKGfQzanWPU5oQC7NVJSSQk=;
	h=To:Subject:From:Message-Id:Date; b=brb830VQcoqFDiLfYFoYliUmYuibLZrNCpFbUM7EvHP3IMFt77o+F9PAQtTgRAxcEa8QQspPbP3ffyrdGvgXJ8Ox8T/1J/F/7NAR3AQ8/3f9hZwUhNOTMB2lhY9RmixmCdbxdHvRKAaiII+kpTFDt5r16Xm39YHjLUITGi/ytfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQjSFuIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQjSFuIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0317C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759285793;
	bh=TeqjeYhrKE+tfbxzTrBHdKGfQzanWPU5oQC7NVJSSQk=;
	h=To:Subject:From:Date:From;
	b=OQjSFuIfJTpvNVD/WokphjqAKfGZafu6yv6u0tVh5i++luBMh6sYb8E+Lrx694Cwd
	 Ql+jMbVNFfySTZ+k+pVPje4TXhevcZpT3i+wp5CawhQy7Bm0l3zGGaJS717gjWWJ9O
	 OlIp8GGa6gTHmb1xWf8H99KRHRtfMVYTcTY6x15/HsX49RhndDp4ioEaRLt/kTojJF
	 fcf2wJMcLtcHWBrvc1LtWQeEk6w53dYVQUmxwnyFnDuRqotQGk1f6j+LLjeua7Su7G
	 /+Cp8Wy21Ms2amV3N4dnY7Cq0zoyIDygJOa8sOvvF2rR9Dk1sCl+LMfq5moEalLUJu
	 b3hJc8+cFCsMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AE5CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928579361.24112.8520957341789261052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504b8275bb3d0f43331b61029bfceb61ff7eaf6d1b9ec8943fa65abc9a032ace
Date: Wed, 01 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759285793
