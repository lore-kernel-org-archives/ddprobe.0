Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1748A1F1927
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749248395; cv=none; b=DO840EY0bndwp8eFywx0K3tqkqjrHi+qoyFDa+7vtoE/mSNx/tCQCVY9O6i7G34F60QaicmFLebhhfQgB98zXOPsBa4Z96Z7+wHPJlHfgM9hu8EOzLbpJ4yn8UeTcY/MSY4+ihG2IFCbJDsDsrPg2cKqhOTiEQ/GWlaLrlUlmzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749248395; c=relaxed/simple;
	bh=NCwNr37k5WhJTpY7JM6qAUia3thN+Xv3+RSId3j3/v8=;
	h=To:Subject:From:Message-Id:Date; b=bwZYT8ID6sOxQmuYPe7hqCWSOMrWUCsqgTDKaiHNJhCDjJ6Jv7BhbnGS61ycPUT4KIsBHaWSSGjtW3XjlhKUJVZMvZFcrDOUUTjjk8PcML+Vw12sRid0JUIn2asLLnybK7MJCiedey93bCo1qydZso+EWGaqVlbYq9Ry1VevRL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDgN734a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDgN734a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D68C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749248393;
	bh=NCwNr37k5WhJTpY7JM6qAUia3thN+Xv3+RSId3j3/v8=;
	h=To:Subject:From:Date:From;
	b=BDgN734arqU97gHA2j3hTjS/Kz/rY0giurhrxsvTn4D3KwMA9GKDO1gQkKigez8Vu
	 SxbMrszE8WnwpfIQ9jt3uZvFFB1tcOurb2MWQdnEtKbFimSYP2QUvgeC/3nK1fN15n
	 oLb+UW4NnrsYLRjWIX36x5DdyVdpP5KPhI9lFaTtVxj6MsoLJbSw9tjpWtz5ur39t5
	 qaTAvtzOWI/GvyxO3UNCpctvUl73b2PApWFQ1Hyrof70Cnk7P7qsHcHp0pNONug0Ja
	 XK2gYyZPMwHZJ3QE9PcQsxX174lT6EQd0ei+yaQ+eTPEvI2Up0QyV7z1zfdtmalnZN
	 xjfNGZwldsxpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CDC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924839357.23162.7045911976577964912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648b34d2e81471d30a63616474cd9b6d43fd511aed26eb2e51b1d68c2ad89c71
Date: Fri, 06 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749248393
