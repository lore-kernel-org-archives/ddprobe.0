Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C28499F12
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791969634; cv=none; b=lQvogYWuyrsvQoRumCBzez4XfX1xeA3/oSLfNMAbWUNymaQM0OIkMAh6Ur52tPljYDn/ATBUbQg+uZzzB/LxFE77LihoffxmTUKUfHu79bx2wMHdYXb0TU/dSbL2vKpv01t0sgNz2BoIhBdkekeuS0gF6hld74XLXEZMEthPqYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791969634; c=relaxed/simple;
	bh=vP9gOmmIJnGgbqG4U0hFV3HumOChO8Pc7grl7hCAvvw=;
	h=To:Subject:From:Message-Id:Date; b=nmT9brHfv/yHQxsWc2wOoHRruEhl2HeKIW7ZHjT7XUkVrgq6DrtShTvBcKzxFzAYY56j3cYGJSBR4R3iQnjD4N77AGvtqq7QM66vafx8la/aI7avNBcIwdnZlCmxIAy9ER74KzPYoz3oJEKhI0rCk8AmI4R/B+jHkdBTr9MPJug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIGf/m4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIGf/m4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C63C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791969633;
	bh=vP9gOmmIJnGgbqG4U0hFV3HumOChO8Pc7grl7hCAvvw=;
	h=To:Subject:From:Date:From;
	b=MIGf/m4V083j6NXXBLJa1NeQ9X7UiTa8WLrQ9QCJ4sVFqSYFnFIv80RsGkCBVUb/x
	 E4mI/tSBSW0TB2H1XBFGi43KDsdFqR1N24El/INyEHWYIfdpAkGIA6jVam9LGKUztJ
	 W8FercppRfp+UUA7NoY5lFd+xhfW9L9MqpHbiD4myJJp9OgAq32cmKUqqlDXr1+XDt
	 8o2SRcsHcrBpM21yKS9FFMGPKQyCuqE3O+IauqYJ8Kh+HRJnlLVLeRIQe71bv3fSsu
	 E5o7h9RkK6q1+ASnBBGU7KttTRd0LdbsaBmS80IhX3eT3sbH44A6o0z5MK+j3LHNoC
	 kQXi7KiWqVgYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECABCC6B1F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196963370.27972.12448403496058814979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7039e4a9fecd39a6693c13e38ba594e62ebe49a5ae29f852fce30c0d97de0740
Date: Wed, 14 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791969633
