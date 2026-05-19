Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C00D31ED80
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779179434; cv=none; b=TUNnX//yXVBgYkOGvfeERI4eYLWP8aCl4Ayv3mz1VTuzsrPWcMrhmJpF0W4OdTkTDeJ4CUX3mbfMjPcrcp1o/smp/X1DCB+ntGcoHomGjUrOl35r35MJt1Bmju0roC4SG4n7IhVK2BlufDyE7yBuq/ZcsYGFbbYpfN13kUuVh3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779179434; c=relaxed/simple;
	bh=nWTXuIMz/J6d3TbmcMnYJKAOU9fZVJzIF5UGyVlts54=;
	h=To:Subject:From:Message-Id:Date; b=pDyGeLWZZycPJukJeGR/stDIDYc5Jbfym+oJ2UZBtm2y8g4Z4ZCr2wrZfGakiblFuWNEAbbPO0knKHD/ppT/pl/FBsSOkISsBrdHN0Wyd7Xnnu01TC0+fqTVQkrGmugac0ldc6x3Biuwb0PfdO5EV4qALa1vblZb5mHxTVNLnVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkDppUpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkDppUpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9742C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779179433;
	bh=nWTXuIMz/J6d3TbmcMnYJKAOU9fZVJzIF5UGyVlts54=;
	h=To:Subject:From:Date:From;
	b=NkDppUpmC1ayn04MlfskcJG5zLZA0ZqTIew67uC/2r6kspvuz1qHUFmWNtuXqDUnJ
	 cCvQScEUIR8Ts/zutfglMBFhWWUJXHvM64lCQvfZpSps5wLxNE/trQPJPK91WHZQNl
	 vx8ZBVJUFhFTU7OghUqPUgWW6eYb7N15G/u8OpYP7de19CcGP/VoWq/K/qbwKx9Oc8
	 T/yMMEehpD97gfSDYTaTPNeBy2xtBuKydaiu4te2WnIuDRV2E9DrUIfb/tUscFAG2c
	 sN9bNT4y5iomC90dAVv86lzEUpboAplnmjI4/nBOp33jVvoWdVkZzOVZpCMmttg+WH
	 Pbk+s584vnwSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB98FCD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917943369.13328.6182433326366895046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2a0bf6bf87b34352f333f110a02d0bce75e88207231b567df08a46161d898e
Date: Tue, 19 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779179433
