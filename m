Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26628770E2
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728416154; cv=none; b=m2rPadKCRlaA4U43Are5qo//EqmTXqLj6w9FiwNFvSo34A8YmHZfJGZ/tOsJ6SIQpxDdg6nAedQfxXgN0rZsocfL63JmR0752qcn21MRtRzWbR6Rt4aJrcmp4/KUFZMoiqStGOjWrkzHdTZbxQAhFZHbNmSIPHNgUBZVfEM6n2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728416154; c=relaxed/simple;
	bh=PHOobMNJBcgH1cOLYvChQ21zne3JLXZTRa5cfW2prC0=;
	h=To:Subject:From:Message-Id:Date; b=duyny5aDJlU7sLqzm8C7WgF8M8tx90mZZm1rlMusBDPOjYFXLaY/TMudIWibRgPdThWJnUAG7bnnd8d7Cv8ieN7/d3F6mOArSHvDeHC9UxNajqSqG3iBmX3IIDzY24tpNK55TeMGuih1n+etHIMCZSJ1QephmUZO7is5j/cm+pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPYdApWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPYdApWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4776C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728416153;
	bh=PHOobMNJBcgH1cOLYvChQ21zne3JLXZTRa5cfW2prC0=;
	h=To:Subject:From:Date:From;
	b=mPYdApWVJ0pfc5GJuojtVpTrfZuSnS5n7MiIoT9cW7Hn54oG/Rks5Ml2fSRLkEpd3
	 GE/la7piVzHZ09zqkzhDmhNWFd5j9nD5Wif3xyyMVgd+N6SIuHGy9gCPa+cpr71Zzq
	 enkbHZIWWybLisDp2e/hjwTyjTJDdQ8896n3wHHAdZuSaoCs+cnbwJb2C0vXfogK9R
	 XtI5WhDQTcgIaof3Ksg26BOdCedMcmE6OkWo0THA7REyuLEyMLJRkyTPxqLha2D12j
	 ZM48ssLa3Pht0PrOuA2otKmU47dxuBfltAAsw5TWRDPy4tcjJIYNnkObdG/OKBtIrJ
	 akaJgoOr+JgfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF1CEFC4C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841615358.6338.15708554659686228970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14e27c96b12305f8b4b9ab26ed7dbfb051f2e31b72e0587255ab41af4a17916
Date: Tue, 08 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728416153
