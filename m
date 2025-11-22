Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBFB199234
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763782914; cv=none; b=FpRzIiPkLlg7eytnFNq86kYFhZH7AirJ05cXWI4lYsgB2lt+EhViMnLDWI4EI8SwM/BbSdPwJBEsWVaCBo0tjZRuD7l7K4Xhg898gqqnOKaPuDi0a3di7waqisk7z9Il+qlHAgt06p0mL+1OSB/CrOYI9Jc/8k9N8m5ufPb4d5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763782914; c=relaxed/simple;
	bh=RVTzIFX6aRtHZPTvgF+wgXsPl80XCkqLN2OsaJ1c+zE=;
	h=To:Subject:From:Message-Id:Date; b=rPSSskr3e07nCGLVFHzl98N1Al5+nmSMtmfOLKuMie/ruHp5zfYk4W/vBDjiwjkFyiLZNzNTYzZ9cqZOYJc78vSI27HWDNLLnfdSa3GoRZWwQcPuwHSanputXfc7gh05hKTFdCF9By09hCbB2u+1gg4G/3tAUP4Pn+kkr/x4DJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAlUsdMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAlUsdMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A6DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763782913;
	bh=RVTzIFX6aRtHZPTvgF+wgXsPl80XCkqLN2OsaJ1c+zE=;
	h=To:Subject:From:Date:From;
	b=aAlUsdMdabqVHGRAn3nIlhQDtkzVihX1RTzuwoGKRWiRr0Jrl+BCG+ti5Y5sHWU66
	 E/DxJzOR+0JFzT0aLbxgI7V3lTie37Zd+XLSLTxSvmDvVwdbPhuvegLmUkmwldB3/7
	 UGEDCBu05w3B8dyZyaWgQEiZKPFkDlx4+hN4Cg9QhXwowRKWk1xmdIYh0Po9hJ5Jfz
	 jtHP5+Ep7mF4KntMPkq26hrjG4xuVWSMRvuVQadlSYnuPW8On1MWDLgE3aG8aQ+MNI
	 caO/J72Z3RvDJrzbZnAaDfUtxrJCQLfxpSgTsSI+FM/nWCyVQ9CJRqsHirkpb4ntP0
	 uD87c2VL2sxtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91071CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378291358.31894.7511712563737700343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4aae3c79c68d33efad034c5f606f439dfa052727680c2c3f2230c1de0240420
Date: Sat, 22 Nov 2025 03:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763782913
