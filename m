Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB0F2ED17C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755773995; cv=none; b=rLrGE4VsrKmmpAEe3zPLbR1YSQNDjGASZ2G8QGEht5eVxHJgU6xP3z4xudUkXKBZ7g60g6d1y1R4Q7M4tusHOvK8yd2O0YzuW/c3Jpfj7sEeehRAG3tBGIz1sk6b6aZ6ep4RtEAFgw1bpdKiEXmqqYaOY2dzSQwOF6Rm7kb6f2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755773995; c=relaxed/simple;
	bh=5jVbyjlJpp2cbio5M16mdV1XfvAXajayOYhE5FYOjAc=;
	h=To:Subject:From:Message-Id:Date; b=ZRuNsJDbZUhaU0u2nmCNztwIdJ3/DbLfkp+Ynk2HiOui3kDfOomIVA40b84YJLQDX27+lmfznQ44vZjn/vGYmsZxQt30QQrhcGgatbgFBi3PucjOXKyINYOoJnc9eQoouvoNFWGr69E194qux2zJcaztOflLph27zuAhYIUHp3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDLr5Rjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDLr5Rjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C04C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755773993;
	bh=5jVbyjlJpp2cbio5M16mdV1XfvAXajayOYhE5FYOjAc=;
	h=To:Subject:From:Date:From;
	b=TDLr5Rjjfvc/jyDx4y03P2VL0sf7nJ2luYxlC3SlpXSdkQ1XrjOiGhSyIu8YCyVWr
	 UUVmA3KZ/odEKhePQDA6Wn4wsrVvNi632uFuyT/hcvM+Z7B6chYMNG7SgETyHq6Swt
	 p3957W4LnbhoMDIwmsSigqAdP3XyEPW72g1VHh3e3JCBkZA4Z/vUmuVUog5j0ZuK+K
	 ijwhvLVLVNGLPMYydi5SPpyYZf2CP2PEam6ywfBvwVYhGtfMJVE7SNgau4yv4fqiBt
	 4SurnqbP0ns0yymEN1vmOid9D7kC6gNGkdTZugTRUPmwmW1cDxfnqGxu8Va8H75AYU
	 CuZ4c5L5sQVuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B9CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577399358.26089.9879092086030911472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af0980e9de547018d96d2585f53d81fc5a226940f63ccf9f99aa25f5a0dd363
Date: Thu, 21 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755773993
