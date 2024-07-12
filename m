Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3668A4644E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720825163; cv=none; b=eBvquq0xC0NO89OWt7l1865UfmuCHVpioWwphwyqBSvqXqSUIYcn/84etu3mFrmocEgThMFJZdYU7hSIiOzyHWjyAqFk9HWEtecxhpPOpIuHrzXhLeCXFMiD3vF8TXilgzZoO6EWt9FsEhkcS6LR/2cxNk7/paAQkXp7rgiXr/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720825163; c=relaxed/simple;
	bh=Gn4Vb2fZzphIQRan5jp1/CSgm8smnMB+JVCeZbhGMPs=;
	h=To:Subject:From:Message-Id:Date; b=Onq2B8Qu31dR4Wf/ATCq7zuOiOdMs+2J/UtiytBkJr4aY1XBn3W1kftxWUdz8rSWb256GP7OmQJf3HXqzvjTYnzu0vIx60HZaHgWgJlhetkJFC3KysU0lExfbMCl9NAKRb2v0/JIovi5kF26J0dtDBqKsd7Ycyxf2plIm2Z/2fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+5wFg6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+5wFg6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67FAC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720825162;
	bh=Gn4Vb2fZzphIQRan5jp1/CSgm8smnMB+JVCeZbhGMPs=;
	h=To:Subject:From:Date:From;
	b=N+5wFg6Au56xH+wICPQphIR7DihFZxti5r5DS3Bzs62PynuSEPKYbBVnh3Zxz+fVL
	 EWNmHhUKJ6BZmGyUzPnYUNU8/6ce3BjXhfzOv9wAp7ljqmfx9qVdvuSvilys16/YD5
	 cYweEAyPhR4tODshTfZjPsZ8vPAxUFPEElSuWjxoFYH1aWtz8NlKiuA4AIdSsZaSjx
	 c7zNRgZMk38Go0im06mDZvCAY5EeoyxeoAWjUMHsPaqvK81k4fsWHiX8yn6ORkBdTx
	 ipJzRQPGPggzEPlKYx85ZR4uGe8k50T99NEQa6wjk4ctcO1yAzZwklWIdrZBhlxGOK
	 9EPkh+zug9eBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0689C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082516277.21417.16894486989695630404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca94ef121f10d2b156cf3b9578f9bf254becb7a43bae6217b228be3a5411153
Date: Fri, 12 Jul 2024 22:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720825162
