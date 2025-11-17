Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170D326B0B7
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763393514; cv=none; b=RT3nupbhiDW4/iU/ILFXVRzqJ4vnQr27/lOyaZ5wTyD1bSwjbuhrR+RJ6L3cE1GPUgKZv9ykM49FjYXs10ohTunxZIS84KiLw0jQsUwjT3OspF+biB55iuoD85Kq6A31OX0JAr8ZD1pTrDTx4pjf7dW6yq0p1yDVdkBPgtfm9Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763393514; c=relaxed/simple;
	bh=GBK0Z7wu8arwVB/U2D1S8MLe3B613JTUwTlcnCjDT5c=;
	h=To:Subject:From:Message-Id:Date; b=bBp/2BGaiLJwNf+lTAK20O84+YcQkOdR/DguF+IDvtBkX9QHRc+rKcDVEMmw3PHY9vXSOEcRJG5Uwl5CzPyXuvAaqWqIYKodLpRYHr7w6rpLCqnl5E75QgXlJP6INkTIMet+1OB0aYlLfFX5HGe9pYOrcZLZXAcuX1Rd+VXqmLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUeTaoVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUeTaoVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B325C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763393513;
	bh=GBK0Z7wu8arwVB/U2D1S8MLe3B613JTUwTlcnCjDT5c=;
	h=To:Subject:From:Date:From;
	b=SUeTaoVDXBJJj4UZ/UY8spVrijGRuuX4Z9HOY0U/1SSxH1HJUSvV5ETTvsBh/DOmH
	 eg77ZmXLLsjoB1XffbellDkVtjIjF5z0n3jC2O9Hdfbljincj6JZrYPxeGGuTPT+dK
	 V7AElWP84u2fTBdd7c6x8AeDky3NJH7KtQtMVwFTYIQyZA5O6Y7ut2t/SJe6zteEBl
	 YqlZDNpp1DbUXUsOkAOxj4g/csez+C1CshxM2pk39sKO2I1VkZ4x7rfKw/xPzuCCs5
	 UQBvh/9xuibh2Uy1LFbJ0sKEG3k7wwhhwvV3crdL77m1Bqwvy1DTrJKNS6ya7A3pU0
	 RqCjWtg+JyEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9ACE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339351358.22065.15875346037296646497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd29a57675a5613e9fbfc90c0e5d03db12ffda744b275d3e1a817459d495195
Date: Mon, 17 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763393513
