Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CBA1BC4F
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718602103; cv=none; b=sbl+fGoMjnkmf7xpRl3LpKdiglAtA/g7cWvK8wh4XYJ5liZqAe1OddAjEwHoBStG11Y7Iaq3KyMutrb93CTmyOyoa1guewCbQ8le+bIEhWExdJbQA2x9MKQUNss2357HDQDpozGNoq8sUqwr/e5GgDpBULjYnaDQ//N6UNHZV1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718602103; c=relaxed/simple;
	bh=ur8caWCz9IRMeOO63erQ+10B7Cmg6C1MSHnFN1NGlDE=;
	h=To:Subject:From:Message-Id:Date; b=UQCNRIGQfKrPDew0v2I7BknJQQGUAQ3PK1Zjt2bk9DCxTdmRMyg8ydkWLPO9nn2eirpRy/m+UcHn1hI8Z4LtrLqJItp/0by6GWAEV5gM98iFGTrY2NHp/nsyGnfrbBTua+xRdy3vEUvGkCbbkrABHuQMk9MYPkWyOmBzig5ZpbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ha/vJoql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ha/vJoql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF678C3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718602102;
	bh=ur8caWCz9IRMeOO63erQ+10B7Cmg6C1MSHnFN1NGlDE=;
	h=To:Subject:From:Date:From;
	b=Ha/vJoqlR3l4edJnr6jiKeXS3DoYVHAyPpvIoeakz2/xAyCV/dgYZlenFFmtuX8hC
	 kbA8MYTblyVWJVzajmPBCxUPn2ujBsBWJyaSOWPtTIRSDMh+q0pLwdGGmFEasIXeef
	 ihlnGb531WGO2aREunPZJJhhP1J/E9wOK2iuRhlZ1mWcmhKgsxjWyk/S3VENskw1SZ
	 5blQTremWnyqALP70WIAN5UXwPbUaAat4kQasqKFxjjpz4z3M7rfPyHwBiUymL4MDw
	 3v5WzQv7BfxsgGfzColiQV2UvM0zFyKBeMfYuLPfuQAbqGKBH9Y77SDlsmW+D1b+GT
	 /Vovg6aMxG9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC0FC27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860210277.32018.4873999811349124695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f58593f8bc948da9a6570c0462594a7f4abbfe4dc693076a07028f6bb9a99a
Date: Mon, 17 Jun 2024 05:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718602102
