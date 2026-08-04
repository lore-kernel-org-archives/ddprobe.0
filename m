Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A541459AD4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785842434; cv=none; b=t7WNQwB2ePAt4z28bsjPcBpmdcSottQLGYxGgwy0sysqYpQP054LVfVgK2mVeLu0oxBf5vhpZhITs3R2hPxBLzaPg+Dex3hi+GpuYLu1so06darZgo5QtCTkn2hr6Sx6tyglhxYfCYOfGwyAq1BwvMrkoPCacfw5UUCOCUre34Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785842434; c=relaxed/simple;
	bh=RqEiJ+GjW7l9PISGH8h/ppD27ER/X+Dxa4IgDGxICEo=;
	h=To:Subject:From:Message-Id:Date; b=R0Uku6YFSxO78IXPYRn2q37X3a4T2jyth4nrE+fS/9hQojCiNJrYbr4ZsbqDV83Qey59ZHlnrb7/eiPU6fRQ2BJLtQ+sZ2Cf3A5Sm7vIOtIU3ITvsp6vwHcxBzUOuDCHSj8/k6Y8ps9sl8y9Y9CVwDihxg3O9NkfwNPC0DW18Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9N3JShX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9N3JShX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9D6C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785842433;
	bh=RqEiJ+GjW7l9PISGH8h/ppD27ER/X+Dxa4IgDGxICEo=;
	h=To:Subject:From:Date:From;
	b=L9N3JShXQKHs74VuhUu/MnvVxwtqo1hmDqrBKrr1/UuDjhG3MzGZv8L+1UzqIheYz
	 ELI6U5ZTA762DBzJxsdEo6x5IScgi5qGX3xPt3r6pFFVZtB/ihuJb/9mF3B0dEnGCx
	 UMl+P1xUTUY+ejRQvlRNsnmH5gcWozL6IIPfrLnzrkhDhwKnb/0U/4Iikews7A1ARM
	 OmBNeJ+IjBM1kIyU44fZCWWCusklv5yYC8ebjui9Hjt4YxWXBn69/ZpLgx0ls53Mnp
	 2vZfbTB2u12ILhishj6XH3hc0S9pKd0kyRCjtBAKuIGNA/vUAI6SSV6BXChDzFbejK
	 TU2AF/2Z5DHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4EDC55838
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584243368.20210.10324423181264271928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0678318d6d1b15be1e8285df8b4dad9a6e332762d5db666c0c78b97e1c503494
Date: Tue, 04 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785842433
