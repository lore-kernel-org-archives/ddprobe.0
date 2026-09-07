Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A623BED4A
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788791434; cv=none; b=foAO0JUr0V8XH2CnqtUqWxB60CXiSFoCnZZzQGcAolrLHaxPVNOnLiJn7IS3hP2/fgd2fMAwQDz0UWA9X3ii+j+EkqMsnmg8gjKQhjAJLDjaHnLaZZOvHk6z1/QwTt9AS67Rh7m42sOWFU5kRlVYgSl8L1vjW6hgEGCcSDPiq8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788791434; c=relaxed/simple;
	bh=TTvsa+1y7XwgAgVYZFwTc6hi1oPxGWIUwm2LM0BvTIg=;
	h=To:Subject:From:Message-Id:Date; b=BQFwh1g3mwQMMEmwnHoZdpR7D2NcSSF3wrbMKNINo8WmC+loouiZJKMKAi5/U8FRhAx2WkQpiYxwIeVmgYG8GDR39nY3nVjF+Zhv4hJk1ZyGlPrKTcdqlwqKAFUZkz+wNhkQkdhquFxRwAb1FfO69sprdMS2HOZ7pT+LSlS128E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ausG+A4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ausG+A4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D52C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788791433;
	bh=TTvsa+1y7XwgAgVYZFwTc6hi1oPxGWIUwm2LM0BvTIg=;
	h=To:Subject:From:Date:From;
	b=ausG+A4QemrIeLHsntNoRLU5FiSH15gbZwvb1Oy70LNrzl1iP6A5yqXJlN8x1goPa
	 aznuUwgD7Or0s70a2H5zkePe9zOw0HqWWofuvAe4AudA/CJJxnm9M4kw7ZkrEMy9K8
	 Rfb/ufivvVAZBN60DJj6xqsdBi5C2OMBhPhZulMy9d5jc9MICEA1I4h5FhGJIKr9Tb
	 L+Spnr9VhtfKrbxC+kH/jVhxfCEsvnGtX7NQVco759f3tQBn9BirLPSiFaGtewCGBj
	 YEc2h8uJ4zBT7PdYvp+y/uF4fS/FQoQwwD0jmtK27Hd084hwWVeAEBZP0urHuFOF7w
	 Ircakb5dagSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09F1C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879143371.21626.1501268777452565177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc49b1b8b68e5124068ecdd597e0f72b1e6bd455db69ebcc2397ab9d3a3ee72e
Date: Mon, 07 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788791433
