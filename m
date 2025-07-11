Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BEBA933
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752208194; cv=none; b=si+DltSxD7+wquPLeH00f2yPr2ww1e5I8Cz82JAiPNajOt07T5bSpiJ7vD0vn95zpelUfd0pcH+Bq0NrGpOkOM02qPlcXOg+KR9zdKnlh/JcWEuuJuKOLuZdXiIh+N1buRrXqDT95QYBKlCmlp6vMCUQ+lRvVdGxdk8DAvqfUUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752208194; c=relaxed/simple;
	bh=9+rsjdZmX8fDY8oC8Wjtsse2gXSK1HWrzegS+ydxPKM=;
	h=To:Subject:From:Message-Id:Date; b=JzfXOGeI42bSiPTR1RBN5N9KlJHBvfw50DVp5c5Qv1Eh7BtHrEtPsdFvhnDmK90iPdjUMPIg9Jv++FAZHfZxJRajUFztgAWBO9FfBg9s/U0LTNuEhF4PaAyG5C+pm3PBdA/9uv9MQQ3221aBwoVcGQ8EvRe3ohksEWXnpNgG0WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAuPkuDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAuPkuDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F062C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752208193;
	bh=9+rsjdZmX8fDY8oC8Wjtsse2gXSK1HWrzegS+ydxPKM=;
	h=To:Subject:From:Date:From;
	b=BAuPkuDaGnPdstlgPQwEMF6PeuYJq+MLjnUVRT2ZV0fJAn9vFG0HGJzXcIBl2RZlq
	 KxDMCp19WeQBSZVI4hkeioIVPy3fEHYFbO/+YHoFT91CrKLkQGInBT0H25r/HrZTwa
	 sdFG37AkYZlePa3cspRWtH0+TYSNBSnaHxnHvn5I0HFa//MX5Ng5uHLDGga3EHTaGu
	 VakNsFnzVm4ikl0L+HZ8D7yJ1qslyvn0l9m6f182YiIVUXKWzchVxECso+/jEyxwKT
	 r+eW2xL7W7IP0BcSl8z5bmNz4VrolQaH12QZxlC5iR4nc28LPfJT4izfEHx0AxYD/r
	 boejJUIhdspqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BBC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220819357.32494.18164481816863566888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8f4d6f7edda7bb92e804b1dbf4727a9f62a5c4d5678da2afe658b2971e892d
Date: Fri, 11 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752208193
