Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F3C186E40
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742110194; cv=none; b=ibq67uLCqlWM7Nn/2x0d9cwTwHr0w8Yzg1WQqYDKg1XOmvIQXakETNYiAYC30OxDdJpMzdhX26LEhfZtRAVPyjRS4GewlXfi7CqCOoZBy5DdgFg7isr/iNWFK02h80lxjXfpgWC9qOVV5ZJQwRrOHkxfVTstirR1is7FiOlSMXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742110194; c=relaxed/simple;
	bh=mfdSpXCIP8Jm3wygkLl6wXyUn3ZoDyr1rmykHOqiWO8=;
	h=To:Subject:From:Message-Id:Date; b=I9mvEzQ1Yt0ol3aKP4GIUTecMrdQptjS9yva/4SvV9Q3tbpRAz3B4VlqzB7gY3b7P0oqssp1siUHaCafQktRmyIAIpdF4HJujLijMvg02UcJWKy29pDNSMR+7jKBDtDB+CMe2VjZ49lIT9hOGUBm737+UQAk0m4fH3rwr1MCfoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOu47Pg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOu47Pg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F3BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742110193;
	bh=mfdSpXCIP8Jm3wygkLl6wXyUn3ZoDyr1rmykHOqiWO8=;
	h=To:Subject:From:Date:From;
	b=eOu47Pg91IVCkceM4XwNzAwXZ39Aktyev4lsocoppHtbZlN2P48reoEnQRt8O7RCT
	 OkmE/xku0H0RSoCAgLfU2r7rUbpamnw4zsMh1KqKlUVa4TQ2ALXx/V3UyetzejLKjm
	 aivBJxg2I+1kHc3kBiq7lFuauLFg0v13UK6SEtcS9rk/vNilSNkoUNqo5vALW2kpsk
	 pmLdpavLZdmkzE+U+hJQQJjyrmwy5P0gxUzuPhurg3UhUshrlajBbtjiHzMCMyEqcJ
	 LbZfB1NRqzmIj4b0dyZyZsJGJsa7dnAYT8qC0gSRXEq7F/HoFkk+SscOiM4mXx8cBt
	 IO+7P0rAOYUdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A399AC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211019364.9085.16959615359931851752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9540fb155a32a0119eb3d3aad859f7bcce298a4453acd1b4e2ce350126763237
Date: Sun, 16 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742110193
