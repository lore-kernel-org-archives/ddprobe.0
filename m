Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196572853FD
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762843794; cv=none; b=uOf2Wt2HhMiBX3fK+cjPGb45/Dxp9g/2Am79s7ShBsGiXOrXIsb/WQVeaDne2lf02rzUCrxPXqHtwbTFEJOQkpNXKwJDq9YyC755SHaXw1YhQBB7YgmZxYWIaoqsIC0Jhm5RstOBBrxcu03L7c89s2N2awZv0zLSt/SCOln1e0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762843794; c=relaxed/simple;
	bh=CcjQ5Wcgr70nh873lh1o0CKynl3Mec/0yLpbbOJEO0E=;
	h=To:Subject:From:Message-Id:Date; b=KWnbqcGhA0JJuj/ixDtDwMxnsLEg+tIuLzadClPQbBd3SX+do4UsFYgwXFQ4lvHJCyCNMjHNOAbfbWLHzhUEO9LjfdmNjSlMjIk1nYEVGhG473qGJTuQy2G4dPFCwe3HfyTkSCJRUwMN5E91te8v1l9xhqjfS7ldgwKJmtmjEn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw4Y8AB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw4Y8AB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E099C116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762843793;
	bh=CcjQ5Wcgr70nh873lh1o0CKynl3Mec/0yLpbbOJEO0E=;
	h=To:Subject:From:Date:From;
	b=kw4Y8AB0sEFhz5MFk1PHWxsEjYb/X6SRRLeE6Hh0RIxJQkkK1C1EgpDWhgn4eRK0r
	 SrzwEBEXXPGb1G01S/eQ/IKuHdgVT9UmZx8PCEKavBvNDWix4nz8yFY0AEI+pJFM1l
	 U/PLiBIJOD6A13+HGbEE4/rewz6dL+tiprZB4y2tWGTGKfhdc6o78XiGUAG3CWCfLb
	 A/iSPsKfUYh/ihlYMC9gR6xrSOoSvAki+tpxp6vQ17yc+9v3DlYeH2l+6sfYwzObNr
	 uKBTO5poEjRPyI+cxm4OWmfeo8T8br1eNZ2YUksyaVa+zqObMH4f9tjYwz4PPUkfOp
	 v67k9to5JcqVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91175CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284379358.22426.10650160091986030443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ee42adc9a5716829ba17fe13ae5c45003d40dedf8c66597578b9213ef164f2
Date: Tue, 11 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762843793
