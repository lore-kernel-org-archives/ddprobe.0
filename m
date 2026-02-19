Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B8D33A6FE
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771509294; cv=none; b=D8bN+kYFnrWiyP8srISaqj8+wzXELJMucQw3evTnNf/YyMOKqQdVUADb4rsKTRObpwqRmLWlFAmlR9w8ZVfZZHj4oWIc1AsKbIkAjB86856c0GDQT2ncsu6kyUBlNUzAOhidvNc6Aio2Ak/LWpHPDtVxRnNzcDHsYSRcurzlJok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771509294; c=relaxed/simple;
	bh=g/AkLvu0E0+pypW8EyveFgtGOqXkUnoiziEBWu9U4d4=;
	h=To:Subject:From:Message-Id:Date; b=EX0uotYeqmtKKx8gci4Lr74YS1lIqd7HGDBwKVBl+8RflZSJjvImDX0Unaz5ARGmGG4BUFUG3eoTCqwqcNNr6MPJttbVjHrPDe1V1gAeoz3NPgHDZLQ2/Em+t3ca8gPebSwkX1UHA9Nh9ZHxQWR3IdzwhoHwWF3zPzx/9nnxuP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnnYN1pD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnnYN1pD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17F0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771509293;
	bh=g/AkLvu0E0+pypW8EyveFgtGOqXkUnoiziEBWu9U4d4=;
	h=To:Subject:From:Date:From;
	b=jnnYN1pD93qp1DHoWRjWnOupZq/9rdhytVolGgJoUW+hOOaumd7U36k8/hbB01iyG
	 1YT/XT5+tj1XiSSzy5q1Pc+6O8mjYeiQOYpE49aX4JAs5NJqSO+/V7reuHw3f7Tk7s
	 xB4wHYwL5Hs4+aVq/iIEVBLb2JgnjI8FlVs1XXKH+kUf0FTCd41mhqvG9M2sqzd7ms
	 NfhUNIuxugZlbyZnN7ajk6vRT8ieCj5XjzSLuAIvz7VI5jWpUlSDQ8fp8QJHvvcez6
	 0D0xXG7bmZ+29I5kJQPWM+Ma0qXjWzJqQOWoCClykMU9C3RmAzqVqnH7RkeJKN1Lc+
	 swJCieBd6RAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D266E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150929363.17641.1708084360666191318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f890754d7ec086ccb2e5365324fd40daa87b7d97831fd9875cd4a1f7c7f41e6
Date: Thu, 19 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771509293
