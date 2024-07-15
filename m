Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ACD1C693
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721074523; cv=none; b=aXwkSy6RKCKQLSmjt7B3Eqr3KYU+r3H9XSx6vULMz9g88wEnyZui2dbyhL0J/1HePTL5r+Sia69xwMD0Nv6aQwIzFBeTiC+B70lYUYXMprCL30hpFfARDllKK3uYuzQnRU0shPLrvEHFd4AOez8WUEcTtB6pJZVhYs/lA+2wwd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721074523; c=relaxed/simple;
	bh=h69MJLwnlCM2TLSWSFA4WbYklB3GCjtuEZSml8vZgHg=;
	h=To:Subject:From:Message-Id:Date; b=kwPq+xtscwlHsCIUkxBNg1odXI2HgKN1vYYBCxGDK5yzFWqMuhxZYYm+ezn3qAig3cfRjpirOpbuY1Jbq1Ks11v8RiqlU+nXGuHq7rGlwM8n48ag2RVmcBeWasFyuvKmOR6ZxwLyI/zJVwztBf1Qd3m6txiFxpme2W7wiLNgCCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qt2oxkgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qt2oxkgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4481C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721074522;
	bh=h69MJLwnlCM2TLSWSFA4WbYklB3GCjtuEZSml8vZgHg=;
	h=To:Subject:From:Date:From;
	b=qt2oxkgMhQCAUivQ3ur6Fzs7ZdBVHFZPOcCpDdq1RW1V7/HFdzsdTRc9OhnQjJ74z
	 0SUd4grfJ9IFGsBcBowfOjmUW3Y99e2i1+SHJ+qww6tK9r+TsjFvWd3g+RBVcXs5H/
	 gp2v++gzoaRtu2eSKWe+eLsyc7qtJqQpIkK0IFxb9j35gfHUxKyW2Gw2o7hQ45NRuP
	 W5Ql5ih2teR1xxYyj4XW9KIM2m7icoOzURaACFSvYj6U65OdWKlG4R7VW4v6VLdBuk
	 dLvjFleNQ2T7q7KeVe+PejEtVfpxbGvvwDc4nbm6J92PQauVHeACuu458ZOlMvKpLG
	 tz2zUiP/x6MwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF322C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107452277.30184.12137113443181319887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75169073874bda6dcb0999100441d2e4e92164d9fe98ffd40ed344e84599221
Date: Mon, 15 Jul 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721074522
