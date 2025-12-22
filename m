Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D35317B43F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766405034; cv=none; b=Gs938gIu2rdgSp1DDPdniYqpE7ohQWy7Qav3h/cwtLiztSzIdfOsKaO7KmIWqHM9Q7afEBMLMFHcX3QLgO9OMQtGm3a574i43G6aJbE4ogEdztAkPfOpIEPhlCaKH6v480rHg5nPqhA2tkvFMSp0Po8nyPWUcARwquY6FM9AO78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766405034; c=relaxed/simple;
	bh=fg0DE8ZO33eW890K0UP+qdVV8fiyJzP3yTA3Nw7DRFw=;
	h=To:Subject:From:Message-Id:Date; b=uG2Gy2p2N9x0kQ8NvvryT4sRAfPVLnl/0spL8NPU07jPXaaafrU38cFGqg2/0lCMG+wLtz3GyWefl8fGuLgmy1ETbrsOvap3YPJL4LUZrOrQ0iCoekwEbwV5MsIkwQmyAlLSgqof2tYbkfMPrX2RB7kwOc7cbKYLqRmGIdnXLKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgPUsme3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgPUsme3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F676C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766405033;
	bh=fg0DE8ZO33eW890K0UP+qdVV8fiyJzP3yTA3Nw7DRFw=;
	h=To:Subject:From:Date:From;
	b=RgPUsme3/2vC7hY3qZs38Iuh2ibXOaLy1xbxyqIXJdaNuLn8/gyuf7xMy9vpIS1GK
	 lrCHsNpG5aRqnlQD7NceeYSgITbqK+x9IDu5vGWOY4xK+Pwgz3hO5CleR0WXlJKwlV
	 jHLrxv9HNVqB1ZJ9l9JfvBHZ04dN19Mo8FtdYDnYfr3q11XK9i2+sFHwzFpqALH0Mx
	 6RLLL5rlRY9w248NHvfa4k/F7gFx28mXAl8WJh3a7f+BoZKJKB6E4YntzCEGTCqCYc
	 fK7eYZyPOkeyulIZUmCK+qt1HD1uDlykNhBqO7SR5bfThUSuXcIJRq9fi7FyjUdT1w
	 VQsp5E73fRIrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CCE6749C
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640503357.308.1174470633815740594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45640b9fb59fd42d0b9cf2bbf4dd46fd350a9c445e6884d22821766170559a66
Date: Mon, 22 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766405033
