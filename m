Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496D84CE662
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792418434; cv=none; b=KKZU9GGHTz1pWpyIqMEs+xQN0S1YgDb9WJYIdeTGc5CtBHD+eIncvrzsnZALKqjEoU2LN1y0BtZteCErsJQHR1r0Ciffqu9WJccK1kjmNFws2bNXP362+JycjKql/UmhtSgz+VrEA5Azn99yrnR40d0THr+dvYuvRH2P399GBvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792418434; c=relaxed/simple;
	bh=cYbo3+0MnNioMLDoKNkH7CImQf+kErYgC1zJjW4Pg/g=;
	h=To:Subject:From:Message-Id:Date; b=kvtbGYF5+VxwhCsENJiok9rdx8Kt9qBNAbK07ZIzKTFy1hWS6V0ggdptxnerPp7h01hC1AImnABQMddRJTeQiO3jw2bnSnyOFD8ucC4biHGEkqVUWM+60yN1DBOMq2l9+9QIP3YEjklrKD0tSF9Wl+bsprsOasSI+Ge9r4N05U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrHdcaY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrHdcaY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BD6C2BCFF
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792418433;
	bh=cYbo3+0MnNioMLDoKNkH7CImQf+kErYgC1zJjW4Pg/g=;
	h=To:Subject:From:Date:From;
	b=WrHdcaY0Gb7LyCu3TBuksuGg2S7FoxdoIrAs/Zq9MlFH6F7eQseSXV5k2Ky14sWvx
	 bN/J45y3tPBELW0CCab6+cjR4FsxnOmZAES/bjiGX042yr17T0xwPYYRwdBu0lEN5w
	 EuuWakPKpwRNSTjOK8zwn98S1D/BHb1cVJtoNcu0PuZju4TXPn4KncdDThJQv5L8M3
	 NnQzvL1z4GADze6yybCY+dSlvFL4vtK5anPx63CsxgTkMbvYoZQu83jTyUR4psRyUE
	 ZcBWSKC6Nkrdl7Se6ND64PNP6pi9I/UMOQCwTgR5+A8WX/Y+zjtjw5k8kKf1fQ+E2J
	 5vgvZ+ebgq/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EABCCF2E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241843371.28038.15330295458021599442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d0b004bd884d40832079c653317c0e42ab39d152bcfbd191320e05d19aaa5b
Date: Mon, 19 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792418433
