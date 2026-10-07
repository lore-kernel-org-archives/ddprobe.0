Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5D829B795
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791378034; cv=none; b=Mw52utI8hwlBf1bizURdHZkY/hAx10ekMjqfBDLpnXaQFx04M435XregAXC44pKGG+Ih07xK454zx8n16IxVdWZPtuI4/WqqNNJkQd7MVjhfMPGkQOt3hcUZANd/g/IyuzTg6I5DTOG9zzUCK9yqCjhJ4oKn2qnqGyFNRQkGmdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791378034; c=relaxed/simple;
	bh=aGyPx64kfDxhoSu/nPXqoSX9D6wvwbieUjkyuhLD2LE=;
	h=To:Subject:From:Message-Id:Date; b=MtFXnR3qO/F9/hEvJHN/ly1P2d/0JZKQqV+191Fi2Mwht2qXgxKS/9nR+cnNqv3thB6mZG/lCY49hl2yP2qLJCJSATsS+qlpKQmLCSoEzMh1xgtcaM4hZDSd67VlmiOywtoCR5mAIoPwN+w7NXvcubMF7eCz9xNMPsBMMXGvkwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obT5IgYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obT5IgYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C564AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791378033;
	bh=aGyPx64kfDxhoSu/nPXqoSX9D6wvwbieUjkyuhLD2LE=;
	h=To:Subject:From:Date:From;
	b=obT5IgYtk4bT8F48sbdXkfAHP9/w9WSB+LpBE9hXj9dgWpzt/Fom7r1RFb2jrevLD
	 Mg1nFGB5fyoNs26xA5vXGWfkPnSHBT9iN31GxaFELpE5/mANzbRQUBgIXpfvUGJUMZ
	 fVppji0fUp+odTrYR+Z1DLx/p/2aKQPGOj7Smg5AS3+g9EHhqiqPQNeHAXwL6gvYZr
	 kE5/OO7gXh12PPT8vU5kwiuOPpMvL1MlmYKRBPTDPXhe1/5F4HQIcGtNLUKQyKWC4e
	 /K+B5R1J4WR4odIoIX/SnYpoTozmDcUM1rK2EBJ3DryYxbLitPG5xMhpz45O56LqyZ
	 o8qBnajR5uASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB94ECA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137803369.32197.1842105047380672767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a82f6720acacbec4bd6596b5e7b7610ae60ee879a6e796edb9a1f35abccd25b
Date: Wed, 07 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791378033
