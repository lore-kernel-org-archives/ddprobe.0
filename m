Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5192C44AB6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790204434; cv=none; b=cK+Rh9SYTlf4xhhoji5XjuId78DpG8MB8frqWPYSImzzpnwtlGNPWCcxtcnqhuvDRucwqtkEYimgO+KvvPTkvavVaBZyiT5cS1vdLNkhfx6JrTAlz5+cnkVKy1SjwM4Rkxk61P/jJGUqw3rdvMAf7nLkeqFJNueFj5C3+yTgaRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790204434; c=relaxed/simple;
	bh=XsaR8zlEPhjcfnzPYBD3I62+64Qk6DZkwO7Hlk8fRl8=;
	h=To:Subject:From:Message-Id:Date; b=nDM64u6OHP74NlOX5ILMKPTFbVabQp3ErmKK41ueT5nm2Ppaai6xwcnEnTDEESfF5zGoPR+ESIErU1WlHzu+1pRR2DQ8onYpL5Y6RWRMF85SLKs3jirAcBrA2ZhRKSqCO5TA2y86lH8dmjjCuDC+JwHPL9DMm28DrplEv/CwhRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYUwMtL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYUwMtL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A15C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790204433;
	bh=XsaR8zlEPhjcfnzPYBD3I62+64Qk6DZkwO7Hlk8fRl8=;
	h=To:Subject:From:Date:From;
	b=pYUwMtL1dIA4ezt6SLS6BZZthURJmpW82dDd23weZhca9CAVc0YJ/+ilIQqq6woW4
	 Ok2zz96dATVjUCuxyniGZR2Wx121IsymDnGNB/uzcOmj+ecTcG+1gy1INrpnmpPaO6
	 buBRxbhmSXcu94eyerH/UBpN87hRrpqWuI+qdxJ1lPjQUMw6orMZc9UU4Ml5bkGzom
	 kFpWfn3DMC4L6p+wwF/4LSj7UClHDbYqzlx4BOvqPLhz6z8DWb0TkrUrh8g8FgFDRQ
	 Ukyl66KlTM1zB7W5BfXsh+gIsGNlGmeCRmG3R6SIo7stfDWAxbBf1CjYKPbbDMcMyI
	 5nNwDLyUBIwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB770C9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020443373.28254.853553725828016945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3172c061eb8a55b5931490fd0ca29ac6fae13180c374bd83b08a44a4477581c1
Date: Wed, 23 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790204433
