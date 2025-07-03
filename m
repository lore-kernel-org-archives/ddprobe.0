Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275FE2E1742
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751539194; cv=none; b=Yqi72kbgY95wJbMd6xUrYLVToIb1xNeC+mUYBTpa5qE343ZjHglagpv+oW03euq5Qyew3BkBMJbPhpIH1ZfmYcZinWYD4GwCXtgS7FzWMPq9g02J9+3DpJVlN5KDSZUKYzJVSjxh5O4IaWzC4vLrcPFkPMjqmZDjDAsE8D6gyR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751539194; c=relaxed/simple;
	bh=1nM1Q+vDKTPTfmHwNoiLqPPrM6G2qFys7eBjgg/K+r8=;
	h=To:Subject:From:Message-Id:Date; b=hLx/jLYIWvxHYSDuQwXqoDSZyWybyz6Itld2oyGjhqp4xpWMwN+gHbRAVIKyty/Pw2NrRy6FH9QPzmgNg2RNMW4kqAJOwTqZXVuBzEpXfuiR5X/oTwSBC5n2OtSdXL0Xq6wg0GlRspAZHB/ksSWDXMF2O5izv/ISDULe2z+U2Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5uH/Hn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5uH/Hn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1E3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751539193;
	bh=1nM1Q+vDKTPTfmHwNoiLqPPrM6G2qFys7eBjgg/K+r8=;
	h=To:Subject:From:Date:From;
	b=V5uH/Hn5FCjQIuVsOSpTtg2RiTFIw/n8+vAmYQP5mDUIcYgUOEpCh6Z4bax0AgBRh
	 CtjXgSjkRA9Jr0IN+7IBRxxvCLpkdDSU4cD5LG+WuRqbwCO9j/D1av7SzP0pdtnjfi
	 vuKBtu5jvA7/Mbg348s0R91Yxa/tXQkbKxt72kn5t6iHUc4kJdhU4AUnoHpaNWmXaz
	 /tjYGOjxBsu5cI2CeWxBrq1nuRmgxgylCZxXkVn0cpQil6iCRmKLVXfUa/tpxg/v4/
	 2q1qCvgPC2zLZ2GOexDilZSqE/kzsJZDtrKMA8juC0FpI6g2Ys++w2HmSZSoXxicoQ
	 DQ4dgU+8FXMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC2C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153919357.32319.16058142672973164139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef36d9dd2ddc72ac7a42dc623bb2404a6528d5f3384807a24f8832ea31628f0d
Date: Thu, 03 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751539193
