Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123BA33343B
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768884234; cv=none; b=Bsjfze9DP9bxvmBJxcVTw8eluiCIPZg1oams5Jk0tj8QX2X66DWpPwFTpwwsIAlbpaDgcub/eLqrqrUxwEI3FsSOVqHYTffOBLVc37+my0+cS2mZ8hMeoQ0X4T/TK44fcLPVqXOpngTuXazkL3v+ktpeaYHqfPPPbkStAxq3o+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768884234; c=relaxed/simple;
	bh=54GR+w7n+ukvzDmxWeITf+HCR8La8UmllTo4VsmJKKM=;
	h=To:Subject:From:Message-Id:Date; b=S6LvkufCA3zSI9kV9foHUH2d3PxIA3WdHSkxkXQcq+gJs1yJMNs5riDjEtPiu5E68hFSqO7El6jdQd821Uz/XNZIBtk5fIKAf4iTIHabihBFBbBHOl04ktlbe4zqbhNx/74rnUZbXhcSt6+M+6uIpTqHaBUbQXaMBspElh9VlWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqTzP6uv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqTzP6uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77B0C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768884233;
	bh=54GR+w7n+ukvzDmxWeITf+HCR8La8UmllTo4VsmJKKM=;
	h=To:Subject:From:Date:From;
	b=nqTzP6uvfRbYMylHmYS/xvfRYMHabAbeOE8htCifX+o3fHgsnpTDpC2aI0BDMCCAv
	 PSTxU8/BAIxPnh7PiI8WmaLz0i/OjMtCbMCnQZiw9s+I96ZQrpxfK3yil33E2DJgJk
	 qQm7V6S7nYis/viN57t7pP2AwGgV1e2R8lARHqIw/hqCFSXk8rdlagJNxPamXHXF5p
	 8NPO4jA87LAxkT7LtXp/l7QCs2EKkdHq68gt8xAzWX3DDygbTiyn8/bJaSy8zrXtJf
	 SEwT3KNtEjXADAPY50DFd5gr9b/GAC5DlPQ+iNy+ulLMR7MZwc7fW/yluAW3m7mq0K
	 kIZNM7+9oi9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92978D2ED11
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888423358.28865.708885280254359939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e6b3fb51a420a30d3a262a940603234f454a3073f5c61a1b31350e6b23da8b
Date: Tue, 20 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768884233
