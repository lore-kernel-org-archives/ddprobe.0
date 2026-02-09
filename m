Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EEA3090D7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770625434; cv=none; b=K6SWd6Wg5AAeA1tSRt2Y9+IHL1F9fmVVRNSdfJdTtB8N2nCyatsL8yVKOgkB3mIcjHdYLvkldOYQLXQT0YBXX21zX/ghIKctW1qa5DJKlorub/VKgjhki9BnN1cnVqU28onOx7Hrb3m8gXOtVs0MGM+SQSKG9LQhJiLd9ZpsRI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770625434; c=relaxed/simple;
	bh=Z9NsTvkG2v0QPNsTQ5hKTu2ar1MddChYkKCf0icotkc=;
	h=To:Subject:From:Message-Id:Date; b=Ce6E3ZFBneEmq5mX1nodW8VOxfk4yxKIJOkbuBUIdHN8bUfPc/YCF/SaQj2vOXGw09L0GH92L/unHhZEZOuOr4M5PrO5PoQK55e2bzlBOb+QT+Z33t/uFyKTg/tt5mvJkd+x6GdA6nW8p5Ft26kVvU+h6VF8b75klS+0Mi9XnFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn/bTmMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn/bTmMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8115C19425
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770625433;
	bh=Z9NsTvkG2v0QPNsTQ5hKTu2ar1MddChYkKCf0icotkc=;
	h=To:Subject:From:Date:From;
	b=Bn/bTmMazXgdbPn5etej3EMU4LWBsZ5jtVfcK9Cov0suQJvw0Kr1aw+apx5zfIqn9
	 x9CwmLM79mhanBh+ccZYbMxHyiOWhrm7nu1w1IekZ4IhmMwxB4BSEdSlr87OhEIIqV
	 bbeGT0ZUgHdqwtaP3ldWrlFbm3wUCG/1ltuBipNeJnYLbyUOB7INV56+/kypoQsgSA
	 or2m2UmI6DgFoNNbcOkPHgTdKfOWscB7b2yRNV3nxmoasavpqLKIMXBUzJHTldRKVI
	 gbVptEK+r2JHy2FAol7A7yqnX4ME86Am2aVASHi1mnEZp1ptner0V79Updn8qSqEJP
	 RnsViw0ui2GGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D99EE6B6F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062543360.23744.16976404349341564294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146c3b0862591339421b2326cea5a161abb54c824b208757242ea018f38e7271
Date: Mon, 09 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770625433
