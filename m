Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF39844E05B
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786618834; cv=none; b=mT3ZDUIT5NXbMmn/zipzX59nmk+jN2xRvQoePvyJYsljo72JMDuiBYSu2livMW1a882BQ+azg6ben/OxXBdmQ8zLEPyDC4K9xveig7pRDynPavDIwjhkm7EZ7lCBX8W+C6iakjb8KF9JuFBe3s6V3mYJqewq3HCgzZqAasr9f9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786618834; c=relaxed/simple;
	bh=QAZvhZvK1aQhTtzCqHMVriPrpKH1OIayCyXQA1tBDDQ=;
	h=To:Subject:From:Message-Id:Date; b=cefxNsahF3k8UlXfS5Yb5I7RLO3cR0NQXpNKCTHn33ptwSesp+L2Wd8D3n1vycTdkEFUZwRxhAi37lp8Bqb1JOCrzTYmIEB4cW5edf4Oc6ybTECCHSwhFyg3/JbF/xScH1e6sHJeKATtNAge62yQNNduG5hLTPJ7IawCWD4pMLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE8h4Ao0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE8h4Ao0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2DFC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786618833;
	bh=QAZvhZvK1aQhTtzCqHMVriPrpKH1OIayCyXQA1tBDDQ=;
	h=To:Subject:From:Date:From;
	b=DE8h4Ao0yfouNR8f4JaM6Kr2nsAEick5hk885f7+kkZ3WlL5BG3nNpnvVnFzTiOq5
	 4s4znxHjagohDVhBDwXt0fjclhpTNCt8J3tsZkX2Q6xb0sXWMZAHMZysLpFTgAfooi
	 pVrxdq46QkuKNUXyab28piyUJglcXVam4ukBUO25v2nhx8QDFsCokpPhVh0FZ5DXfn
	 1djdgRLQojmtcR9EeqpwaLq7P8HxydztZhS581dHGTHM+m7QyRVlk95xSKg2QfyLtY
	 T6wNFH7LNNBEbsPFoIya2+ynP+yz5yJLZDGz8e9mAc3kVCOButfIJKbO9Gvh1PPX5C
	 mXewrouSiZLXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8047C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661883368.12255.11405870571252918131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52296361e3d6668b8a35f9bb6a6cfe63af5d19654d3c6bc9424a8d07c9ee1a18
Date: Thu, 13 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786618833
