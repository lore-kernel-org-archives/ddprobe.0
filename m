Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C50D3FBB3
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741144135; cv=none; b=Fvxpc0msCq8RXGWXn/2ov17XhKNjkZ/4Vvvg1RmWmLkDdbOe35iZxbj8eSe+R4Nab+Au6Dhgl3+XV9/u8EDgo3r7B62b0u8XDpnkW9phOhsbqlkptruUPyg2SQWDSPsID3DFSmd87+K0Pd08tD+cvCd31gcXjtVC0OWF0T4KO+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741144135; c=relaxed/simple;
	bh=JU+H2lP+1qDqevZ5uA2r768IWjkpJlX07P00zrW3aPA=;
	h=To:Subject:From:Message-Id:Date; b=s5vJGrg2bL1Oysz2l1OMOv3zb59c/yv5Aqwgcp51Q6XE/jRLtRTbNhWI09Dx0SuE+d5gqTHbpIyQMuIbyjJD6SEb+V7jTjmgTTUaeTPkQOrrIgqRUVEQKBDxL6JiZm3zXD6ZBsyOi5gb2OizJlNaaBQqlqAuOwPjj7cBcIYbihk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0IDzFrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0IDzFrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F97C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741144133;
	bh=JU+H2lP+1qDqevZ5uA2r768IWjkpJlX07P00zrW3aPA=;
	h=To:Subject:From:Date:From;
	b=H0IDzFrJStC1s2rGaTVi6jLEj5ZI3XOBqHHtMP+S/hoNSeyIJpcscQ6n987363DFS
	 jJgI4tVmJ8GazUKT4tcUFrkhRmvovwHUkyxAgIHsnwUiv2XcLYZySZ2qrYvfV/u/oq
	 HzdPw+xgKw6TwOb0jpYAs8LANKRfBEJzoPvmcXtc9cFqlYmn9Kfr2vQyKBUbQxGQPh
	 +sR8LOGd0RQzhMWc2/B1rIC6d54BtJwcZDdailQenT97U+LnPwERBPgHCaMl4MZutP
	 NRUNn1RiUI3L2gUFx/FleA7wYVvO8VrWKLBKEJqIT29HCk0s/H3MZkKrS1ZBSFEoTq
	 Rwe66gmQyFa+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91707C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174114413358.22114.6045083894680307127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2739347fd646187bffe7e09c592ec1783f721c37daa31958c0496e2521667681
Date: Wed, 05 Mar 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741144133
