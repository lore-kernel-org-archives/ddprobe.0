Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FA62D948D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768514034; cv=none; b=c/SIxhGlm70JEKS53wg6Vf4UG6saDNx8crQZT4rs8P3B+1IgO5lUKRavI6hFZZT5vwpHxgOzpGbesKzCoiOK8V7wSIx6eWAFkeQe/uvgYgbHPa0+LgCRZyRh1DdlzSKWdk+LHv9UMBBFq6ZLxXw4+q5otSbqCXGbUPJaDR6HkDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768514034; c=relaxed/simple;
	bh=4vGnzRmnBN+ZKFrMArAg8MrEFZflKvMkP3Vzfks4x3Q=;
	h=To:Subject:From:Message-Id:Date; b=HDoCWPi6+BTSALdk+IdzsnIZxS9tVOIs71qiULHuzcLNBCiU3L/uSBrGvPr/eF0SsTzA4XjySc6ZnDbuD2uOxVxQalI4EnjmaEUqbcS/0gfOSPbdEDiZqID6HP4lFDw1ZgBRbGTOz68xxX0Twzs7BSkkujrVQoJfyRKZiOK8+NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3SywMvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3SywMvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C491C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768514033;
	bh=4vGnzRmnBN+ZKFrMArAg8MrEFZflKvMkP3Vzfks4x3Q=;
	h=To:Subject:From:Date:From;
	b=A3SywMvhu0nX+t/9BMohPjUbGjvW855hDPiLcgL2h14xq455coc4iBvf7jxR0gyAV
	 gj52QtA94JVSFbknIwZeNggPFGOXhaN6dvZK3KKsHTQ29C9uPx3KjKkVOp9k1yIzIp
	 Bh5sWeydVCKCkpYTbetQijHwJ+ss2E2sUKgbjIAmRB96JDxQocF1QkJfi07KBYQvVN
	 EHmUhnn/6iSkNXfQrvghSjQpECUHhZh4cHg1fkpjQTHc6sErd9VULIYt7ncPp7oqGJ
	 MN3OAvOpUq0ALycSr9Jup0r5WcWj7gH94n8SelYYo1Ee1J1pjQlXbdZ7/szUQBOx7v
	 Kx90OFdCjTyXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB9D4662F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851403357.3805.16491384750130640225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba14b3b4290b114b19654ab6bf5a43d1489940e914d7bc6a59b0c5012ddd60f
Date: Thu, 15 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768514033
