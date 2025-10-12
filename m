Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234CD7261D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760252994; cv=none; b=Cy6qT8/mZ1H+seJOzv/1u1HvpWS7R/N+1H4Uj+7JBi7yuZo4FUsCciimi+6Y0vau8uxMGqnb8p+hAbFA44AEIypu12OQqBCsXWWEwkj6YimHZUbgWdqiJlOI3s2WuOb//18yWuuPAlr6nDpYutr8MZsdqZQ9MkptgWkoXooJLcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760252994; c=relaxed/simple;
	bh=fS2lH4lwKYIDJXIgslkm+K6MomGeehiPjUSl6Nq6TzI=;
	h=To:Subject:From:Message-Id:Date; b=LrQ9MgjQw6YdwaJRO3AzPM2wA18Pn1hSLNSEZQvoRvECrExJJPzFgyVdfYLm3WxkTtWJcQqL0jmtPcWIxRh8ZrAFHIgFLrjbjCsP95GvvDdO1ETUSJyXgQ2Yx3XXD1Y7n0GNN0KDXuTAHzbew7ndulT74OINH2RtkB5ARr8z+qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOc/Sjih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOc/Sjih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D23C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760252993;
	bh=fS2lH4lwKYIDJXIgslkm+K6MomGeehiPjUSl6Nq6TzI=;
	h=To:Subject:From:Date:From;
	b=mOc/Sjih3i5tBhuLTcMrWux9HCBmHcG++mxfbZjuOIzAWeGMFhcGvypRA3Giovpwc
	 Pne4UZV/2/WBP+AJQBP9Fd/RShY3f49Ep67Kf6y2iyCZPB4qMtdUEMCGWnrc6dLbV5
	 p0DK/En9HIatolrBa5Lv0gsneJ4zcX6dVKljBZV4Rv64VNGfJOYwmVrE0j8x0ioQKY
	 ocfsHaDvdqQ1w/EScSLjdBKsSsTZ0KSWP5iiqHzYTESHlG+Jvqw/9GO1QH68DM+2bQ
	 pFa77wW0WTeLPvWSUQa9Uu/iN6q1zmdxTRmhZAYzhqRjyppnZWvwD0/QjxJEi4c/Je
	 HaJ/+57m5nuAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4FCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025299358.23742.10415232267704757510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2af01bdc52feeed58ad5ba7153cbba5cc696775d3e941e1036b01345d1b2b1d
Date: Sun, 12 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760252993
