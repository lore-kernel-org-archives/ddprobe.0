Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C672BEC5E
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789951834; cv=none; b=dE9pevas2J6jWB5uD50h6NKNHLHHHTYXNGmRtr3SnA/qONfQ7TGXZ5oFvNojSCc6RgLWFDq/lzTtoBpeEp9GGmaFJfJXuLcJmJoPscWmbK+XpIO9x7nIxml0mkdClb4S1yD+Slb1lUhyNKR6I3pMJCeZ/xoxYkRNbdFphDGm3h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789951834; c=relaxed/simple;
	bh=oXI9XVb8po/cUEYUtRVnyWU6kRFSELHP/EbAOqrj9yE=;
	h=To:Subject:From:Message-Id:Date; b=VoF05YRg8zkSwPyaLpGuwpqZ6RDUKUrb/4P5/tgWWDOox9GrwrKHlRft8iBB2aztbhuJUyqqdNvSDjxonfyWmj5Sd81ts1ju5n9ISBT9OZMFLPxaTm9Nt3f3NkkZ7cOT1KS8MC+0KhvP4qe2llWT28McagY+MFfp3pWP693aOWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guH/P43d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guH/P43d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AC9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789951833;
	bh=oXI9XVb8po/cUEYUtRVnyWU6kRFSELHP/EbAOqrj9yE=;
	h=To:Subject:From:Date:From;
	b=guH/P43d6oFhw2OJfAq4mlU0afquhHjUQET4h9ZjwpRNN/0ar/bDfs7hhIOjNqFZ7
	 TUnPWIi2t7FUK2cDZkSRtHsFquTsSs3KHyvf6iSR8l61bn2xmbjt4V9wvg062m5PGL
	 cDlKScYeZyNwBbASg+lkgSjG1nge0UlRNg0jcxInCskcVGDn+HXQkJ0WOvZkXXHyNg
	 2CBtz8DNk4rXK+d0dPrgXrgsFm0RfJWvKRo8EoV38lNsqNOiGPHGrRaRoVBSJDWuxU
	 /npCtxUGC9fflXVgkpJ0U6Uinn0myQUATSENw7vCH25EyJnFYHw24gD6CRJitgIp+7
	 oYxM0f2IsPEkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B02C982D8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995183368.13505.10762977279706267459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca60ebbb2a1731f9d4e253a525377929f551c84c1f7c0d306e9b39628bb0278
Date: Mon, 21 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789951833
