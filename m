Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C9516DEB1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752888594; cv=none; b=APcbKJil198+/sbKpj3iO4OoZo05LhJGNgZ7xRCai7EX4b8KhjroA0MU7rgDrxvXOr23ISXFHsNCPsN3LrvSz6R2BjvOYOLKKkENa1QScnhEoF+CHhlZhg9MI16T9L3pi7Sw312AUxNZCXKwWe49CA7AhjF9rOBxS5MxVewvMLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752888594; c=relaxed/simple;
	bh=YyYmBJPcU7VLAAVaH4fbfM44+tHGK9/eLyu+0ZuCcjI=;
	h=To:Subject:From:Message-Id:Date; b=HdqSUVCnGEgwqCKiOeycAoOnwMA34+Nnq7VbXeSLt/ze18yctCJa+YC6T/oZ83gLApIHYjkGo/BprKQS1nlUhuy6hraBP0owdjZZaQXHJ+Q4qr1YLRVfb6ocNvMf5UTuJrWYAWhgcgL89n/6M3fCPYWARCJLJRbrcL1A2wHAxr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/XaQmQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/XaQmQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3943C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752888593;
	bh=YyYmBJPcU7VLAAVaH4fbfM44+tHGK9/eLyu+0ZuCcjI=;
	h=To:Subject:From:Date:From;
	b=b/XaQmQxGweHo1jumZgtX8pEQQP/25WPRZ0CMt5T0MYHU084UqNWbniwRenq5GhZv
	 47yqXXTdNQXLF+05jRlUrAZsKTjJODGaFNIoxqTVtOpPQPUVvta2Dh2pyIpmTbLvb2
	 bhUj59IaDxXHl3j7ypF2A+vFE8jhVixS6RRd+Fh9rs545TiPoleqieJkTXBAQm0jtU
	 Zx/c7S8NW0HGfhRoKj9l8pEcfAuNbCNhQjI3Ta/BZWlEleaZVTBhzxnlhhCJdyQ1gA
	 16l8dryxGEQXddZBbbLXLLXCojhut1p5NU/r08QbFFP7hLbcGFgiQaz3CyKNnvJ6yq
	 aOukFbShqZUYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95002C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288859357.7441.1368540945185011222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed35ba22bd3bca2d17410acfcdb6e1453b7330787d5000aeb3e82ba427e6064a
Date: Sat, 19 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752888593
