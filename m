Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AD115CF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705725497; cv=none; b=uwjZrV1YQFn78maL/JNwPMgByTGIsOWWWLO2BR8fmuB2uANh28YK16/FOA9+XxZnOeFrZtC34yDBlyh9jgbSDv+ZmKlGftbNmISKx85T3NC3YFUqw6zpreZiHIaBnTmbigocM+qDfaL2bWRKN/jpeAhysUXY5GSI8YBdswin1Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705725497; c=relaxed/simple;
	bh=FyPPn9UbVQQttc2sQnXo5wX2kg1aZHfgNhjUU+CQq74=;
	h=To:Subject:From:Message-Id:Date; b=gJFdSs1UHjWP+pa+R5pSGYHQkfLK3B2zu2+dhkLltAOjOcY97rEHfXESSr6EIx48XmGJFmrk7ZocTUKCVzheR4H/TpauClE30aCr6rzqbRaerOHWnRc+y/T3KGDUicF5fLiHQE8jcgXwrV0H3uvg5cf164F7hNj6FX8CJZbmytU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCT995iC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCT995iC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFCEC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705725496;
	bh=FyPPn9UbVQQttc2sQnXo5wX2kg1aZHfgNhjUU+CQq74=;
	h=To:Subject:From:Date:From;
	b=hCT995iCwkEJt0UFFNjrste2TqugiLYa8ML25qQU+fOPn/cmKBUcg+hkhh6YkKnZ4
	 toB10XKX9tD/BopwHb6YETkZ8OHPajyGs6vmq/7jsNK+MNyi/BfBRnSz8cmkYqpQnH
	 9g5lsXEzAbrNnA0GmnDESUE67HpxJpS6yZOS73nbwomvNw+L+vgh/G6+uP/Bnlv8sx
	 S4LUNu2e7I1/C6vr4mHRSjK07CX9H5ZaJLTh4krU7uOOWV0QlSv0EM/Sy56PsKDZ2I
	 NSjIcbooc4YRzh0Omt5eVNhfaYAo37YZkmtY2USyjPWWmjIZEHXi+kDsroJo5lm1HM
	 LndEr7Gklb10A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA12C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170572549636.15472.76487366188890475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23db150e0566c0498036ab6cd128c46d59b140126ecd25bd29bc731f9d539df0
Date: Sat, 20 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705725496
