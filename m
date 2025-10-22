Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06270348471
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761141594; cv=none; b=FNJ5ajof9abCwnN6ex42ad57vcnZpWaTUHhZhIaAw/7JX33LFcyxD5wRTx2Ap5czL+u/qP+MTWAqjbHl8MyTEusZIyVzppSSY4qZ0aCjITgIl4gRLtxAgGvQW/eSUvqBWFChD9cc+5/gWViIqwZBC3b9ABs/PhDgFJtLlAiNYM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761141594; c=relaxed/simple;
	bh=vayhpz6Yvmt7qe0SsgQib8ziwYgoy9IXOUY9IaU/SpI=;
	h=To:Subject:From:Message-Id:Date; b=GLRWpmfMmaITIVoF6pjTBOcu2IBuBF5AhO9V1HlCcBNU+3GwDFwOT+QoD9kzlHHPYmXrpFAHo01u9v0bDXLcC4CAvRHX7yjPRquWM207orSccS/Lr+5N5Wk0tYKRAqhaEux3n7246Squ+UjnRuR1B+a704T86dSp2Bpdz6oqMQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgYlgfuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgYlgfuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761141593;
	bh=vayhpz6Yvmt7qe0SsgQib8ziwYgoy9IXOUY9IaU/SpI=;
	h=To:Subject:From:Date:From;
	b=RgYlgfuWJphbUYuEKoBkKwCJ7yrP9kNwSd4iRI4/oYSDRtO8sFdxT+ZHRSPN8ykYU
	 EwBVmQnwB4famiqTXZZc4MaCIEpsjD0T5dZew/xnNyYXGFqwdKvZFsHu/gIHU159Bt
	 468Ygom83Bv4DBuq5a8ffHz91FhJD00hXswOUD9pS2fDWJQP0lZ+HZoqSKnpDdaeN9
	 L9jd0nU4uQklk9b4upA+g3pRuEzrHPzXFkyyC6oJIy3ZR8qNQq0/2JK6JOwhZ+bZtz
	 ixzDTl2A2yEpGIRJ8oaeThXHW+rZT2+TOQMut4HUSAGu5MrAEYEpX9evM4Qb25T+KL
	 RUgiV363lfeXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FFCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114159357.4088.7784666405596087367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cea438e018cab75eb613f2f3b59c9bbc9cca94bf5ae02a5ac7a9f093acf22c
Date: Wed, 22 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761141593
