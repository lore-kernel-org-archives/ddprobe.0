Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD227E06C
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761550794; cv=none; b=blSZcfKnGWLAKbGSs8YUrQeLBMXp0HK9BqksBCldtuaxVp7yIGZuLUY6iHYdr5Jz49EX/IKGQgfFKbD+hYs4W/2dUMv6n3KPssP4mYUup3nVo/z0G6W+3Bh3eUvB0Wz9ZaaSI4l+mvK1wcFR/mqci/SFY/spBLpAD1ugzbhofe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761550794; c=relaxed/simple;
	bh=3oRzfzeuLLJs+lHseea5M72lDNAdIY04uBYdK8atPao=;
	h=To:Subject:From:Message-Id:Date; b=N8L9jg5p3oTL/6BgFfrqkF7QHAS27ro+R0mLVgMEo6DP+SZ2HCEgknO6JPGQl9WTRmuskgXXHMqgbZjIRtAr56RGuz4KnHBzfLoauJB0dfutlI25SB9rofserbn3unQ+DVFcq82zzcgVkbTEpCstITP8kQXyx8l1Zewg35EWUHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwmPNdQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwmPNdQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09CCC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761550793;
	bh=3oRzfzeuLLJs+lHseea5M72lDNAdIY04uBYdK8atPao=;
	h=To:Subject:From:Date:From;
	b=EwmPNdQ2tfs8qFg9sbieGsnUIawSUvgzCjjj7E55p/Z0+vg0grGSfbpTWnyd7od4O
	 yD0YLk2AbkrGT6KVbe1c1HFH+78LUN+h0TY9xSu9rYZHi3m18RW+1/9zb8cmeXNb3r
	 di1yLslC3TCOqPpbOqqsxR0HRwzw1gHD6DGmZzH6+8Cl3F0WKn/nKfIGaYI3U5KmoA
	 lVXIfkiv/Fltytu6WhVF6y5S0RPepVuQO/jUn0y94YNmvZlah7kay9dFHkjcph4d+C
	 AcVDM2BVJpyJtJhTMtuOBq9r6MSWzCRogYcMEuo4q5vJIOr4o7bqeC+T6dxoYRlf8n
	 r9NMZf6jnsJkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC0CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155079357.15381.16386102823041946745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47963be45bd33a6c2f4b337d0ec51004518887bef083cbb7678839854fee8bd
Date: Mon, 27 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761550793
