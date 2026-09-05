Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3CA367B77
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788594634; cv=none; b=HYJNNnEHN4w5ESg3zSrmO5D7Kz9jjCNivge/jxufpEKX376tSjVu0LtzWIqxlhOjs6SlYEd6XtnSYl9Iu5GRu6+uBW1njgkiLLgwwfb/rJmcWmpI68afnSl0xdih9KEUMvU1AqIUHPr/+JGBS0AilX0ar3I1iiicB5jqH4yIfOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788594634; c=relaxed/simple;
	bh=J3fa2sV7YZH/h5KDK7HY9GhTOZq+JGADYRs0Ff9Z3ZQ=;
	h=To:Subject:From:Message-Id:Date; b=TUpXDPhFEpyNUbn2ZayaRs3dZFJfxgk8J0W5zEWjs6gdfHuiEq+Bt2v3a74r54+ueNj+WLKCeFXrDoT5vSCmVPnKqae+qfy0qxORGnBCk73G0RaHDTI6IvanZXtQ48Af1zP1Urx5fe6iGQr9yAn4CvsepRr4ahAZUPG1r9/Na+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiyOiXLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiyOiXLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ED3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788594633;
	bh=J3fa2sV7YZH/h5KDK7HY9GhTOZq+JGADYRs0Ff9Z3ZQ=;
	h=To:Subject:From:Date:From;
	b=qiyOiXLU7po7ii/R14WgKpG94sY6KCvu5Isd3MUp30QG6UOiXko751hRzQa9dyT7O
	 n9xDOhNeie/IHMFcKEr4jm7JWM7ySlBJcmgzg5vKFy+IfxqADKmOzkh+oNCaSolQR7
	 08I6ZqnuIInzBgRtjqREWP01AXhV8uMcMLztQEjXTH3fH44AtBGhzi3EV4z7qJZ1cq
	 4vbNmn2SufkW9rgkCU4iG9fEZPlj8q2uD5N2zNnJvwJHcq7KBM9UajXUGElNX+mTGi
	 NDeUZzbIlE1hG3WSNLrk9Kx1V/W+ZihzQBQmZ39fQmw1ctcvKbm2xGVbdqJfI/SONl
	 X2BWj3MkuKbTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D2EC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859463370.1065.16013858843014909361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1746a2bee89fdea67583d4cb8b49f8386978455c8ff1eb996e0fbb85b8f113d7
Date: Sat, 05 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788594633
