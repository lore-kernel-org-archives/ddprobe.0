Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54F1314A6C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767728033; cv=none; b=bvvDe7M44o3Z1At9Xxhd1i1MDJ4qydsV3AwiWxvfJam88DuNZqO166z7CfVe6laQL6t8rAdgdG4D3lkhE3HuvtoyOspEcJqk9dcwrDoG5riQpuJTdTfCwmUMewpPmghKoLitD0CiubMNUHXOk182CIttBJa5qhSFyS7XOAv4B5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767728033; c=relaxed/simple;
	bh=YiUVkSXKCBi0uLWcg2v88O+i0k5mJ+fywzDWpLZCBto=;
	h=To:Subject:From:Message-Id:Date; b=OCqm5m0h/MU8t2zFbjHgciJzt+a/0f4PJxaOW60TEGRElN9Iv8bhSf50nTYAStl99G33q5nIVnzQDVtX0lf1RelaZZVa7RzGJYAY5UeWa6ec3sYPvH8M3dGDfFt7wt1U06TApCuM2iPDAYF4rartEy5cy4LNU8e+a4Z2wkpBoRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0Lb82+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0Lb82+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0986C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767728033;
	bh=YiUVkSXKCBi0uLWcg2v88O+i0k5mJ+fywzDWpLZCBto=;
	h=To:Subject:From:Date:From;
	b=N0Lb82+2muxRKuWVuhnwMgpeNBZ3Z9SBF8Qh3gzISxPnOBWBJotiSh4ewnA2/H6AS
	 S2D/u7rVp4LQMpG648BO66NemT2l9nD+Re9bMTxyqDh2B/GyseSAeYW2HXlYzwh2T2
	 YU7Z9mBCwDq4UYO3M+6n7B1rITmmO5oCYqt9Y0qlxFj/hKQO17V2muwAC8K8pnf3mP
	 DUtZXx/UHa5KJlI+hF+NkPdSAGifyrMbh0iQbdYeucDm1wNfUgNublsuRbZGfzZTQl
	 GdnBBFwiWESbJKxCvyYke0B6r6jGRITrN12EIw+TZebS/SaKLlyJI4LsuWRc2H60/b
	 iniP1AI8QH+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F399CEFCF2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772803357.10360.4943248892959990800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfab4bf6a669cb67c2d6c76d8b0e4e36c212b4e4db4f34bdf29bf6d20ccea02
Date: Tue, 06 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767728033
