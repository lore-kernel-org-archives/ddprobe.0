Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AF0264F9C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751991594; cv=none; b=cx1uBWOo2cg7KL3fUqm/jYG694ykGQwuM2ieMGSe6RA0bTA9+/+439kH+H91XhR2qtdQUSGy68WT0nv0lJq9wjIasqPj0wzUiSieoicjIOn0QRDZVXe1uLIL+o8lmI9+mTS7LufFFhIMZw6hm8LpGXAPiwy9XHB5GHYFZb6EiT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751991594; c=relaxed/simple;
	bh=pFWhzCZAgiKt+jqNkSn94aFQRfFdM7fQKX0/6wvezC8=;
	h=To:Subject:From:Message-Id:Date; b=bglhRZXEzDEsLfvQA4bH3anGKpaJRHJCoehjrWZxifL4cItYsS5zJEy2hWm1Ghaweq87d4ABMY0foQ6HhKChQUjGN98CRJXNKQiXWHnDqH1fU26T6K8PevkLQWCLhevS/SUmHa4UrGqwvYAcm5q6/Tt4l0OSqITgLsWQoZOBeSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0IrkgST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0IrkgST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4859C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751991593;
	bh=pFWhzCZAgiKt+jqNkSn94aFQRfFdM7fQKX0/6wvezC8=;
	h=To:Subject:From:Date:From;
	b=V0IrkgST9PKRBUJvxcAr1ZBhL+qDG6Qu7SAqk1WTFLrBTIW+QjlyCmZ6TcdhVK7Mi
	 21b38lyYWMt2Ht8wezPOMWX+7IdqDU/Bou5286IzX3tjYbk9TspMki0ut7vXGdTuc4
	 XCxlCDldfIxE4Thxd8fvwxL4e4hkjrubw0dawq4gnEfJb6CthnK3Bb+5S6ZzL0GoR+
	 TnCdiJCFnMPOXn1x/hgDrEu4lns9eaL3vsaZZDZ9ntvmULmybrio1GTXCzHXWrWF6M
	 wLx/VL15Vvsl90xzwl1Jf2lNxL54OH02N3Zdr9YhxYrNYjaR9YQTctD3LqIbIbUGbq
	 hWK19NJ8H2n2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90583C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199159358.11280.2982443841431066656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d248cc20d2292f45ea264b637508f72f317d91d2a75f1e721aa176a54e29620b
Date: Tue, 08 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751991593
