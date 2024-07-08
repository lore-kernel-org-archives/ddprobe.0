Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6524B78C99
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720451783; cv=none; b=p3dKU5dcjF7QCsDFt8onL9b4MkEi5kemHUdRFK28L3YUaF2dTOhgBu8Oi7ELFBUrAQuRwyRnrhOEtwO+pxdBriWI/kEZ3O6vExFvUDj3uVPXbBIEQitJfPHl+19Ei43IrUf6yZ/972bfJFKOLmuebrDO3jy73Uo9wnkRQnGGNC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720451783; c=relaxed/simple;
	bh=rK31tckffE9F4WoUdUUbEyvJj+fe+4hekC9bMgukSW4=;
	h=To:Subject:From:Message-Id:Date; b=IprDxgHpr2b1Va219+HYix+Emzb1dxGWJig+R9IAdUcgLyd7mN8dGC3AQpZITJkfuM124WOpam3aSvYjLHk3TVZp93DVfuGBEj9EKad74m8MK5UpRdeHn9W9f/GzYNuKJuyGW/XrvIQ3kxLCv9oQ4xoKVWWlpFVTti2b6zYltjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxdzNEte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxdzNEte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4ABC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720451782;
	bh=rK31tckffE9F4WoUdUUbEyvJj+fe+4hekC9bMgukSW4=;
	h=To:Subject:From:Date:From;
	b=BxdzNEte7dv1JMBjzHHWR5tQn62pAZM15pwMlLZMtp+170z/qnpyQ0tePUABZumnL
	 +uTgJ/xtsyusScvvEq3bxUR4CjbeEiXDvSGUUbGsSrcwbC0N/7cxB3Oj/BgoDG6CwN
	 og2cVGZ1WjkglaTv+0O9WE94kfaBQ1HsRrK7VwCxe1fF+HZcAKjHEdv2poHGG1DHJn
	 hP02Ck0ObOtzhWpHh8NIEuE7WVFBG4EFE/MMaTuDBOtzOg9jtw0YAC5K3M2IsWZnRf
	 wG/Vyp8WqhxC39MRk/J+iCAjvYvH1/7QeBBLLO0P2OxXmK1CaLzdWS1UfUDCfOWu0I
	 GppL8y/3vgZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E4CC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045178280.13633.146757590878847321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc52d985b6d47463481d1ac94d0070f46bc8256a16edd7db21501eaf54fa048
Date: Mon, 08 Jul 2024 15:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720451782
