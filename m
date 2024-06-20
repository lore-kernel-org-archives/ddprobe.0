Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FE51AE086
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718896223; cv=none; b=anB1VN9EVWFmxOynElqwWnKrZ4lw+HMTMPVYGr/KpyiPwAPtFLor3INKTOSQBV0P9FbgxbxDmDsA4xij5aF1HaaeRQaTx2Y2A81rUJwWpxBMyUa7vXOWEeS37uYWuxuwkimsdyxx8MbehhKN6bGMHGCZR1WmCZY5CaNjiq8K0Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718896223; c=relaxed/simple;
	bh=gt/PBe5Py8FHHB5Bzsr1mNNUT/UlW891GbHzHSjZt+c=;
	h=To:Subject:From:Message-Id:Date; b=qgEb5wGzTzfIN4lNqrloYuUuBBLA9a46Ob898q242lNoDCA68gP9a4LPVPrOjRI6PA6piXhptlYu70Qc1qzJVRY0FeXOeIpFqRuKCfLrMAc3CodHIC1MH2+sNgdURK2sBRAbpI5I+ORK+V1OWnRVFbRUwBKIn0qmPpSSN0AXQ4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INTsWkNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INTsWkNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB73C32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718896223;
	bh=gt/PBe5Py8FHHB5Bzsr1mNNUT/UlW891GbHzHSjZt+c=;
	h=To:Subject:From:Date:From;
	b=INTsWkNwemQ78eYTzNjYFFN5osFT86buGKZzVLrsV5IN5/6u+J/F2CxJarLXJSUJg
	 aJy+Ja67tVzBogNNRE0GavvDeXpz+pgOBjxkVmMeQt5YJo3C5gaAv+N0Qi2s1NvAU+
	 ZPFGLpl3qEflLyCvAMkLTRFl0Ije1ETjpjlXVKK3ErC4jd1FgpIl/jaqhZKU4GGyTO
	 JHRtTY0lKqM66EIRwuqU4lSqoH0nG0X0+lS8km7t91OFuVyWBENjxfHF5HijefQ6/+
	 liar7BoZ9dGvdocWcIpm3JKej+9O5qtr83bcGV5VbzMgPAUTqHgTwrLkhiMkrp6k6d
	 A+qpF54aRoQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7936C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889622280.5424.7323195538994018984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd2021c224d8d499d7be82915d408f9496a61b6111c7c50df5d23706bfbb796
Date: Thu, 20 Jun 2024 15:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718896222
