Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191A53D75D4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776781054; cv=none; b=e1YjOGsnLuYu6tM379xdyh3PiMzuywZeH/VQhqKldJuBQn+SIOusQ7CwBwz6gttrKSBEpsgZawuGQIi7UnPdTUgMkgqrM6pdj87orCj/IsBbv6F1M/teplFE/x3bel3mT+DEXXaHxhxxGr0+dSTclVTbWSwKQqACVFtwa+SnYsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776781054; c=relaxed/simple;
	bh=xw2ZwAGWrk8c1C/ZJux9W8YFMUj8cqZe5fNiJtlflSs=;
	h=To:Subject:From:Message-Id:Date; b=NJf6jbJeQWuXoVIorK4IbQqUxfgtcg9JPdf6ye2xu+m48vrnKopX3GpiwQYv/gn5T4oSZnzcabp7cCsKKLTKi0eMp1WlBQuQEzaJX3LN1Qbgb59SV3JPjzRyLR6ZEvrQQxwHKhtWLRjMatkCcB3qrNzcmDypzb6l3wPlEDB252g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVArH58L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVArH58L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CBAC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776781053;
	bh=xw2ZwAGWrk8c1C/ZJux9W8YFMUj8cqZe5fNiJtlflSs=;
	h=To:Subject:From:Date:From;
	b=OVArH58LrABit1dQl/YZkfdGHfFjX74ZuDutUAqe3ZBgAof2WEWPEomcoAwfNQ6ia
	 x9/gsAXrS0HGn/5ZSib6etgXbaT20ce5EuiAG30Hsj0p9Xn8EMlv1L5AEmmrLNnx7G
	 U3voHUmxI2ftdq0tNaKKqTEaOw/JReJkUD5z9PmGSwz5wd9Vim8g1CD9asKbW7V3S8
	 hMXGU0JCuxjRV9+9eUrdPXvNx/tjCfSrOpg8I310MOR6h4P7qqYgkhHsq6sAkcYJyR
	 zOqK8ijdfhLJwOgVfl6x7RQHAza929xW+vsy8DfXX8ary+/6NFlzmctOXJJc2Exa/K
	 Fty2n9XKcdZDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D09F8FA80
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678105368.22754.8704409416072339800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13cc742fa07fc5f3edf409d9ba5feeae90a237bbd7b3ec93f343a9266c067df
Date: Tue, 21 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776781053
