Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9071D5AD4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788051034; cv=none; b=PrfsN/6mPU+PGGXZ9eLAgUXYxa5dBlnEAaDPhtCu/1Y8Ir/ZC+pFLlPrjwKxN1iwx7Niv9pIesswVMm+nkyiPSXhncN5deTE/qeGQ0C4iGZQ4m2TgBXRFpeaW+c7EoNg2ciUubGNYk4iHaKe4NUB1b1gChMYegjMIQDC1UYQGuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788051034; c=relaxed/simple;
	bh=azhmKktUehylrabvw6KWWijun0ggtZs19WqaIvhULjw=;
	h=To:Subject:From:Message-Id:Date; b=JEnhacU8DgqtOneZgd+cw6o4wwcUIYGT5t2hpsYM4pHtH4JyK3ri/cMZ90vokZC79wEQRhabtnQh6g+Qsxfc2dD+RRcfQinplMN+9RBxZB/rmiraegtB+U1baQZZ8XE0PWHaPtyTb027Zyy2jVyxwnZGoPOvfBTm5H1Ijp2zqJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs7eYLkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs7eYLkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27AEC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788051033;
	bh=azhmKktUehylrabvw6KWWijun0ggtZs19WqaIvhULjw=;
	h=To:Subject:From:Date:From;
	b=gs7eYLkTNZP4OhCn7YJkETjGqSYqJHwHPxBbBYlZIyBUkqW8ahlaZy3EcKbHBhfTd
	 z7ug3bLLJMOp61bgQQqOVq3fqt4g70EIvqeA9eT6ypZa+sQlzJr1rkrNCIlrrU6PaG
	 qa7AIM2W817GD+T7+Wa7KN5TNRSYIVZF/WThDkWflEYSJt3jVwtlmyZnGqmsNV53wU
	 vwZ2LZ2yyLzaKkhGqK5qdwpQUeaYd4140xY//4NlpMZEqkg3SdGkJoTqLm7CAmUHm0
	 8tH646jMzb66GWNG+Fv9MeDMXzDDzJQBe4uOsDnC9CFEI8/ylO0TZzcGrqPV44Iw/d
	 IwAbvOu48YTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA23CC61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805103368.25513.7595982427889816384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d71f9ccf7cc7794d48249c32becf55277e503714650653f3476e2e96fec2b3b
Date: Sun, 30 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788051033
