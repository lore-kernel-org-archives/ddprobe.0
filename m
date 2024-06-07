Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1E615B115
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717749443; cv=none; b=d2wbYOvQx1fvFJ1DgYELZEM2YCgy8MpzEY3Qdq1oC+OY9ffBigAwXio6heqNqckljTmxBp/R5DlKDPHqLwMkjWt8Pbn+sljtOcK/f4UIRfuL9+5Qp4DPQLumE3iS1hQOVbuky3Wj0wyGErks//1B64xQlZ5Y0TTaEuLbTLeDgjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717749443; c=relaxed/simple;
	bh=tulNx7LlFPkbit4bRRieM4zXRFmJlpHWYtzL3phqmmY=;
	h=To:Subject:From:Message-Id:Date; b=BWhu9fbHmnxBOn/44Fhn7BsPl+Z1eoEwGk8KbcOjmXKtNzmK/oRbFfbwjH/igz37U9q7QptaizCCxYf3okBIriy77rTgmb/iZI7bbEfJN1GqnOm56gJyH00Lmh2DQI3Ib9VVxrXvcdX4P1mU4b1+PIlH+T2YVF8NaX9tjkG1EMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJZYanU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJZYanU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA42C32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717749442;
	bh=tulNx7LlFPkbit4bRRieM4zXRFmJlpHWYtzL3phqmmY=;
	h=To:Subject:From:Date:From;
	b=ZJZYanU8kNYt4oAyJutvaxaBw0CVhGAM4e2jKk40PRIN7INBtrlNK2SY/kc7K2xIg
	 cV/QRKkCYF6YXMW1sq5Phk10lXX5l6Jjyi+kHzz735PE6lPhalMSezEaaI9ClYmzg2
	 +A4N0l/m1vy3fgvPUlrH6xRs1Ojw7JKTCBxX78ixSDMN1bIg+5DHI3N8p51gSORrT5
	 a1IDGA/zaqlOwHqlngz9ALOdbwEmho0yOvvgmFX1GhdvylIzYa5wJP60Zh0rWkEh6U
	 pleyanM4j3QGCWXd+WIEsw+ewMgTM8VrDH2MvFbmxTwC2c0uIANRfSPYNNJjMPr5VF
	 mMwSoRsNHoUBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B32C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774944279.5597.706838124461919310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d5c39922c030b2ed684de1235a0dfae2ea158426897e3af2d9060f9ca1a9c0
Date: Fri, 07 Jun 2024 08:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717749442
