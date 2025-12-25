Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4FC1DF736
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766697234; cv=none; b=l6FTKJbANiIMcpIPO1jNoCGsSg0nGI5hPeVidc8HbforJGKPMi8c01Cf9CD8tjpZh/SOdVLviF6efWAErB0mu7V0yUuPUJS/mBw8SsbBjY3WsmSOhjykQTwjE89tcahVQMOiQ4+1voH2GYWf7vneEgqUvDiYGVUWP1kSpGfVOCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766697234; c=relaxed/simple;
	bh=jkDcYbYbPVFdK8c4RCQpEyORMEDWOg2J9rsgqrbx5R8=;
	h=To:Subject:From:Message-Id:Date; b=vClXZQm8Ax9vULotR0BW5kNsYlzYWGdb7VESaBGnGFgBYIctqG/9lUvU8VjHi4286Ua+Kl3q8u9aa2ikoaVthAf/c7ii3q1zSvr/lR5bZDOtnN82dZ/gXeeZ3EP63KXGq6tBov1kamZJ6XTvupSTsPhU5kIJu1jnrPiTCk4Gpq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxw7vahe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxw7vahe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF60C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766697233;
	bh=jkDcYbYbPVFdK8c4RCQpEyORMEDWOg2J9rsgqrbx5R8=;
	h=To:Subject:From:Date:From;
	b=pxw7vahe3R1OrGGKliBAth5IvzB2wv+POalhuDW/PKdbYDqOrVk7U9t442E8V5NVw
	 6LwhVl8JSQG0RT+W4YpTfhQKWq6R0XDbuNbqZMfxbI5JAp5Ncj662B2LTJdlf+a26X
	 WrwKWxx6iW3woXyQnUAcfJghoVfc+wcBSipHQMbb4D3aCqX7FgVZm2ViUJLmqpD0fh
	 Q/hbMpO0YW82iZqt6fKPpNXpms2l/4Gc3vPW5ko5ORQlwDlMaVJPIVqqnK09QPnKAw
	 65mOz+eEUIlFkxqizLfFVBY20yYNGq2Z65PMbntI6wTlhlpB6KCYkWVYlgKhdVnULH
	 UyX9aWDP2q8SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978CCE7AD6C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669723358.3416.15310770070789161278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6075de3b73f46171908abc41a84bad10b6454b0988a81a89de00e2754feb5026
Date: Thu, 25 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766697233
