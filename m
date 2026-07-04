Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D651A267
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783147714; cv=none; b=kstEChB/QrltHgC0xzIqvz+wwPHAM5/66/+VqgAU+Mi18q+R5BF6iKpcVJjHkFe3bc+PSIgIimAWl0ZIHcVL46Y4aGDuZpWfe/cJYZn0d/GskBoTKp8ww8aNSukib1iODvBrUIBfb61/tKQ0zI+sG/f55WX2VWlOm1K9qTwonEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783147714; c=relaxed/simple;
	bh=mjeZuJRpcglhA+Pj0JF2mb1ONZI7EdjZnMJYsyZEkWU=;
	h=To:Subject:From:Message-Id:Date; b=YE6NjscRLyGZiaTpIO5TLBVUFdsDyaXqF1ke+oecEBz9X9uPEmr2aXYZHcAtxgSybZFcsEOrBCwqGzNtW3p/fzkcR7ikfgLOGhFux/SbijM+ETAJsc91glqTdGv2+EolwoWZjPihYyN0cRayhyR3Hm0VoIXsQ39Kyf8idTtxuSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcF2R2VO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcF2R2VO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDD8C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783147713;
	bh=mjeZuJRpcglhA+Pj0JF2mb1ONZI7EdjZnMJYsyZEkWU=;
	h=To:Subject:From:Date:From;
	b=HcF2R2VOOzf0jsDBQiF4b6GaMV5BOB2w0L9PaLiS37I0757fcxMItLVYPLoLgXbGj
	 AsXkhnrTa1Nz4UNiVDKwwNomF21x8RqPR4y1JC9GnRm+NhNWSaAPndDVk1YFPubQYl
	 tSTSExcU1nOTEvsx0z/rKe1SYOToQJKTKK+V0z0eqe0GJd+7ZbRq8SJU4U5fDwuqTs
	 v3i9VolyIzLORpW2d0tgKIBRvnMQV/tdI444oYcfq6oKL8zvl1dSDkrZk7Cvj7mukW
	 OQ8agocDl+PDN/XZNjWNkxwmXhr2d5J5Kbp5EC6THTqolKQAgshdQ9SkEGFHI9qjdp
	 DtvuMbKRPdlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB339C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314771368.26465.2792420294039753530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37c089206b0526d15e3db58311db656ecef46c049aa547dd3614bb76bc78123
Date: Sat, 04 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783147713
