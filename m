Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5C6322E
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746900594; cv=none; b=pIM67Bb5Ka0AUcrJ1ENotop1uWoBr6tEDfdYJN490vTS8c8YjdsE/T3TYICq/Hq+btOFGEMOUxvqkOcTBPcxl1bd5LCQ6RW5Yv4vIqWHNP8Gbn9s4/gBvxlw6QERF/JwmtpD6NAkwg5kwgr18YAVHI2LBJ2+KnSkxhKJ/cXbEzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746900594; c=relaxed/simple;
	bh=VVFUylemzFEFlgMp/dAiaTcf//DmEoH3ybEpqDi8LLE=;
	h=To:Subject:From:Message-Id:Date; b=RtmJ4c4EGlDAp/DNZ9uJtv4hhxZAER2Uh2pTmDnbyZqImtSOJTNZ9AnXCJoQtPQaDrk6XZAlqZ49mUoEhhVsM5Zl0nBMu9C9k7HNEkMm+jIVZjRSm6afCHdpqwnv10adH8RL/2REbPvSFC8stuZhKdh4IZi3ZEw9MILs3Egl+kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQKq4yDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQKq4yDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9668C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746900593;
	bh=VVFUylemzFEFlgMp/dAiaTcf//DmEoH3ybEpqDi8LLE=;
	h=To:Subject:From:Date:From;
	b=LQKq4yDMXl00H7FixpxbZEsIV4dZPVOXX3dQpim6OWl2oFV4zCXTP1WcMlQ7I3YjK
	 jjUJohkAphf+pELA4UXGdbIyRiEPTfBkRG11kMiHqFdozDdRdW0CahsquWb9cyzdyN
	 poBB1QySaq+dkMLadNnp5fUD/pTR53TUGJMHw2OiywekkPBv9PcCI6tLXhEXCKTCDt
	 5OXbwCh9P7eCMe5xzjloLEdU9TxQ5dg8TCQcdu8ic3e5k4DMwT1WrfGeJZZdGQgM+s
	 gL3t7kayyfPHHXRj59x/RQk+HQ00ygszMsIeA3zJwcqtUrMwTGdyGQhtHYzOIC4RL8
	 2VvXRRnblLO0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490DC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690059357.27837.915788662745176091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c09bc9093d3ba4584ea32df2ac33db8e2a7a6084a49a6b8969dd93569e9da2d
Date: Sat, 10 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746900593
