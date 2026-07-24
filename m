Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E09933122A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784907634; cv=none; b=SuBw8EJqW9yk1e8CTwIC+yI1an8jT3I7YlQz9uqPcmBxeH7czcvya5Zwb8zX1nLOLj4JaQbwVALpXL+G7z+b7I6pqA8lyIi4nXXsmmg/i25knWJ9mKEvUdFOlFhqlgvL2hrs6QvC79Urg3jfqRhJNZC1KvJUrl07gBS5C4g5G8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784907634; c=relaxed/simple;
	bh=AeEF+PqOrKnMWAZaS2jh8RBX6khk6WkVE6BaRai/9p0=;
	h=To:Subject:From:Message-Id:Date; b=N5yLMyO/F+Qnz7SdKfkKtQhMkwRNAwMUUNif26YTS4ephL5KCKWjZTACJ/xzmzmc6JJW4TwbZfgFTrh5BtAwrSvMXss01flboCR99IUfPXseEIBSpuE4LoMRfP6zxoQvAMu3MeMta5ugUbI3v80G+dex7w1cs+sgOiH/g3ISjmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZVaIkpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZVaIkpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE2DC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784907633;
	bh=AeEF+PqOrKnMWAZaS2jh8RBX6khk6WkVE6BaRai/9p0=;
	h=To:Subject:From:Date:From;
	b=pZVaIkpbJ5t4500Sw+b/AIGUkukVWq1tCUAXNx3Ss+kU3xXt+gSogXHYmAmSxEwJM
	 cC/HQBTlMeGbBLPwXPVHqVir/kuEN6ZG5MyX1gBmWtYeNyv53c1Oq8ND1Cw2BsKCdl
	 bnwLcrFumNCoiSvREr21FYBD0lntifwga9o2jnqjSDP3MulKAEzu85a2kInkAwWBVo
	 39XoV+O0XR/cBDyZYpS/pgKxVz2Wm9xyCXB0fqFG7eiF9sKSmtsb59Je03ETHl+Msc
	 1GhOq/HqSjv/Lr7h4FliIsdTB56afX1nCqxEF/Pz4Y+vDStaoyLHlxKzGkzM6AMcHm
	 K7pmIgakzu8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97BAC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490763368.32413.9955109674821497198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4addddd28e369bd226bbb97980fce60528b80ede9858ec61c23f8facc1fd2a50
Date: Fri, 24 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784907633
