Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158381925BC
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767195234; cv=none; b=HUqnf0nEH3VgtPl1ZRIEkPgWjNwGxPXAt/BQwEXocyEl/0DMm+ub6Wy3qFjPIt+CRdKuri7l/mHm4cCviCPwsfyGQy3qSxObp8B0gOyGGLiA/XUHaurJAtx4z2+T0NIC8nYHdXTlfPfyhG65nkerzNqLUKVtc1WICunMOHmWi4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767195234; c=relaxed/simple;
	bh=4lJT2J4TCSc+ffphnA8CjnIkyXvbaSB5acFcFsRb4Qw=;
	h=To:Subject:From:Message-Id:Date; b=d8I/OuiO2XlHJ+WnEz1TPwCSnzdY3/lz5y9M8gOrf1/kpGqq80Co1UuvorQI2lsrItw4cCV4mpnVHy1iDStGagLKZWf0Gg/rb+BvzCDFpBBLZHmPomA2EccB+ZNnjyUfl4f66ctrM5tukYA9EK75Baqmif6v2MoXkU/f9iRlTdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjbXgfRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjbXgfRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCF4C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767195233;
	bh=4lJT2J4TCSc+ffphnA8CjnIkyXvbaSB5acFcFsRb4Qw=;
	h=To:Subject:From:Date:From;
	b=GjbXgfRwv9G81Ui+xhmDeEBnW8WMOs6Gp7jjqUIgf5WqHaC9dgXgfGnw0v7ULJbXw
	 ldlBtbX8m011GMtoykXKklZMznJgF9v8+G95ZRsmzgE5zqbmPLCPFxZiFugbbKu8gX
	 sa7Tv8dGgMLEIqT961BSPoy8tIyZPsU4Vvzvet9Yhtld85OUy4mLIRDZupI5ujiRCb
	 AgeP+M6szRanUWW8xpWstPG/bfGfZrTsRVaEXg/enjW9CuAxRCGGqJa6KaaVFEg2ez
	 sG1iYFv1jcPHOpYaVg/sqAF5VtxHODspafeDc/8lNWuFy2FqjvuNKBxurBLLx8r9ry
	 CbxJfuakBuyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F663EE57D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719523357.25091.7781368197942840868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08b82855d59d76d4c6dc77dc2675f37895f36dfca3f0b00f1a4f54971a1a294
Date: Wed, 31 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767195233
