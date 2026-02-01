Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8291C5F13
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769909034; cv=none; b=toBYoaBkToyMNDUcxdFZUsgJR0BUdgRvmLn6tv62cVSnzWeJ7AJ92apWkhDIDRNpMrx2zndKT+zNnVWdOcRBJfHKBBe+IDuzgG6Du8it8hvPEIjC+01zdoyHv/xmaUtzDKs2n4xBO00HV9z/7l21C1dZwBVGBdQ8i3dWwYFZo44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769909034; c=relaxed/simple;
	bh=sSlVKCdfBwM56AHiRX2VRKdKdhQj9or1zcvBtBmQNy0=;
	h=To:Subject:From:Message-Id:Date; b=IWTCm9dqS2Tz1bBIXWdhRzcg2faa6PADvJeIyhUTaG7CHtdXGV6VoJuhfZmQ/YkVATSU+9ypMY5d8zs0hwedb/PfWoWovE6D/G8LXjvG1zhuOnGSR9E5bVGX76bols7BmYJtNuPB/cbgNihwXDpbaJiFlB/LCwnh42VpDXnVZJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gB64PnP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gB64PnP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A6FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769909033;
	bh=sSlVKCdfBwM56AHiRX2VRKdKdhQj9or1zcvBtBmQNy0=;
	h=To:Subject:From:Date:From;
	b=gB64PnP/8MoJu/CHs5+WPv+IQSuvKz50+X0w3DCa7NkbPDnxDCMkz9Rlx+mkGzM61
	 Yyn8l6wPfHLvTvJey3KezZgGqqB/ztDDbnn0kvbD98fGfysYKVxFRUtvA+KQJp7+Or
	 fCinvnB8tvXtrCYFzakWXoyWd1uJ7giF8skL5ORyI37Lwwl63V3EhSoJr14JHoCG87
	 1zEFP/npfHfeg/dqJEkV1RI3l8uIk2/PkYFGAhOBBuyVMekQSFILvxYf8SZluy6tgi
	 TL/UisF6fc+NjGyjDnO55M8nDa9PIRDvtkOyBCnsuxJfjLXQxqUVNpzbUQFjksoUpx
	 S6o+0rC85qP2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BFFE7C6FA
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990903357.18633.6114990325254680625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c565ce7998b928136e92ffddeb75a384729abc32ba063ce8eaa078f84d098500
Date: Sun, 01 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769909033
