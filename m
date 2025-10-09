Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2078F1FC8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759970994; cv=none; b=dQN5kkuAgmsZwqmmawF+xKokL4KVj2ZJYaYYW3hxSpJxBO8g2U19iM7sgXyklYdyJtV867wK77+t6M3LlwklwDmFmGB7gk2OSAK/a8NGGolodU7k/4E9no4cmW7rywboo9QBXKku4Ss8Mp6yi/sULXvKPvT9hrOqA54JB8oS2DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759970994; c=relaxed/simple;
	bh=knTHuSisLR3YDo0NpCaHj5KglnLC+DDlMP6XZMYetbU=;
	h=To:Subject:From:Message-Id:Date; b=GLaR7IPn/8m7N7NrU4wYoJGqcxXWi5jNkBPiGO8rAzJD0zeFRXK47RRDsiBF63DeY3nmOT+hFN+51pa14qwcTfCHgQN/MHNYhcHrk6yQMtS8bdACRMc+osU+vf3iUy4MfxcksmAbz/csx4cjkrXlQMtrxh+PMsQcNvLw/g3Rdzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhsN3Iuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhsN3Iuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759970993;
	bh=knTHuSisLR3YDo0NpCaHj5KglnLC+DDlMP6XZMYetbU=;
	h=To:Subject:From:Date:From;
	b=UhsN3IuvyIpZOloRJCfaG9bkOx9F0sz2OTmbvnLsDb0eX/AeTrJOOtuIB6ZpsGi5w
	 SNc4KFKSzVaatYr0TVcO7je2g7r73sB8SWrWi1Rx2AdJqgv73A7rMfi6qjIE0Sane6
	 CH533fcvGmC9Dj5MGVkOgWuA5tDmJe+xAJYzoj5MnfuoaNTIW4SFLMDt0TLsVHCJjW
	 wqHry0IpYoMAAIdPB+f84H3Qb2kvK3D3swLlruT6+GhmASiK6rIKmC5zTSG8sz7zCq
	 k9JaRG/tyF3tEPxAeLbY8N7SRxwIEwxk+6IeA3Ax3yfKO0j8K0z1SJXYNVdH9DoqUf
	 ikMFoEW/lzQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B7CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997099358.29670.13732531866630883115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1a50a080df01d5190919a07ed3a49f07de2b3d7e8d8a188a50eabdc8d7b646
Date: Thu, 09 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759970993
