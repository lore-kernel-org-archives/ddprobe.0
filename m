Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347053128D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782685714; cv=none; b=YofhCilo5r6KENSaxLdI9Ut5RHUFoRNI6J61+g0RuV2ediGW3locRxKryv5oq+XHReT0DIHdid7Dy1dJBaWFPr8r63mjJbsUFs8vhrMUW6PzZVUuy4PBaj2AgkaGKF18CdNIJSm6n3UN7HoVId/gwFR/vj9FDr6vn9PWhkZPokI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782685714; c=relaxed/simple;
	bh=91MGQsPbQOJJllnI0jqnK9TKWesTJQA8EfGnoPU4eUI=;
	h=To:Subject:From:Message-Id:Date; b=pPzHd/s/rNPK49MBO9vZ2atl7Pk1pCi9uflxCYTb4R/yZ68jxoNelnx98kJ5+FHOuNt6C6vka6XcsPH2BNcxF2Xvsn5+UKzj80es4Ryrf5ByTM4K0usjPU8OjeiPGU2jBfBWr5UfiZp8eUIFk+ZHTaQlC02MyKijWrUvXak/Nzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyeyjzlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyeyjzlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C549BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782685713;
	bh=91MGQsPbQOJJllnI0jqnK9TKWesTJQA8EfGnoPU4eUI=;
	h=To:Subject:From:Date:From;
	b=LyeyjzlRNue/EQOJFpxcByrH/o1LA8kjuhNInMvWnCee07iZPUAlem4tilXHfnXXr
	 W5OdvJLPw5kjX+oBSlhOiqfkiKmxNHnJbJBqU550HDMq3vlaMQ6W4L4/5bhHGA6t7n
	 0Aw6m00BDjwACwyA7xozTI99plomaiowts1eeajyD+8rROCMhHHI6fVuFpvKZQNkf7
	 yIwhiK85X0cU4Q61+0wxvUkX3mLSWsEEhKU5dzWAjMvSLcPUmn54exz2eOC8/B0TfF
	 G4fpNrfLE91gzow3+egBxG6Yyk0JvyvofE6YIYlIobsRPJ7F/8rvOAnyErHnsQbheC
	 P5uiwXso7l6zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB285C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268571369.14987.5763542609758282489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d367bc28beee07c0ca60d040347651d321aa336a6a4d864442002da39edc7a
Date: Sun, 28 Jun 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782685713
