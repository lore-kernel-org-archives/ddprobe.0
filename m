Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCFA3FB81
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714192943; cv=none; b=NtXBnTNWQ6jq+ZEB2jrxfEcB1FQ9g7Qf1SrwWL5IG7rZNGyU7LQmy2bxW6d/mAPu7DVopcCHBaITDC14hhjwJ4sobDpfNdpr/Px+JsuYqZAH67SjXMDgap8roL2sCgvJfZUk4V7r3HlasvPWeMxwFN0CwD0pWczrX/5mpLTxKGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714192943; c=relaxed/simple;
	bh=R7P08tL5GZjhuJuRervKAQeIYo9fuEdfeNEhTMVVB0E=;
	h=To:Subject:From:Message-Id:Date; b=U/d7744ur3bDPN6mkpleoTtyhEWLWaOBvTOjrA4D2JT83C19JAU/dYTbAvOA1MSUsmOvE2uBzXVe+9JaJ5yOI75a9kE6TS9ECINB3Og6jd5Julqu7f6p67KHahmUv0wTmBS80uZE6McQlqrH6NUs2acb/IWr9OCrjK1fDPRb4Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu2xITTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu2xITTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CC3C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714192942;
	bh=R7P08tL5GZjhuJuRervKAQeIYo9fuEdfeNEhTMVVB0E=;
	h=To:Subject:From:Date:From;
	b=Gu2xITTAQ/QYyc/LHc8xgP4uXWif3z+dcZBNwMPbPcLsISP2t5CCC0Yl2KkmhGA8U
	 EYZO1VJW0PBcACiBBbP6IYnfNkjCO/tF6U8tZWOc6mUUpkBeZneVIa2mPHbzkJYaNt
	 wFWHZMosc0Lq5Dnp50ThrL4noFKfomXkcMKXsZhNM5X6d38/K1MvOqNe0941dWn2TN
	 k52nIGjDc11RAkbV6vTFdEvjC67Z/ikdvU4hulAlJLZOQVjOsXJsiD8QyyQKKaTX5B
	 lGgPqPDjKuQ6QA3xTw4418Nx5Tn81hnZQOptIrpQCF0TvebbdJd4/bGuvDpjUoWSuF
	 78VDs5gT3YyVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF413C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419294277.19082.8961658496280440630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37cd8b011e2715662b7f38b46430dd50844f7f485a10d66878b71d324bbb3075
Date: Sat, 27 Apr 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714192942
