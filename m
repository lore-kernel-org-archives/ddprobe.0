Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA5F80043
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727207154; cv=none; b=RrGKCmPRhwNaJYnZGfMGTHnY/jnDD0f7rghdHjqG33e3Tg1CZzXd8eE1RJvDpR146/pRYvG+g7DDHbJXS7bN6H0pNX/L77gTGQO5sjcnT9Vd0K7I4VGPKrPhnRFSASEbv7sQaG98VBjJ75q1z8bnJzVW40Il/SszXbrneBScIW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727207154; c=relaxed/simple;
	bh=Bl2BTP+4EGprgFMk8RT09B0QN233gF3R4yP957gviWQ=;
	h=To:Subject:From:Message-Id:Date; b=FbcyAkHya2qsiLyR2hVkZi3bDk4VpuFJhlYbUyM6dTkK/sOU4N1lYS5cqTrK7/QNhyj/9uZbdgiEnTgGYRR3NHSdYRU2rQu0AwKnhYF6TGQXc6827qlZNOxJSxm9kPo4JiKk3b6Nj5r4rdKZFGw1M9igxQa0HRSWm0ZXK7CMhcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5GzcJsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5GzcJsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC27C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727207153;
	bh=Bl2BTP+4EGprgFMk8RT09B0QN233gF3R4yP957gviWQ=;
	h=To:Subject:From:Date:From;
	b=a5GzcJsXnFDz4CFMcDfVX+/n3q5sHGDQqRhV+QgH98d9GxFswqllkGpfi7a5LJarB
	 pvvFI3PTihAE0q9ySjcij1UqrXFPTQ73gq1CNEXzK1YysKgXLIJfNlwT+1aBmrLOZG
	 fohWw2072V9bx1+yLhtRX9oFQwSwCAkFb/bozFV4HfNTxuFk1J9VNk4PNAoVlN1705
	 7T+AMkSJNe0l28BAKwZWnpkLFNa+HDDhqio1XC4ZHbAdKTqrMRNOGXYwBvWfSFTYpT
	 bNBf2TSlsg+5xo0A+Owe3LoQQdKyRoSWefgdoxTinYBhpZd/LQgp9YsiYVQRT59XtN
	 9toxUGyQN1n+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C31CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720715358.18910.9848755712523315714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec1684fc976f9f84324192841a6f70c8d6495228f265e06e24ab88528e46c89
Date: Tue, 24 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727207153
