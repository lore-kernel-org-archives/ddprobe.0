Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F3A1487E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713371963; cv=none; b=TAXciWotXgYudDl5fQxwyaS/+Ka0GeIZiKUOlDK4r9THTXOhTjtbvXXIz6CpDuiJ0zLFkhoKybHBhpRFm3ZM0ZxEQhBrYGyvg8KP/BxxrM81tH40m88k1pCtzomp+9befqI14kEIMI5v2oj+ntHZ8foVutlb2+gbomfseIw3H0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713371963; c=relaxed/simple;
	bh=1Azyh6DUbYmmqf3c8X/KsQE/ygpq7dS9dJW5C7Gjq8M=;
	h=To:Subject:From:Message-Id:Date; b=CbI4oxl7qR19/Azrc0GGqZJkogkWywmlshZVZgyRpVga3ayOIYfir9I6/rBoycoF5Mgt2ytJGYhOhJ3PoprBtoSjgoZdYP9JxRy1rNMVwFs9tTd8lpGYR/h3rkcuC9TyanAgHwI4feA+n0vVrfdaWK6ug1Tted/44ya9+VZOiFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmoEH489; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmoEH489"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB275C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713371962;
	bh=1Azyh6DUbYmmqf3c8X/KsQE/ygpq7dS9dJW5C7Gjq8M=;
	h=To:Subject:From:Date:From;
	b=mmoEH489F+iE++Wkj6bib3XPZgjY9VNOWi8gdS+w2dljzOna2FZ1NhbJvUdKTlfFI
	 v8fLIiVsOrF56YLQm6LB5TC3XTEp47HRG7udgUJ/i8DQVnSbIxFBN4ev/lUQYdgXJ5
	 PIcHEl037jQ3bmeI5Pt2ri3b1dJLmW31y5aCha1GYtZZv7CnopNw5WD5N7d18ng2gg
	 xQaT1R0bJgRrHYjwfruscL5jJspxdzlaUT8dAbiBk1hx8XewBGRZE7u0koU0pBHjgI
	 XG0KEQVBc5y/txiJtuTWuEm1zULYtfd7ayK6sGn7KH7tuojVr4CrrgyNdl10qTSHqA
	 E8hoktJl7Gtkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C782BC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337196277.7048.14327795873368572914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84c491dfbf60f94027f61b7a2053f63ab1a18fd8b6684372ff9a084e5f986c1
Date: Wed, 17 Apr 2024 16:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713371962
