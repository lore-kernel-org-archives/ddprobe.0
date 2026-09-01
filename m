Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0CC1F94F
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788243034; cv=none; b=Nml80Iap1wpdo3nWrNOfm+6HlLpocNXLIsQa7xP+LNWr0EHF3TdlSGiJIroFMYOu0htga8yXa+Z5Sdsfl9ZfKyyNLf/TKdCTD45oB6mj5vkpzAPCthp2EnWuGsjIYvc0XW7TVwn0QArC5Nxpz+sEyrw0KrBQRQyMXm7M/7binso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788243034; c=relaxed/simple;
	bh=ra37DWZ6mnWFpGHVt3dCkG+1X2jkzgzfnM2HhEmVjZg=;
	h=To:Subject:From:Message-Id:Date; b=dqpeH2DMCJg/fwW/Xuq0xb66rmGTkwhkCV8qr52lv5W0/hw/QJIPZt4FsTWMDsr5Tw8GvqJwJCeKSeYoYgJ/Fp8xbs85ggY4Ov81ze1a0lwnUsWiyIxX6fOi+9VtxIOBSA807UAIRN9U9JkTDeQAg+9OuZiggKTG3jckfofefLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zqe0xx3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zqe0xx3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDFEC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788243033;
	bh=ra37DWZ6mnWFpGHVt3dCkG+1X2jkzgzfnM2HhEmVjZg=;
	h=To:Subject:From:Date:From;
	b=Zqe0xx3bJZ/ml7CYW6Kq/do6IjPfWMOWhaXdmfYDe5u3JB8+1NjhBbh0C+0N4xO0g
	 XfO4hA/R+sbIIKRyUxef8r/iUD2/Fkn0EZ00DpJBlG4gX/rjvbSVqhVfrUF5rAgiDy
	 9vkVznozPZuuySKSEfXcVOmHSBgXD9Y+7nIEqDFTN+mjeBNAknfxDF+V00mFj1ASVc
	 20T1jt/i9JTuEDkyWIt7aTDWJ7haykZBw6PCzoGCmcPuf8rGB8e2G4iIvc3ciTxWev
	 GTrWgER6ZRP9c4/7Zqacke/FgJZSOi0XtiUD1PvAPSPYmUag+YNNKBcUP/fPSz0y/Q
	 cc3mKZjAIM7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AAAC61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824303368.31628.1709897178654920359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30872dc0c37c4357bfc13e9290460b237935e225a73635f3bfbc44f857cec6cf
Date: Tue, 01 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788243033
