Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42441315D46
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781220394; cv=none; b=FzkNJJtrB6CpI+cnY0WK2JH/gwPGeInY6//G7f4qz4pTDtRrYj++0FkGWiHmZH4qcDs1+Ka96ByN/5FYn7ICRDVMX0kn7xjwk9lhQlub08yW77UkAI7N02Chqt6Wq40mxHb0MpzjhWo0CQyHN+ZgyGy6wmPjowrcS1WKYXSduuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781220394; c=relaxed/simple;
	bh=fqIcWxLf33AzXqY1ajNOKreKAVPdk0Wt8ARB4dLZ3Wg=;
	h=To:Subject:From:Message-Id:Date; b=l0qPkOBBhgxq0TbnwcgtiMqZO1J8i/V+5yyk4z+HtCN7jTcSTski2vFAsB5M6ROjPKEMNXg0p0NaNSych4ut5oJeHUsjCUtHO/zg7pzAXI5kF2LRZQqLWXYOvhZQvzOAEGL2D2IZ0ve5xuyouqLj2B6IsSOXeE9T1YiQUFKR5z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kko+7aap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kko+7aap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF405C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781220393;
	bh=fqIcWxLf33AzXqY1ajNOKreKAVPdk0Wt8ARB4dLZ3Wg=;
	h=To:Subject:From:Date:From;
	b=kko+7aap5k8rhX2MMGKiqADp1DbvK+0BfEcb+HJ+7GRYFE97yjRrLemV2Rx4sb9Hb
	 RGlEPVdm4twkq0Vc+tQ2RZWoC2AKKMkGOlM29eeTPdbPWrdVsJRsoldzbETCymhVuT
	 j2U11nEFzJCQ1bb40SWu0wbP7FinJ28bmVARHLvYnO3W5lkaDOJ4gDLyxNl+HnZvQl
	 x26VcTFGXRzVHgHMDIA/O0mucrRqJHdJrvMZYCu8giiTnwc/SRY5w1RaiW75j+AlRn
	 pU7v3xviExdaLm+ESgEqSW/XKOcb65MdAL7r8iGlc07XPKkZnDQXk3qxoLWOq10Tu9
	 okRFdUtSLSCBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6BCCD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122039369.10867.2873573651065135740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363d8cebb648487d76393f119f3fdbb1bc07a976c301825248266d1a61866059
Date: Thu, 11 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781220393
