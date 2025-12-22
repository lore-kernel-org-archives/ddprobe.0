Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0C21A304A
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766432034; cv=none; b=hKLWKn+BkrRI8/yBV5ZNytmkS7FaYnYxttCmEgNjr5m8FcoLo/ACwCbkXP/28D6sbKB7qwmSrJPwENcrAcupAatox3U9DJPa38YfSrPBHtb+iicRBtE/+rJLviQOno/7FUNKXivpdeDfN6VM0Jjy0rfqB383YIZ5hZQ6oQaCrrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766432034; c=relaxed/simple;
	bh=6z8l731xPIf3PiKv4n2KS+ZVm4OAbRys13+KK6uapVw=;
	h=To:Subject:From:Message-Id:Date; b=hnbZ60cNXcGWmjgVFOAYs5IB2zbWwYQCsFYLL+FzHiS6UWwEPo2qgPYP8ZkzvPVcNWZVDF3kzPoja2Jd8Rc1M/17zgJxJiAupRkLRXg33QemIPGxlTSDLyD7yBbFKkliwgbagLS6gm0SD/wUPu6QXqL8kghx7A8IeaUMCMo2oAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvHOeoP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvHOeoP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4A2C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766432033;
	bh=6z8l731xPIf3PiKv4n2KS+ZVm4OAbRys13+KK6uapVw=;
	h=To:Subject:From:Date:From;
	b=PvHOeoP0PRsbHzoNsy/noBW1PVq3p4WLm1a68wC9VaDPAIGiD3pRuflVinwpX14N5
	 8y+WoPabpmooVHtV3bdnYyO8BqEJbZaGMhN5MPk/4QR9u0as3jeaFUeLNEJzGw40Wr
	 wzpDerj+UhmJonbddOlj2t2QdQT3grC837lhLFxBnUaimFWW4NQh5X4sR/EdPTNNRH
	 LxLahm9ErtHTqFhslOA5pLOx4NMCwwSdFarMY05gulhEuYRhnTih5Ysny5YK6w3PTu
	 SHSfKi9Aua0pgCePpLW9XW4f3LeZrQ6lcOq/SIA+eFbRFqp5zUmWr2ptJ2951R8jVz
	 oJIQfhfjbTygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C71E674B9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643203358.13994.13383545538083753213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edcd33339196e1b5ec8823a42efc4eee9675d468fe7d6e8aa57e9da7f410404
Date: Mon, 22 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766432033
