Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025C42FD673
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772009694; cv=none; b=k/zhdEX1FI987l2YJkL1tRzjer/JWUW7COW9p7nWKZERoOM4yKRAyEyINtw0WlGzFJomghc04WSg1D/K0+l8xEWrGATgzoVEIDoVH5bLNMDFG7FH8spQxk5bOBUe2m8gwuN6+pxLpq37kfMTz0jTq1Hq8JyJiZQ+7BmUnLb1cQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772009694; c=relaxed/simple;
	bh=z7BsLsyVPAirV6XzpAmeMevMktgdHEmVWLD5GaVFfbo=;
	h=To:Subject:From:Message-Id:Date; b=PdYQ8kgJewIpERsP158HzHJxl4ymVgVnBnlsr/t16lPccPOmgEknKLTlC22nECu8vudQZomyK/93xVRVYx41s55hlSYnmt8Bg97UVy8DzHNWEa2dbTaSa+MplL4kqPFZN4cePPxwLCUrI9//zCuBuNqvLL2KQMACyHJWo6cvheM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MC4DyvdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MC4DyvdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A673FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772009693;
	bh=z7BsLsyVPAirV6XzpAmeMevMktgdHEmVWLD5GaVFfbo=;
	h=To:Subject:From:Date:From;
	b=MC4DyvdPFa9SZS7F8wYRjjXzI2LUx2PRtmMttxvU9m7FHGTrrcIqjrhZP85eMJQD5
	 yqpPAwwuO0N0gJpeIh2jS4c+IzS2UHqJSl9oMx34AuqJBUlbWLWT+qdvB0aRdTY8PH
	 qqnAHGz3/sIIqk8bztm//t9WnmpiZBdEfVYTvBbFEJzOl7yLRCBwrHXxZYxhCQrtof
	 NHlpvF+u1BnBI7zOYJDd//2dtpl58hPG2DUpxSv+6CHVP3ln+Izb4O6uSVZXd6RBJm
	 rdSvjg3kr35TG+gtLokJSs8F+mN5/ksb76i/fWuvI9FccCYBr3bc1cBwQa0bC6jU1s
	 ZPUtwDRbYav1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA7EFD20D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200969359.9504.14688641236396744286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b5a38fd5efa951ffacd9325669daa416cc2b8389650a20251188c859408f71
Date: Wed, 25 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772009693
