Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5998D3C1F50
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746314; cv=none; b=rlsb5xBcU9rps6/NpoD6B0h/RP/45sVnFr1GQOEB/xiXr+DVWOqKOMCacnvBJLbHOd7h0z5VCIv5kQQBSG5FwS0C72HPKmHUZtfEdlQgR9U21IbdhZacKvUv+oYj8VhRZzDPHe2Jwrigr5nDxNggbNTm+c+VBbVAn0KcN5YSG3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746314; c=relaxed/simple;
	bh=dFn9RVOwxsx2pAVE4hoUuLIuYgOEC63bLEZDDAcO2cQ=;
	h=To:Subject:From:Message-Id:Date; b=r4HGCHMcDKjDo73tf73/ok7P/t6BeX6FjJ8y8tBU4xpc2TgkqIt74tQJN93Zj5Lps6iY6GpPFKCsWD9f/sV29JdDBwhoc9JjJ++QfkgncFoqwg6H6PaklOA8QQETCnN8LQ2qV9YZ7bYWbd23Vs0b9S11r/0WmPrGNGI/7T99xAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA13EELy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA13EELy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1152DC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782746314;
	bh=dFn9RVOwxsx2pAVE4hoUuLIuYgOEC63bLEZDDAcO2cQ=;
	h=To:Subject:From:Date:From;
	b=dA13EELynYeP96J9wuS3DsJKpDJsa0849Od3/9SnW5ksBl3DpvVxPwxqf1OqKPxZG
	 ZvAVuwLIy7vQPnb6uaxtGoVKTKWi8t8WWSuJ4nbuz9ilD7K3RCo7fQfw4yPYyO8I8+
	 wYGfwlS9s3IaS+Q62QDBTLVjAU0QtBTH3Yvpsi1W5aRey+JUrhm1ubvUweeqZy5X3h
	 vtsgMKJ1Kb5yC/ODClXGl1sWP+n5emZ6vSomAIGxxeHwneYil/KB+4aaTRsS2K9xRV
	 eKXrneJbl9lWjDKSvLqv/Duk5m9YdtL7UFVaPDeJakyUnpa0eHurePLmFJN52ZhSil
	 hw38WZmY7QISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF19FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274631379.22288.16575160641527446026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78e18f0827d56707789380496eb35ebb892ea7d45aca71fa9d571ea65f709d7
Date: Mon, 29 Jun 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782746313
