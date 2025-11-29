Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D32E2E7160
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764412974; cv=none; b=n9KrHrQ8Nt2UuT3ztDoqo4m3PEHJHiFxrms/iLJALZitybd2VAK5YSEZubB7vqEBCjUOPPNDg8v8yRJaS88z5TAObS4y6PgefmbGMEyT1eKN2UTBO1O7rMdMYQLejB5Nz4vu7nz8UQIVgp3rLIHVmY9oktXbMPw8B92CkWpTU78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764412974; c=relaxed/simple;
	bh=5gJnj6VI3BjbaCR6oVCBaFBPdJf6cQKyXu6jLaCxOes=;
	h=To:Subject:From:Message-Id:Date; b=uRsNC1yOZSukgFE3DZnOqjpqG8hnnCI86hG9HqcCDA2G9PERHJ4rlUktBMGWYIlio3ONyvHrt2qIN4Gnpvys8hbNHUQZWky5hcbCSk1ykk5VEwhZ899EwZBsAzG7c+u0X5HEjWyhB++B2G1VEEhV6C2AaxmtnV5s+dg4DssGrVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWReVoJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWReVoJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9743C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764412973;
	bh=5gJnj6VI3BjbaCR6oVCBaFBPdJf6cQKyXu6jLaCxOes=;
	h=To:Subject:From:Date:From;
	b=gWReVoJLLrfOSkLNB9h5VkrHeXLzVC9Fujer9mzj5veAmI0yHBKb9tFDaB0xLQhvk
	 ouhplxzdtSnenxzx0VZ3Z9BMhxSVxFvD/ZFvZMdEmoUgWSb8xA0AWiQbhqi9qq7fMR
	 v6ZGvfCXi89sthTPMT9//wIQnGgywzNpCtXntq9w6xgnZYCOGJppyIS64WonfQsp2a
	 r8kdDyaJTLnKwXq3aLQdcI6eBeGzXQXQ1owXqiQBlP9+vNlJ2CxgogjWj3UyAYWHLm
	 bQ/SGtw8+i1ewFv/0KLXw0apaa4E4/LipLs4tUNRGPkwuA9wl57DLHywO+O5ASYm+v
	 uT3/U7HSlseCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D2CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441297358.27175.5146543961387549064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533278cae831a7116789ebbd67879bae8391a8ca17a2e6f01cca24b6de0d2a43
Date: Sat, 29 Nov 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764412973
