Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCCE13D518
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732742754; cv=none; b=EVcf5ZaLJi0QR90yDeCLjCaP7WaQPD1iEWehWda62VjxpHvWaqqW1yPNXq9hAvaTHAF86xMnra6s05bo1+QU91C0n84Yw4jneJGye9uGFdLuS5OzN5MC6sC2ruYHgy9b5pu5l9F/NLZgesVjtNhzivy+E1Hy+h7yUcEbj2aV6wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732742754; c=relaxed/simple;
	bh=37FT0BZxgyEKU9jCspN3yMygkXW5LXNPwQOE9x2QOys=;
	h=To:Subject:From:Message-Id:Date; b=sA2uGeIXr47BoxIh7CB7RhQKa6Lg/MlHhHZRJwWUcVA9y+8KwBW5pHEMCgY5ladDWZOTW2StYbHYJI+yFiDi9qd0oMyfLHCGvVp/s92FvUGD0adERtjg/wBWrUbJcCMALRqwWCb1tiU+NlSLW3de4hrnQl7YlUj5IDt4O1YgLgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBQOAY73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBQOAY73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C69C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732742753;
	bh=37FT0BZxgyEKU9jCspN3yMygkXW5LXNPwQOE9x2QOys=;
	h=To:Subject:From:Date:From;
	b=bBQOAY73BmhvKfljj6YM8GsEAeBlluxKrJJsfLIBluYCMYyGRA+6fptId6KWe1IpT
	 05Y+jO9KPp0l+AkAIVv5hkGzpu5GiJ5ils8ihTa1FyRQ6ipZQu1Y2m45Sx0id87F+f
	 ISREv39rs39vUMYtmTkaywbgOmQFmPkSLghzq0u/kp8uNHrkM08PHa6F2nfMwVeLtR
	 8IoNuwinajH0XmHqMEbiR8vNYhOFALW63Qvl+4mylJiHHAX75wo1o4q369TbEMt2TJ
	 ZKOxgx/lVZgNCSGHD7uwo4UZe59ywe1g3njJlv7ybNXuOj/2xYx6BI6w9CBFSUW0FZ
	 8Ib12r2awjeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDEDD6D23D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274275362.20476.8387857418738938452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e7836fbf81bed7a2167da3389529b935dc60fc5fd66808b9bee986df7b2d19
Date: Wed, 27 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732742753
