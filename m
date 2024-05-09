Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EC112DD82
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715297543; cv=none; b=Ly6PCsoh1R2IBDn7aFodmrkRJLsn43bSdGI7ecUWkGiRtK3XxfqWfdc+EeCqwTXsLeMYJlaPQjsMdBu6hmTFflCA2wtSv3iUh79R1zWxef2c/p52ZLxTm5tA2nYBVn/lbwv5oClYR/++YIvhLtLc4zpmxNYurJe0LKMDlDjxw20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715297543; c=relaxed/simple;
	bh=NgStyUFL1Tx3HKAIF5CRxrDb7Po00H0HFaZJFxWdU9w=;
	h=To:Subject:From:Message-Id:Date; b=lrXFEt1T8o7v39Gag6ncm06QccKZs/nlUA8dgilxzTdYSxD0ibYyhnsTfgF8VTjyu+Wo1sYGUN+qAvR0lUR5SJxZxegg9qDY2KZas5hqYHlR4gQhsLQB7K4dO5l3NEFRCyjXwxPmb7e9YE3n3sJBMWWuyLpbi7jyBh2e+xG/4Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfCQjeCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfCQjeCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B0BC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715297542;
	bh=NgStyUFL1Tx3HKAIF5CRxrDb7Po00H0HFaZJFxWdU9w=;
	h=To:Subject:From:Date:From;
	b=PfCQjeCQNRetKN9FGdg/4+x7U+I77mmhlkauahwr2ZFjq1kK+GLihYWeCcLRW0L/H
	 Fz1s9Q7IBtOZZKJ7CebYKqfngCY9BM75SgSw++ti44+fGflnKG91HS3LQFOqakpEvv
	 +m5KdaKW2ICmU8Fw23NBM75T8ufitGVI6fDP317bniCo3YoHc34YZ1GfYGtrMnT1vr
	 ELKV+4WQ6oS/6c46O90q6JegJW0bWDvrEr5P0J4wAkZH5v0DBwqAVO5dCCzjrw2BXU
	 IASZoVy/Lf4nEDh/50uojTslQzQxVlaVkzZvRJmnVBPLlqFjWJ0OkbpZ+5MRhBPNrE
	 vHgaRl4frXtIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF6FC25B74
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529754280.7672.853611703466682014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad6990302e6861115f37ae2eca1b12dd00014ea89c59cad74371906f68bc25b
Date: Thu, 09 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715297542
