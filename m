Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC33F30EF62
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765313576; cv=none; b=RFOYYRXMDgZYCW2uB/HIjbhFoEzEmSeqRNKOd9e+x2infiJ5SVn5ePe5fj4UdqeT8ikLWt9n6IeNA6dD8esGiWwaFFWXhCokKNQnXjwQ0WJRgVpPvYKCq5ufakipVffIFt/Z+ejdsl683s8Y0yHYyGVUE9sWMe5vywq+Nj0PU5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765313576; c=relaxed/simple;
	bh=hyBM7Pe8tXydHagS6PA19op0qkeAosE7C5Uy57c8UYU=;
	h=To:Subject:From:Message-Id:Date; b=LU64uXqyedFRpoeEYsOWl+LJyNhoICY01dCw1hN48ACLEcnKLCZi2KQkKtq7bAXe1QKQaxpnJ4rLN7VmGl3Pnyf8Xbs+tvdVkY5D27Ec3Io4wpxRWvI9kM0rmeOmSaen5s+clXjPDnDkaLchSHg1QZwXQPPu5dv+fQ5iu27qT+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo61kK3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo61kK3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5054C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765313573;
	bh=hyBM7Pe8tXydHagS6PA19op0qkeAosE7C5Uy57c8UYU=;
	h=To:Subject:From:Date:From;
	b=Jo61kK3pEYH7t/Foxn8ea797SaHaKTGe88L9FVSocuayqC7lV7cxRcmHTQa1Uqs1E
	 1eXyGNYrDqKTPMwAuxJkX8iFpnGR/7pce5jvXbv3JTWz/gwTTTZPVjqdzaeMFNT2Dc
	 Kif61gSxLulvQqLO+7pXzuFwQiehxXrck6ntts+jjjtH374SH+trJkzONT6deLFPpe
	 a1rW1MuHJ8DntqoI7HEhPpOLcc1CbcyZOx9+SpuALoJ6ZndAc5k/5JXC57HS2g4YVp
	 l1Ly0B4rKItug1qOfQxubJzlVsXSb+MFeH03Y+LFScfPBKUe14yU7qlo+zbilTBeA+
	 vSZ7lK4wWeNcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD76D3B999
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531357362.12529.4353182567715307703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216c58f10b68a0779ff02d1514c40868ee9c80f4c1daf2729b0cd32cfebdb6e0
Date: Tue, 09 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765313573
