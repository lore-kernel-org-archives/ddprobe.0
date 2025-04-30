Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC60190676
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746032995; cv=none; b=ss2TeftZidKUgxLyr2QVZ7MrfKEuUhQvSwZpohR4ZHU+PXi2MQM6N3apLENpV36vbmcSqRDKj9eyzjUK3D7BBt8NT7RLQUrJhe+c1hyP7+9WAXMBWrtttiLMEMHS15CKsCmTSGWmkILTWZvTwWi6uy6ZyT5OY2LEAyiobSUkfYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746032995; c=relaxed/simple;
	bh=sb/rBAaP4mINp2QmRkCCO4vhWv7VOgdOzaMxxjNuOuE=;
	h=To:Subject:From:Message-Id:Date; b=QouHzo4hH84I37O52jZsxtgP7bbYAWPc20msY0xuFHWCvYFmi6PxB7Zve0MJYhoekz65kOzrHQpzjfBMJfv+OXJtMDhS2JPKuGLYYFfHxjik83oKZyPbd3E6vYn/RjJtEmrQ2URHvFY7t/czeIWjloa6a5QEJCjy7WptAWCwAQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9MKzyLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9MKzyLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B8EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746032993;
	bh=sb/rBAaP4mINp2QmRkCCO4vhWv7VOgdOzaMxxjNuOuE=;
	h=To:Subject:From:Date:From;
	b=c9MKzyLd6EwJqBgbaQbW8e/OpR/qzE1SizwEYaWuTxhTacHdqb9d7NvO4JAPIQwLv
	 tlxDPt9ocrBPP5HCLRDHM8KzvSTW5fzYIgEY56RZG5TLcQwHUku5/rHfwX3iHNpxxZ
	 A+qlS2CnDF9X9r7mTQ+mCZ2uIfajWj1aNrM09p8bZK5/lwILmiYsTcz5+qiEI2HR2F
	 iAhbqipnZukSa4bIu2KbrYZmDVPmdMHe5OlUt9wOZLdE/fDUrsKU5gKivv4bkIwCTj
	 5OJ2jpxY8rSB/lpPaAgkEZi+4yEfNrcLqDGzUUdgO1F6gPgIYcLANwxsuw/kEwYNOA
	 6NUVqt8CDJF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED00C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603299357.20700.1920999304299610031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7a0be820b381b3468cd0229145bbd9c075923bb8aa8fdb45bd43dae13642e1
Date: Wed, 30 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746032993
