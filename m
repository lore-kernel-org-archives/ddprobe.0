Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6263C31E855
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788477634; cv=none; b=VLyIwP4EjACea9EfEl9jOi7PiKJR1koxpFUR61jjLmSf1l9aPJuD7qk920REZcIjhJB2StadUxCwrPXZH0dIWcTqgTQW8KWeceOO0NQ7L5RVE7VaGzEVbt//0KY0+Ct5EqSjvBk8YRFHWTMSbcpq/kfHuvbtxJwWQltBLVngz6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788477634; c=relaxed/simple;
	bh=6w+4BCAtDtSmdVu/PX9fOAhyiBm+xCzkTpkVzM+O3SQ=;
	h=To:Subject:From:Message-Id:Date; b=hI1U0ZVtkH9xP/xbAFUCjMDAPwGfHcrtSdxWaySrF2mVuJrAtqT5UYVq+/dbBsP1sfiLr+dM8L5MsLTop8jTLbhNU0QtWrGF/7VtrNjIq+qzeRMClhL5eGr5a43qeoCkf4v6UXTATnQPX1BQrCNPa1hOyXlWlOJl2HMERU8mJ5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwlQpAWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwlQpAWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB0FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788477633;
	bh=6w+4BCAtDtSmdVu/PX9fOAhyiBm+xCzkTpkVzM+O3SQ=;
	h=To:Subject:From:Date:From;
	b=mwlQpAWUSDgBm3ia/yEHNwM6BZ6GMnw/U0OLHZlW35Rz2PJURqIy+mIF53ZESsXME
	 pC6xAODHxHssMp7xRalOlaswqAKglWh82ui0YhWnsqQvGctAm0MiBXMClzelGE7+Xs
	 BvZqgBLfiiOhRMWnGOTa1N9Ec3sIPwJryUOQoyXbf4dwt2IcHCcNj3kfF4Zl5+YtPn
	 83V5ZwCg7BjTMCA0QwGViIgpRTdIQLET93sTfUc+fyOswA5syy/rm/HRnOd1FAsFBD
	 4OG5PLJjH88sVFpK4ErVq2C858rONYkMSxBLS+pC28nVw6qAvM8+5iX4B0WECXe/3s
	 eDB0WeY18qdcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1C7C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847763374.24609.14919792876190943866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c88a73fd4096f6300fda29fdccdcf4940766727164b1a0ee173a7345db11666
Date: Thu, 03 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788477633
