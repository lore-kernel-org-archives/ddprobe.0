Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423902572
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735261554; cv=none; b=jtLee7tM39p9JVqKuB8S16/2chIBLwx1vA2B6fJdYRLiHQM5+SFcyMFWoNmJ6gmgw5lUlxpolBbWlADsrubY3IR2/j1TIaL5sPCQxeVj9Qm8j7E3nnFIZFlqbkKjmzrmNUEZyRmY45NrJcN1anH3vfWlgVUPMXlPMOUm6CLj9+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735261554; c=relaxed/simple;
	bh=X+OwuvmBz7p+Bbu3llCQFQD74mxVHqn3NGZrVnFl2N0=;
	h=To:Subject:From:Message-Id:Date; b=LgbKsjWHfpvRoLUkO8+TproVuXSCXjbclSIRsjp05oZNq8rEXbYMvr+8SzGnzJLxScgzXlpLRbntRIuI9wmCjrMX8jzFOxT30o3ohADL02UbLz26wyMG8PCVwTj3yIU0FWNIufbZ8Xdywepjm6dibzC2WXjkcBCzMbUQlRzvAZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJUobZMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJUobZMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6304C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735261553;
	bh=X+OwuvmBz7p+Bbu3llCQFQD74mxVHqn3NGZrVnFl2N0=;
	h=To:Subject:From:Date:From;
	b=vJUobZMplRACQB9dAIxdCv3zVQ92rjiYi1zxmecj9OmAmGRfCabNi4D8lQft60Sew
	 0J5RpGC96pVESqtu4+8GskVkpIstrHH660/dnTef8ucTeuGIs1pfHkaMD8QpITQQor
	 FvLLbAs4IyPJcHJKkVoAfGIPd3jkfCBUhskXX1eW0j3HFwFvs1W6xMVzCbeOuQ3v0M
	 qucifIjFq7REQc7TkzxP6tlDwjI8PgcBjZ7DeqaSDjP0ssmPefHkyJqtr2SLdfmyGI
	 0jybwcelf6f/kwlxtUxJabxRleh10/JvFjHOiJCKC/KHUHfLB+FKlymV7IlvVdBLpr
	 bR1fm4CVS6qQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99391E77188
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526155360.7155.14364384518203128243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3585be41b33ae93513313db7fd14d59accbc227ee08ac4efb8f7b3459cc09173
Date: Fri, 27 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735261553
