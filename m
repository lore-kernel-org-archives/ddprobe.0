Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2851E1C4617
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736805954; cv=none; b=Tetm3MbZApMFqFgevfZYlpA2u9FvniITcy1m5Z+u8W4e8Dl+hGn7zCOu2nncG/JsGF5EqzphhO1o01xsxajCaxR2FQN1kWCPqYer/SbbPT5k8fBX9aQQLcQqKulPqJTgo3XZcVPPKiwn8bj8mOiHzxsHyqhhz099KOoS/nTuhwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736805954; c=relaxed/simple;
	bh=yTOpHNoP6fOEZGdVozJVo+URvswaxHp8QGQJgRvRE+s=;
	h=To:Subject:From:Message-Id:Date; b=C2wB2LHAD0JAhfB8uiPs70Ijjimr0GUAQX5mav+L1FtAbrZcT/9xRV7/fa2nDmU155uLPnaq2LdzuO23bZDKklfxEeG3kiS0zSQ4pP3rA8LQly3oabvFYMV/33O6NeqPyNIZKC94RiAfAaS45OO2tEZuAfEYiPrewWyEhKIfsGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArKr+cbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArKr+cbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF9AC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736805953;
	bh=yTOpHNoP6fOEZGdVozJVo+URvswaxHp8QGQJgRvRE+s=;
	h=To:Subject:From:Date:From;
	b=ArKr+cbgZB7fXz2tQ1hWJk6x7puxFCcVw7hISDb5gf8fLaMBM4ym6Bf+eubxbhzWd
	 5tuS40nkkPyWXWiV/xc/Op0X1lMIzT1nMFioOwGg/ruHBHMb+uVrlADP/KXOjKuMQI
	 vNMzB5uPLpcQwNeKEZbMZrWlL7C+vCtpBlwviZOaYMWfqIme9qS2+iE1fyC2o6G3WZ
	 llvQG69R/ulrIL0SSRX0YF6uqp8DPKGDWmJh9iCQ96DZRs1kOTCtWEOPaU84vJoHH7
	 Nrjo7O90pCMUkrh8SqIQWM+bkl9oSIlYK10mjCsWO2INQ1Qg/KRAj0OqihiQEt/QA2
	 2BBw+09uq80dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97369C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680595360.30847.2091192190214034754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323b2895772d7c5449c91ab61bfab9430a1a9d400418159f2fa64d4cb1c0834d
Date: Mon, 13 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736805953
