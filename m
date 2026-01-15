Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD5D1F4181
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768456434; cv=none; b=PpekyWMw4HTwNooEh3oYVwUUnePqZPq0o5r6lKYTMUZtU/9OOh7rKwqRKaJcrIs0JqMLkQ4wiDHhhf+CNh4KAR5mjH3rsMeUVpm6l16VUOEPv0r/4MsmEVwaJz8EnMZCZOT5HTZPmafPZL2+RWlXVU5KlltaSjZ4kOi9d2wOekQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768456434; c=relaxed/simple;
	bh=UVJedV3yFAqohUouOP9HtBjni/XCSG7npqjwczR+Huk=;
	h=To:Subject:From:Message-Id:Date; b=PnGHWHUXEpOAPF6kwgTAe59fNnMKlXuWzpiBPJM+r+pO4QFQCaMnBDoLfE9s8YrOX4TXzxJAQi+n9UMKyOV17BH83XjblQh8dgsTk/ZRxo/OEudUA7U0jLfmRizeHUS3DcAk72KWmOS2iZDbva71uXEuRUaGzbjdKQsMNvQ74H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHza2/AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHza2/AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45ECC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768456433;
	bh=UVJedV3yFAqohUouOP9HtBjni/XCSG7npqjwczR+Huk=;
	h=To:Subject:From:Date:From;
	b=uHza2/AGoW4nBsg++bJBIJ8hwqUfZcqhyCQvs+yOLK2LloszYE20Rmq4n4OvDEswC
	 H0WR6/RlmkZy29sq1XJ1PS2WwND7oWBGhX3ibib6YkawuV+L5/HyfNMKGz3N6mNiHY
	 JXglPQLuEZEcoGBGiKrFvk/p/0bk97Z3bXV2sQ4XCjWkQUx866OZSiCqIue5uV8y+/
	 x5Zzz8ZokklgRQsB1lqLicRpsTUVPkEyylNEcCRf0DjbvnfoHakv9R95TeyPRlChbZ
	 7PndnRAJp4NqN9nxhKbKWjKp80sHrnv0sZjkhdfxg3o5YA3TqWzgb9xPOFpGuMwq7D
	 gKmi+1Oqj7TYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D85D3CCAF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845643357.12803.13889276053149292593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9bb3c867f713ba6aae6e9203e7aa0d2b64145a9cda42f8baf20793d8b3a4cf
Date: Thu, 15 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768456433
