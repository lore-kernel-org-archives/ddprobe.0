Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D256136
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750531795; cv=none; b=StGs5c75pM+5q77SeA5FeEl8BbLarm7cN/zcCJn9CZnZhwCa/7pKzglt0dncId0FWbhKpxwSILuNHdbkZMuIOvg+hEIlFKRoLLbm4xf0T2oQcRpfnnkIfHn1arqmPIRzXt+74aRqLsXzFjSxWgFr0FyeuoM4AW4OHmSqLYFcCcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750531795; c=relaxed/simple;
	bh=sTDqM5bu5vxw77DhtgI3288it5+Gv8JQzJzyDrMkNxU=;
	h=To:Subject:From:Message-Id:Date; b=nYdfq1MulUa6Humq0bSQJUxTtIF3vdNPawl87JoPSYrkUQUaSBPnFrrlaKRVX4FIv7KRdxSRsGBKJ/ufHKa6xz8zTw+KqRMIVo7o0400RgwQiBT+FEecFATjHcN3YcWUwaI/ml6Sgt57J6J/nNZ24s9+jwIUX71xamoJbU73etQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ea6QZu4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ea6QZu4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAABC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750531793;
	bh=sTDqM5bu5vxw77DhtgI3288it5+Gv8JQzJzyDrMkNxU=;
	h=To:Subject:From:Date:From;
	b=ea6QZu4V8lFOvM1gcW5le66Ya4PsNQ1uhaovP/c/BWYPR8+F3ZMUu99bQ5N5Y+iQf
	 VX2EjxAbIoXe//WD8bVKsx++YJ3nCCFYPP1C7xFUkuJfPnEKRb6QT9qclK4PiEb85P
	 3Abv2r4jzARU0BIrxLcnmJViP5iG79ISFkhi/zF7eL9qGMfvopU8s2/Y+k6LWPaWyP
	 iGQFy8T4/hRnprvtVyE5AYhNDUn3amPDUaRkDVchrvhUgQs5RMBFokAFfWKov//2Sm
	 h45xSHiJrY+unsN1/OwMZLpnLNTjTyZzXVv+HP3wZlZLepkY285csWd5pyPvV6ApcJ
	 7zKrCIgOfpB2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E719C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053179357.14120.511445920917639129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd55d209398b729565df4bedbe68a970a00cdbe752c123dc00923cbfd6a1648f
Date: Sat, 21 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750531793
