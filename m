Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9DD1F91C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755729594; cv=none; b=S4JVVj3b5sza9xcJnw1sKYuK+Gp3azvnJgNn0dfgcTu5IPk4OF1ghrZAZu7uDJ3WpMBAeHDlSYkmMFwLYhuZoEUeFEmsnaXMSv8zfY9IVO+N/cVNrzOtNFC3rnAuMU/Aik3qj/RL/xEwKrygDxcDkw0TeEp4E6W39uYexJCqSO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755729594; c=relaxed/simple;
	bh=1GH3zEbksRJCO220MC1j2YhO9+Qy9ZiUncFoT8n+vZc=;
	h=To:Subject:From:Message-Id:Date; b=eKdiBgwFOST3jiMgDWHzwZK3Ytbd2clrAbqPYkaPRx1KlawkspGIuo4ZLyyqFzhFsqOIM88W26yghSGE9fqjg3No+bwluTDmezcrvChr18gCgqZFi3q1z7L0Mf8HnxJmQZ6FZCeo+yIBNllDjly5amFHZbB7OOrv7ztAfaK+wHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owP0k6pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owP0k6pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2532C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755729593;
	bh=1GH3zEbksRJCO220MC1j2YhO9+Qy9ZiUncFoT8n+vZc=;
	h=To:Subject:From:Date:From;
	b=owP0k6pWSLBCe4HrvdnDBBvJjePVxlQJ1/LcWLYndjT1jCwUObznDxFvSs2Ce9FhB
	 NXtA1+BSUOsRmZ75iEwyer7kvtAEKGYFKBhhGQn+ZLi4mbc0wClySwNsZaHzJEt7Mb
	 qJUss06iugS7K/ccLSUzyUfVPQh5fetCPen+ssc7je5KjC2pn+H7JkLzrWyJp2QvJt
	 +HQN9RpS3ySkRl07mwscMVKHaKKtB6HejYXBIFwhyPsq4aIx7Ma2a7glz8zm7DHQ7z
	 bDi+rDyqhM+q7bJVQ12dUZ69W8X0QrKBh4IJB25AkRyK9x4gQVVZXY++r7fB2es8qM
	 XDExf2KNgRdYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFCCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572959358.16772.456706803688197491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9a8b9f2f81b3b0b31fefa2f8c5fe18daf929de0212a36b60f6da38a304a35f
Date: Wed, 20 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755729593
