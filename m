Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8B6211C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736007954; cv=none; b=isfwNwa1eX5hezLUm+7eTBn1lx2PTTK1fNrWt6W3TWBSFoeNxHMasMC5bGTtdnuYhPlq8/vjpOB/YdnOjo6CY/MNRkOEa95vREK8WKDZERaKzwgVgCBBR6/+6dPsyZs6WnhTMNEGJRo4ttFOqlIRvvBYvVd+85pY8x9riidnxLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736007954; c=relaxed/simple;
	bh=1XsPGixX7Q8cXzaDE0sTPmz9VbGRoVIuKyEriE1bGzs=;
	h=To:Subject:From:Message-Id:Date; b=A8wzNN5Gq5mKeYS/eTJJkbzFgxD5MTYVEL47dTPUNTu+WpVM5wlwffJnXJl0l0XV97MgOv/r28dqGyxP6ZzBZSDV0V8ZuK3fzxrX8SJKlTZPmXOnsx/X9wE+PS9WJCBvW0NRDTtx5lvy+XjAxNKveh2WsK7/bLV1ghy24PAWQfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFGvEpO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFGvEpO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38BFC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736007953;
	bh=1XsPGixX7Q8cXzaDE0sTPmz9VbGRoVIuKyEriE1bGzs=;
	h=To:Subject:From:Date:From;
	b=YFGvEpO2rcN36vC+SdllJi2Pds48Ye/5wntrknURgggkSSsMlKUwZmWUUb2hL3HSk
	 4Di2L06v+rc4E9pU3zeV4D0tM21YOa5xWdKCyLpIWENuh97SMLPHNSRI2sjyvuLOw2
	 dFbZeIZBw+/e3J562gRGTf4oD5VJhmWUYRJ99A558fwun1zOcb8uj1gNVfrA1CmEsf
	 73hApmo3P5KNPkdxHMqAykjQ6H6TQfnG1bzAjdYkJdLj5/Zz+wMhuXxEe41nthHJ0c
	 exuIZ6PWEkC3uSS/QNz7M3nxj9id8lXmK95yjN9JWH0j0iUZ8FS40t44jINxmwdGf1
	 2ao+HbDAKR6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD22E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600795360.3093.4233722838433206948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf03606866df5976c13a78b01d0f7ca7f170c36e0f47e532ef9e9317b4ed398
Date: Sat, 04 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736007953
