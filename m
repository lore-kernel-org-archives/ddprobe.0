Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F641F5EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762909794; cv=none; b=pbiCUcj8JFT7m4Q9z8OzgvOXxyIA3KDSVwSvMPQYueEy6AHaKD3qunSEOg/f+mDXR08VD3K7SMp4vSlmXKvBERJjx4ge36EQc5aR6uZ+s4HZbDeQZ23exEixdI0l90kiJ2mp4DWsPzYRBW/y7W7ygSGnDRVpTyB4bQ96T2mHzps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762909794; c=relaxed/simple;
	bh=3Jj7KTbGI26WmP5PZGbHVKyff2FGxSwYUmaWkCYedhw=;
	h=To:Subject:From:Message-Id:Date; b=fi0vOpry+RnVYU6Cs/BR4PyPSSyIIlcJdfnSr43QSCiyEXlMZPdFwP4zJACFXOjhQydVS/HshW+cEPodW13v4hGFil/U5WOblaUJjBxHHrRLZi+jSceVReozzVL216/a9GX+h1Qh4bcdaP0vCwCgGzEuwHAI0syvAly+SKytdYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qz0WotFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qz0WotFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C314C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762909793;
	bh=3Jj7KTbGI26WmP5PZGbHVKyff2FGxSwYUmaWkCYedhw=;
	h=To:Subject:From:Date:From;
	b=qz0WotFsNUTZGw+FjTNAdecHKyK5LqWa8eM2hsTyeVnMRJrRUH28BkSk1WcT6k7it
	 2JFXmQawd3nctLlrreK44ZVcfqhhmZUydRA7+PoAjEYr6ZI+MgOik3p+BpUF8zEX4m
	 aRz1LNe/4Bdeuqtv0QYyoBvligEQpvX5D2m68L0BR2ggVg6FvNmbv0dHM214s4g1d9
	 MUHRo1axH/lclgNg+M/2B7kM++NYV3T1AjKiFhP1mXSzaUiQ14I9y8bHKbrBCQd162
	 CVECNuq2vKzoiCXMNi2OnlapdkTYdYeE4/WTLmhPrEuKthFH+6UgR0U2Fz6IcQ1zD4
	 z/WqrDQDnHTsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A1ECCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290979358.1015.7351015610320548760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20cf60f13cf318c03d2a353a5fb6ff55444686070ca89b7bf453bc859dc2e6c0
Date: Wed, 12 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762909793
