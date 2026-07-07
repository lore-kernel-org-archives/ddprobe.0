Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB9336E48E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783400314; cv=none; b=XKnBMRNQhHOtJzBrvoC70GGThb1YrS6KF4Z88puzwKGYTU/OLcY+21+07/Kj+xexdVs03BaQuY0jEZKDO4sjYJ8Oa128JdcFI/p66+l/H/STwa//M1bUMFBtvjsT/5BrNish1Wt8FeC3Rqa0UMAYfnaLeK+pUyhboKaTYXryiO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783400314; c=relaxed/simple;
	bh=NSpC7cWYApvZMPGWQXNNq6JL2bN1gDtOC0Djb/QmzwA=;
	h=To:Subject:From:Message-Id:Date; b=bCsxcI+fvUh8QAPumo32RVRsQkguy2V6mpng0KBN/7GDJSm/3eUJkrapSk0do5Iv7Ft0e7MZtKgENKpKJvnBtaJdiEZJVjOyud7Z1RF5pqNLYlaepcCyk7BqXPe/5NMH79j1WQHa8DJqElUOvIbg+AlimoIwZncZZNV7lZK6afg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCGNNwMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCGNNwMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6FEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783400313;
	bh=NSpC7cWYApvZMPGWQXNNq6JL2bN1gDtOC0Djb/QmzwA=;
	h=To:Subject:From:Date:From;
	b=UCGNNwMPKkPNsdcjU0L5uVdi64sZO2fI/H6YVWWsPGDd7mr8waFLi/oihfA8A2D2P
	 JIgQ+JeIshtLcXQVJF0H/9dbHtssYQ1kmLbMFj5ec4KW5KKPu5U8jIZhB7EXLiSvy/
	 /gA/YrLRAs9qA3IDSfXe8PXXdv6FVszJ7pFVM/Vxm5nfMOuMcNPTy2ExhJZOChX9ki
	 +sWxZv1JKPl/GzpCFGf3fv1sfshaucWW282s1+5S297r7qEGmeFht4K2VK/6KoqqDa
	 wDT6TLn1sEZXiCGEA5k2A3M7n3uUQQ8HnR6MYzO5c/FA0ggpcHYxWk2TopVVNoUDya
	 hcHNXTfQT/fAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9354C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340031368.1765.727981881952041577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e3a6d0cfdd05ac6b95e8e183d32ee3de17148f70cb3d03717c7f8260cd3311
Date: Tue, 07 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783400313
