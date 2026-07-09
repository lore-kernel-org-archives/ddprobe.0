Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B43B7A8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783624114; cv=none; b=pWR3QRpi/lkok6yOok7f3G6EZJ6ygYhf10/S8+zqe10Ok/g3MaJAaRZRTKQ0FS70sSHc2RPKlrNPPgD2ahmpx0lWsmDSknaaBuKcn8b2jpMONHFVELZ3wra2kAwJsDyhdcxdFM7ysR902ZiMrxAL8B3TF8xgUcOYFmMvEbqSypA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783624114; c=relaxed/simple;
	bh=WyYYctuWKBFp+SjIeAsoc56sreemiWEE8GS/r/TVhI0=;
	h=To:Subject:From:Message-Id:Date; b=gNXEqydIIRgTtjml3jXjUm97rxOgSbyz0/ITjOuIb+LBYJDf+FPZYBkSi5pNPj8Ku/a7goyyMpeJQ3iaA/53H8Gvm5DzXL+uTBKMYczSjPUO8h5JuV71Hekf/j3/BTdSJima7idFpTcCy0FgVJlXF7lSK+r978bgK7ocCkzrV5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFa7WnWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFa7WnWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAECC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783624113;
	bh=WyYYctuWKBFp+SjIeAsoc56sreemiWEE8GS/r/TVhI0=;
	h=To:Subject:From:Date:From;
	b=lFa7WnWghAX/TVA3uXwWeFO5OLcMWMyrMidaMyjjzt2a+obuOYxAnIEAXGDApMuuk
	 uYzekbVVb3pniAcocDg3sAD6mYPT7WI7eCmJGq/WCu3EKxOpSY48tdbIX7QZFWgTqX
	 iPlBttw+NrMyFYPsV9r3i66GuUa7X8rLJAYFsbCe0hf88GRlRIXXa6WUzS8l2Xf0Ot
	 WzAd/3qVP4BsRJ7HlseV6QJfFGB40njftpXCCdKUQ8eEc018wr+6aomM8ABgqe27nU
	 aNNv58GweNAID/+PCK612qbA6xsa0UreTwZWyvAakpffxuPQiXaiqzPoDiXUESi1Jz
	 wrPO1ccOVQhaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DB4C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362411368.26415.1040682157641909184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8906af50808d0df19ac0835e9b9cf4fae96b863a5980a6c6024d351c55ddbd11
Date: Thu, 09 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783624113
