Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD213081A9
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756720793; cv=none; b=hUZjFx5XnGMBcyvspLUg5kAxRuGYHqqYb+7enJiOiJtaGWe6JiaI3rmg3eQUCyJc5aeaVmzYThDiC1/trhaTj6U+JGW8DsFfSggVznULG4NkEoVNiGJCFt28BqQ5efpaay1KmqHILLVT1Hf6XEi3D7VU4hV+15Q9if9h/rvPgwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756720793; c=relaxed/simple;
	bh=a7bB0DWb6fVY8cs99dgYxPJm7qQmxBdaTiMhRb7ViKA=;
	h=To:Subject:From:Message-Id:Date; b=nj6RhrcNKpa+dX0SZy+IA+8kH6CpMrqdMPezCFmCm84xIA+qIs7lW59nxGbdySXDLHuVUhn9aL7fpdIdjJhIRd0EN3k25osmABwfNLdqL6ANi0CMYiegkfVKIGpIrWFaqOOsbDmijPYJtFo7yaviiB8+wDcT2LyyS1hMrsc10wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2uCpLGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2uCpLGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C251C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756720793;
	bh=a7bB0DWb6fVY8cs99dgYxPJm7qQmxBdaTiMhRb7ViKA=;
	h=To:Subject:From:Date:From;
	b=k2uCpLGKHwDhMe63Z+hCb0Ph7XFyBWXy6ZtGHsfVvWTZQGOdg0rg3ijVI78XQmwgR
	 Gf5wkb4emQTw5+FMZSdCwlfK0FsL9ZrsxVZyPCuCh9eJ2V+nFUp8pfKzB6kNxEh8/r
	 ahM3zk5CHkDKJGlLF/qFHteu4VugxMUSWbWTnfqHP/181ed47A95dgP4ZMSrZP366L
	 lU7EEzTM6ESDShIZ6wwcDXK77aEAa7rl+7QRy5z34w9LxYEWFip8b6xH/wEBLg0dMd
	 A9KfS67XY5ubtAnKzrY7D43j45pC9+bZzFkTTsrqkQXUYiqwE21Vqnom9IPzlmvulH
	 h2K5P+ebl5y+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A5CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672079357.2795.4788708169929180403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75de5014f54f53abcccb25df3c167e1dc52f9540bfe83fd367809381f172c1ad
Date: Mon, 01 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756720793
