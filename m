Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B22D1B87EB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763309514; cv=none; b=ULN3VzZyCnanuNHuJxKvqAFxfDTm5L2S1HP92CuLv/i6I9LtREw6PYYLBWSvxii5lfbN7XsCzymIKJgJM5fpX7a2K+7QJJCD82K5hS57qAMva9No3lrEMnHq4JaX6Z1t+vtIoyU/b8cE6kWrG757qU9+ni1zpwFCY9p00zEKOxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763309514; c=relaxed/simple;
	bh=sfCykz9L0QEnzOBN2zo6tRxdBExb+YZhZdNJdrmk37o=;
	h=To:Subject:From:Message-Id:Date; b=IyCEGDUiB3Z4jM7yEp2gwDKRFCGylsfVYRl43CZKl648ls0Uxm/7/GCnTI0xzo5yPrcWh2uohY0D0ZHpaROH2OwJ4UM62v9Fqht69u0+2T9XOIiCVjz0i9BgKGKgOCzYB/wOaSbyFfe3cTVy4nMf45zC9C5cAzNKzeSI6uARaM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSj68lyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSj68lyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AE3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763309513;
	bh=sfCykz9L0QEnzOBN2zo6tRxdBExb+YZhZdNJdrmk37o=;
	h=To:Subject:From:Date:From;
	b=QSj68lyl9mYWjAQaMG8c5GkR1lme/kMYROJ4pb+FVCvCH5fa2xtl5GUSaaWcBFZ8C
	 sGFMFqLCVXIXdJKqhKJDkX00ag0lkYVDrW2SDwoZOMrSX0rJBo91Cth9e7zZN/hABJ
	 ifZxpHrlJw2v9Ywyq8z1ZvJTcYmWTbDp4HksZfkWsgrWXJiWpa/k/gwLqBFjwMK/ng
	 A9KGGHSXjw6A0LTzZcAy+BoIZ/GjyYfGki+TjR23lkMWBbYIpHztWJ4UbYkEEMAjYu
	 bi0NbQ1ubN4eItJO2hI54pLvAdaZyCvE/TERNu9HJdatuMwY0kjLq2bbtfhlZCxhDy
	 lndzLMfkejjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A659FCCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330951363.2509.12640570957863459535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed47198bc5b6d8b7c9074e8143d558b2380c02d48da3c027aa3592b3ee691e87
Date: Sun, 16 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763309513
