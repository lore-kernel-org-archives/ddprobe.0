Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A388472
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722162354; cv=none; b=Owkr6mDdGKf1ai/srBmP+4frEtzM/Uw/hVL/ny1735xgWJDyuBP0S8fnHu8Uoq+Jb1IYRCST+94WAZbDML1oLp0XLqmhtA/Lx9RUdDjTh6ly66iZTzlDkkklZybuA85PgIV/VDj2JnIUXK7/cCcFIOhHLdKae6KsMqPtWviISZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722162354; c=relaxed/simple;
	bh=PBoi+DrziR5yNuoZRzPh8unNKfw+XSH9Kdfx1HQbAdg=;
	h=To:Subject:From:Message-Id:Date; b=Lf/I6Rt2YlmYdz93+csrzu8n2sp/RnEDtmbUuULVcr8whrcWhBhGt+MS3brpDiz3SgH4xeylCg8anl9goRkFOyrx7EgSE0ByaSUCOLDNNa7DLI4gJ815FooK7VeYflTJ9+5W+JWIkFlHgiRj8jRbUfaQbe1KOMffEWmuCKuqMWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0BKGzhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0BKGzhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD54CC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722162353;
	bh=PBoi+DrziR5yNuoZRzPh8unNKfw+XSH9Kdfx1HQbAdg=;
	h=To:Subject:From:Date:From;
	b=E0BKGzhr2oKw2o1QJmJkbtwgggQIe8mMORbtwx8WJ7Cm3nfohqHlCN+abs34IgbF6
	 6Ihvm/3AVeazLQUgaEfPQezHZipsxmSfsvyLdZCw69s4eRhy2S898WDBGmCH0DG1in
	 +mFaBQUmpv98uRbQOQIf5iHSVOCywZNfqBZd9IkHTD9GxzufThN2eKrlJZ7tWkePBE
	 xRs8ijhShkFlzaytDvVrKaKo6c2DkiL03u3auEbcFkw1UwK0KAKjP/B25+zM8rNu6O
	 6Ox5Toge41wbOCWxfa7wzHH8/aNI1aFxOG3GSNcP/FqjzHxLEtYQWAYDQSM4GjgOkb
	 KIUIvAGZrcQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993ADC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172216235361.17985.1888827087162127620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd170d3c4e31f63cc8a029158e28fa3a5fe85a1d61ada871bf94d69b7ad7b7aa
Date: Sun, 28 Jul 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722162353
