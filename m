Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3083D111AD
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754185794; cv=none; b=LKQDAmUmB/uWQSVznqCBZxm7+f2rPK1YENFcmM4n15QrhLmwVNIWxjAV40j9pFhDVCoI0KESPumR2lwNu/o26bKlDLWKUjbUhMCAHquOmk/r5Oyt7U5xqPL2oAR7GCnRpgNS4LzxkfvNeNj1n/ICgxq2WhIKwQOGkvYqhpuP0P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754185794; c=relaxed/simple;
	bh=wZXPFlxDFvdKZd1IYH6qT2xymYOvazJrsdjQkvevqdc=;
	h=To:Subject:From:Message-Id:Date; b=ffTrTD2hS9AmeB+Cmq7tpZsiRJQDZJdO5kwUHt8vuFTFChLTmMq4/7zI5UiSYvUKVZRwKot8T4380rUIEneurJ6yy4u15IWxnRcYh0lEh4+X7UQOabqtoYC7ESwY8zE5awhKnx1RzM0eP/V1X+H7zalHWnzXn+gcZf4WjIOB3qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPd9zorj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPd9zorj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EBFC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754185793;
	bh=wZXPFlxDFvdKZd1IYH6qT2xymYOvazJrsdjQkvevqdc=;
	h=To:Subject:From:Date:From;
	b=QPd9zorjBB+GvojibHpTQIw0jp/UjOQIl93f2R1qNBDGgDh12mLTIc9dg6uyqUbF3
	 KTl/qBszq8JyMoRe0M+6FLwVMejAZzCBaWpk6FpDI8m1ZXBcWRdl8kF0Bm589N0Xbe
	 CdYkQ7NT3qQhlW0+g9We1FxliltHtk9wIh2qPFjUkqY3yalncwv20YB0qK7pS5ygwL
	 AxozEHALNP5Yq4ONMh1bpoATuT8AVe47plQEX16vf1rpLSzhFKyy4fwS9260AXF7DU
	 v/CxZz5FS8ipYYh7vOptBA0Af2ny8sh+wzg4KMaFguB9wvmsXzySumKS1YZu4sGl6o
	 wcV6sukdkGOCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1AC87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418579357.22952.18216006636116033583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8987a5a50a13d1a5ea92d6895fa165a9b6f735e84465b48cf81f5e7572bc5a
Date: Sun, 03 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754185793
