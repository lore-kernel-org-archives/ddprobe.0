Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2B5470E8E
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788346235; cv=none; b=ZfbRFd4e5bkB0SP4fK8mlvKa0jDb0QXthYIbiq9WJFoWgW8xCWH7q6D3NpuzhAhwwbNhbWj1yUSwTlmSO8LtXOQeaIHPM5M+mOSH54+kFSrE7HpCCd3dtuhMe8yYCeY22//LXWHjewDkjcztpxffxGZvixj+0OKda0cxECrUCSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788346235; c=relaxed/simple;
	bh=8wawY3ICtNe/xDcLY/yR5utIeDQNhTrJ1KZpE2ceDOM=;
	h=To:Subject:From:Message-Id:Date; b=ffJCtxbkk1dHGSyQ/xWUAtpQjL6+l5+VKKNuKYIumZwgbj7vNsvPslI0xoIprpH1JVdeMvuzdqujVno+hFnJjOuqjnqMYcczAUvwRVqS4txujCtmuU2KVzojXVhkRiUHgeWNCqinNPfPoF2tw7BHmXoJv8s68CbGg9To73IIsxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irgJOH/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irgJOH/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE51C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788346233;
	bh=8wawY3ICtNe/xDcLY/yR5utIeDQNhTrJ1KZpE2ceDOM=;
	h=To:Subject:From:Date:From;
	b=irgJOH/hNCtw+fAArVMDUkHB9u46n8RP0MHfDIu0xWW/dJnkefAcUCKAlQ9DQXntr
	 9glTkx6CTJ6UyKbW6cpNXUMbQ3dYbf5eabFG+GOfuoi6lFOimLOlvIOFhq6tLKJyMb
	 chNuPmOPq9c95I8lR+r5KRMo42S/dxZCETqw4qh+iPZrMWA3Rzv9HqwimpT2w04e8i
	 /XkUxT+PVFWSc7h8AHlbMf5nSucFCs3M3uTxvJbP7IE9KoNf822Yr4Ag7sFDVB17Ra
	 I7pf8i+9p6PnDN6pB0yB7Go1roSlcLXLN0cBzdXhk8xvjCf6WWfAE/6Jxi6mrWf+zu
	 muFUKIRLUjabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA6C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834623368.16959.1384588696756700920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ed6d216f74dbf47213a803ff5f33c7b69b8fd649d6b8f93f1d7466fe3d44fc
Date: Wed, 02 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788346233
