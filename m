Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0CC3D984
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744537195; cv=none; b=qvO2eSp0Wl1gPQKY+QSOIe3xiNMMHGH6uQamrrwKxKPA4Jgo+ipAdAK3N90wVTGA4b80Mh5Lk5ynnqdamd0tYkGEDrpMFJ2Ku+LeF2E9Vlnb89/VYBud8WxevOVaedz2jPs1d0/5alzc7h7AwKdIMYSxlVrDhZsvdUjhcECWkOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744537195; c=relaxed/simple;
	bh=wSRvmNFC5yfBotev761Be5VBjgNaIimB+SIDavnTris=;
	h=To:Subject:From:Message-Id:Date; b=EJKPG7c9ZXb6/h9a1qhoROeGWUi638f1yJ4BIsW3y1446RGjPb05D5TTTRugGp/HRDybhEChTc1oqKaQO5msEFzY6n1sMovaMri+6wrVOHXLp1hl3P2egLM3PtFbLLqcECo5GY+BfX9yZ9aezd19snywB/okfM+WsKObU0QL/Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmYxVrFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmYxVrFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75C4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744537193;
	bh=wSRvmNFC5yfBotev761Be5VBjgNaIimB+SIDavnTris=;
	h=To:Subject:From:Date:From;
	b=LmYxVrFDs9aOG5MhlSj+dCcfDFJyxss18+0Nhbi3WAEsGKZv0zB5AOyOBwGJNMs5n
	 mEBbVnJkbqtTlzzHh6TxLeXg4vbOVQAviRyS3ug0O3nT5iKUNxGJxGAqfgzaeIQvW1
	 smwrp1USLKDbbdswiOdsW34MUD7mZR8Ft9fj+lJotf9ABLYq73t/vUuiUsgdv+1cQZ
	 NeO8PySmZo0oRFcoIt3GAplAta7NvXBTVQikJ2AIS8Cu1qhtI8MdQ6BTI3UdMqCNN1
	 XM5Daotdka1QGUpFk8udmnZlRlrUGMhBqEg5Ao3ilFnC3z1yGPHpG3TCfXXe70ZAdn
	 yzd3nOOO2nC3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB7C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453719359.32273.8941643135885623810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ea0a1443f80be4f5b94212851a8ffb7987421c4b13dbc0f0a9241bcd73f3c7
Date: Sun, 13 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744537193
