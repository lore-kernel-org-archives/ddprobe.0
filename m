Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370C71DE4F3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742644195; cv=none; b=hsdsX4WEMueApCp6UJujwUc9Dq/hos1iSgEcHi4Px4cxX8Y803gB77HOsWDviwSFQf2gTkWwr9UxnWUxUfnkBRd5h8AA2iFnQdWisdFeWde1rmgmYWzBBD1N/5WkH831BOk7ziqFwDPqHxuQHw9/expSTzc8E/l5wRKW6WU1e+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742644195; c=relaxed/simple;
	bh=vuRd7nv/H+ZB/bfhnVHzfwzz2AYn8+pGT5oWgdKGv9s=;
	h=To:Subject:From:Message-Id:Date; b=niYMIUYKJ3vGRgvxhYE6sgc/PXMEjxG8rP2hXH7KQDH6DcNGBWSjQft6dyDAWtLJamBsHj5jZO6ZTOQoZSQB5c9hGBjt2NNMT+eqvptSkfd/d2f2wGkIdSGiZLgJD+N7lwwK7o27g72EH2klR+UdX05SOvi31DqZspJnybeYTMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Urb/2y34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Urb/2y34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AB1C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742644193;
	bh=vuRd7nv/H+ZB/bfhnVHzfwzz2AYn8+pGT5oWgdKGv9s=;
	h=To:Subject:From:Date:From;
	b=Urb/2y349E2oWv2aWta1XWZKtqVdF+8wYuLbD/tmXhdC9FSrpzWtZZk6mkPYJVRIG
	 N/3BTScGbi+YfNrQP+gSvPU8zvGZVJm3knSzljLMdyPeHeDwkDDNGcELPN8Unly5Sz
	 8hYyLXsjqdFFcldsoKEnwPqLtqEEqKU2AnKPJw2QVhmxCXBkcF04ZMGSJ1zpnbaOXd
	 eZkWq5m55DXtnai+6lQjB1M+GSu7gZeMqBWceDvIqNjG5xFCtUrlGUQgWeO6Yo3+vt
	 JzMJZlYvUrYV5lsyT4z3oezddcBLakKVtsPLoOhfJHT3TwkrZwHKvDpO/izGh6ZVdZ
	 dxlChBsJpuFUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE79C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264419362.27672.1434965997030787093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994337a58a2419fc339030c44cff7d5acaee088a5e208eccb840b0ba744fef4c
Date: Sat, 22 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742644193
