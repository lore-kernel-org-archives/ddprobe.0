Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3298837F8C9
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768237434; cv=none; b=E7rNTp3TeA23oz4e2m3YyCbCf193LbhrJapFSEKkcjrZ2iDkqqsYQxrFFLhbNHlOSbVfC/rc844CyEk+4gAq6y4oB1acerRjFXFxqkFlODYioqzrf7TnY5K+g+cX0ci7huk9CP575atiKTEsxi+yH4DjhT3UmZS+97nwiPUS10o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768237434; c=relaxed/simple;
	bh=y8a1fQUUs2MawgamDubUHsD4nBz0OwN4P3X+IeI3H8M=;
	h=To:Subject:From:Message-Id:Date; b=jQpOM9qJTy6mzvzVRVcxSMwdYz7vJ5l0G4XThomUBr17LzbEKpS5aluKVLYsxlg+KnnJXl4Ok0XK4Ombyvo8xzgj69NwEB0q/b810D+HEmf/NfozRTljWjkMY/zdlmkR1uSg0qDZgVp9ymvkXiYXk11psHJluG6QbAY8XOrsZPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ce2uboCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce2uboCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F72C19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768237433;
	bh=y8a1fQUUs2MawgamDubUHsD4nBz0OwN4P3X+IeI3H8M=;
	h=To:Subject:From:Date:From;
	b=Ce2uboCm5ONdp9wz60Oa7TzRCERrA6aUtrEu6UVijumr1RummlvjLzJu0ooldALNT
	 uh6ZA15aIvx26Gbj+C678gLZPIh2Zox5XX5iGxFzqqInkAoDk4D4DBTbc6we2fPDxW
	 qyWdlawf/uJZyel47tD8b3TNRuugcM2+z84yWAikcsj3fAbqbpPSZ8Ex1gDB6GdZIJ
	 ytDZD4mIlPHrpDcShKoMo9LXiKcOdWTBEk4rnT45c+84D1IgeH5Luw7f9rIABP2E27
	 tiYfD6ujx/Gw8PtdWJlfHySqNKVpwE1MshmbaHFwWGDKCReCzpU873bbRyM+JAg4Jc
	 1fJOJ1bZjVRPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94493CF45AE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823743359.8143.6282338867049788703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e25c31182cae3e4525134dd4246e0d40105c0f04776ad1630ac782901549473
Date: Mon, 12 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768237433
