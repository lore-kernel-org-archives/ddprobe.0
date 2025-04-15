Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C81714A0BC
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744724394; cv=none; b=TweqRBbHTKHr5oke2whKXwJddiPxcly+gjK3o7+H+voka1XWOJh/yk6VO+B/fnhm8J20MgDuX+S6Gd+B+pyrKGIDMdbotR8e79634d37N61kEYs2VB+wagUHuKXHxQirtPSpIGyi/OsNA1veCHeiZwAi9bBge+nLQO+1mCVCvE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744724394; c=relaxed/simple;
	bh=3zvAEsWqMpFAiLUihuesUrh0sZ0V5glXoxouy8ztXaI=;
	h=To:Subject:From:Message-Id:Date; b=BRg51Zc1K6zi7O4MEPy1X5rNe3vdGgb8A1/4BNAz9AZMOrDKYcVRpL7OdqhpLYNzLKPxi65yhmUR/3vpIsd+w1QK1Mwr8n7h4qYmjHZ71RYQqCscCayu9yOTo5tGYf4xOzkAqRRfdgJptX3jOKWvYCSjxchsM+X+nCsSz4xkUyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+KLQ1gN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+KLQ1gN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E9C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744724393;
	bh=3zvAEsWqMpFAiLUihuesUrh0sZ0V5glXoxouy8ztXaI=;
	h=To:Subject:From:Date:From;
	b=j+KLQ1gNCbdx/AfY/VDo2OhaGiSGylSLMdQfIuqfKzaoBmccoZ7cc0hB5ekXpYt+d
	 40lH4KqCtwNqj0VQeoSldHbnanfaETzYyylll1dnyCVhqknC3c1wVuCe5BRan9FpUl
	 uw/5mBJUGcZtM6AC5bkwrYLty7a7zohl/qJiNfH9ltYG45om+k71NYwsseCGU/Q8S2
	 CeFKGC6+ozWzHaioBmmSwwHNgjukrP9/p4eSedgn2/Uyb0rRPoBOoQoyyBFirkhX+I
	 OmXEbFeLv9qax90SAq30iEWwUitERI9zBcb3P20Q1RqJytGl6BJeXKmueaUW+Le51G
	 Ga97tUCaTXe2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE9C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472439359.15314.15531946841147116592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28eb39fd9b842d143554e40c148693c9068c8b27be76cb52194ca5ad84b683b
Date: Tue, 15 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744724393
