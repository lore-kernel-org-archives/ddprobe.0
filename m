Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131A41E5B68
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769916834; cv=none; b=HWfQ56qiRhOP0FNIBVN/p7qLfD4TpelsYzRIMARx12HCK994BcyyL442A24bIqn1QI6c4mkJozTdwUnG/d9EMTsqMyiMd1tzar6q2wmgbX44obJQs8SOAZtFDOOLNEXp+/U2Kb2GAKx1RA8rqZevq2SIuFEfWGqigePuA4bbweg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769916834; c=relaxed/simple;
	bh=vYuO8mVwL1IlaBQZSaooeSlc3IbdNjy94BwuDGqe4VQ=;
	h=To:Subject:From:Message-Id:Date; b=nMtVMG8gs8xtW/iV+CXb5a/i1Aqb/YAMP33VUYICFtgU5OD8SJPOOBPPWm+hsymWhfhsZVKsu9qy1d49qVehKtKsbM0Ea6x6o9K8NNWlnl+Rcqugkl8hq9omz7hC55RhcMqZ0kUAaUAR09IEMCV7zq9guRnyfLGgUIJtCmjTlas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CioAjTGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CioAjTGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AB7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769916833;
	bh=vYuO8mVwL1IlaBQZSaooeSlc3IbdNjy94BwuDGqe4VQ=;
	h=To:Subject:From:Date:From;
	b=CioAjTGW7ZAowfVyd/RLOnou5XqpspCQVEvAFTDvPQM3Y20S9hQEaJqqj3yrXX5B3
	 FcisWT1v2H1zHpfcopcMtThY8/hJ29aec6aWJZDEMWUQTymvlKLMnI/VjAi2recPTW
	 iqfPqutumdA5ujihRROlpsog1XKgpTqnNlI0uAaqD1taQJVnggf579B/v1zMjj7Nr3
	 ImoVUi4EFULelrLxQ+q52y8c/pzY/TuOS8glcd3DXGiSaVW3Sg5oIi/V9U1TRbXxXx
	 Nf2ouSPf8+PyFVddTQpHrjfG3OmychdvrYILz1/78vyYYo9xvsBnhH9I8bu6eXNen6
	 nNCYvm3K4MThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB10E7C6F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991683357.901.10615167443405966050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364eda1cce7a3e89ba92f0cd54ffed605fff1b034e663a2d8140578e83b4f9af
Date: Sun, 01 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769916833
