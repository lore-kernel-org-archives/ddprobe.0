Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1D825B088
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789807834; cv=none; b=WHCwjL1GuTW/M+n756SO0YLTLLGy6p4Wm9C7ZQPRrYtO6g+xLO94SGnSjas3o2Y/QkUKpraG+F7xub+/4/4EjpEzdEHx28OOncr97d+r+J4h/ddrZtNf/C6QSE7eqnI+xqJklX9mcO8/o+fT3XPqAdGxhMFPb7DQgxQUx8td2a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789807834; c=relaxed/simple;
	bh=co4Yqw7F+geDzF6DTXjH1hIAkzV85nNjUMeCTb1gfEA=;
	h=To:Subject:From:Message-Id:Date; b=owDjbSirs6auMwJV1reAs/jyuwXbnrlQ2RCkpkL+/a1GRUByjQ9d2tA/5muAa6hJ7you++4BGI1CAvh8HibdWeClA650A9yz9KHWPkKFH2VctEVkcKJ9gAurJRgu7AscJFbiTwA9B82fDq9GPeXgk37GMmW/uGlUU2veE7u+/HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpb5KFSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpb5KFSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3024C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789807833;
	bh=co4Yqw7F+geDzF6DTXjH1hIAkzV85nNjUMeCTb1gfEA=;
	h=To:Subject:From:Date:From;
	b=rpb5KFStEk+kJ8e6LUZctUH9Cy2/X0d8Qs0zsaa7hYpVWSRs0rHbRe7jsmlZ6sr82
	 n1M8y4DhGWRGipiCOJVFMQUQijGxwCNyfg02nxgno6/Ls52Vryh4vF3ssBeBT5KbF9
	 FafC3UP4QA7LL7PrfUCGIG+6hskeLgF375H4IfrgB7a6+P8FhG07E1lpvK+WhrIm6g
	 2kwqVZCarR+af1Ro9+/Wt7gRtBiifu7Wu/LQUlIfi3B0SN+TXqbk5xnxdwrvOXfpL2
	 j/VtcNkDu/vmiUZCozh3J5Y4z0WjQ0i2Fz89NOgZPeHi47uyK0BOxPW2hPZXHYWaXN
	 zSbI2DUHhtL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B043CC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980783368.28433.8063608837542580526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a862fa2aadf7861c4d55603e8e759cf63b778b1dd68c83b95f3f012b98e77672
Date: Sat, 19 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789807833
