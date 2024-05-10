Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBFD15ECDF
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715328143; cv=none; b=Si5gsLUvSp4rKtIm39xTqNwGERFjXfYUFcdiIcmmX0tP/agFII37eCYOoT7cUnIWkLQejkGE2IL9iUQURuRALnTzcUg164WUYncMsUAdEoWmkZqLbTDYhPOma6Isa6+D830/qw6w5FWauTRHCaXYuoYxE4IP107KN2RMDztl8CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715328143; c=relaxed/simple;
	bh=3QodRjslGYg9nlBnET2opbTbYarp7t0Qdrg1NAQ8jmc=;
	h=To:Subject:From:Message-Id:Date; b=GwyUqftu9jQ5KUBkUkjR/2Mn+C+VkIvJo0NvgH7YhAENtQKISc5b6rO/bssyf6nWDg9Z3LwICCYuy2zuiY9ltxrQwZ6PmE4jSNWMFcz1WWUxk3pXctHvE2PeGkF6A9bSNg68Bp3GAS2XMB07ZouYqm4MtVgEZTFgtmfalsMP340=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3071Jaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3071Jaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF1FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715328142;
	bh=3QodRjslGYg9nlBnET2opbTbYarp7t0Qdrg1NAQ8jmc=;
	h=To:Subject:From:Date:From;
	b=p3071JaqdaiBnwAdHJ45JBtwW+iw+QCxBlw7/hSD7MHnpQfBqGDdetDOd6xFWULz/
	 lmdPGQnk+W0V9vsWyDSEoHZop780DgjFsHrj22GxR5ZCsvWjx8aD4RoeklsMdNXb4j
	 PAqsk2A5aRD9P58AQc8M8ocThYklQyV/6ccgvwvVJTfJkSif0x7mB9I7821pF5D5pd
	 P7UwHXbp2lmAQelIjcos4NrRiVAahaHAaIznuKrcn65ay/qnPWnDgomgZyTgw1NA7O
	 EoOI2VGP68Zs6fN6k6Xio4Kj5QX5kwTu3odMM9FLrGDJQqUHtK+s98T/17+zH41LjY
	 RLdyTOxX4OP5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9920C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532814278.5393.16275303929731134778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31565254e668cb5ddefc6011979ad3ac5c255bebef9bbed05c8469466d83dbb6
Date: Fri, 10 May 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715328142
