Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94C52E9ECA
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764064373; cv=none; b=mvWiLA7olMbxaJ5UaV6TixnI/5s0ZDFfGYnD7Ld9r0CL9DNcw3rGoXG5pSE97wqUA9KcJoX5YqZ+RshsW17bQaLUaGHuT2zZGZYk9kwu3SXNr4rYrPwyMU5sECbevuuph3c2LjwdO4egFjr5eirNvP0mZlnibl9ETlae/BXfdUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764064373; c=relaxed/simple;
	bh=Q2eDhJTJShZzq3wBZm7WKkxApJ5Ok7OjtJyPL7RCql4=;
	h=To:Subject:From:Message-Id:Date; b=Hw6fwoE8kWjan8rDLU9rgvXVRqj4M4YF/5O44D0RneMKT4t5eIuoehg/e/P8L7R88I5P+ZjCHpouzWgMNsIUW28SWuuShhXZvPeR17xsuLZLyrMMAjw/ZX2fI+Dca7FMx3Cd4K/Y02x9vNd5bCodSGC95JuxCLVX7le7TmoCpWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwN3K6mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwN3K6mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E67C116D0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764064373;
	bh=Q2eDhJTJShZzq3wBZm7WKkxApJ5Ok7OjtJyPL7RCql4=;
	h=To:Subject:From:Date:From;
	b=AwN3K6mxx1pc7GVJwTmJNA+tnd2sGJfrTcB1Xt5d3Xc6GgFCwTGzfhHJ30fOPyn0q
	 0ta7p5P32uaujBYaPcMjbmQ/VSoDS1/KlzF/fjFFrGjMhEtJlKeybepB9LuNr9ZpBm
	 2pUMHcHx5b7ex9OOp0Tj2ycQMQyDYI6orfUolwgpbE1XiXBlJ3z6E7w+sMikWlN65z
	 FK2nNqFOFXFxXqWZYgfcvkZu9bK5ztfhTyZymmQHzQHZBtB8iKJWT1WypfksinU5AM
	 8fGSGkEw3avafPAB2QibUj1avWJNP0PZ1u2lxtkdODH1xk4TIKWbvx14QORVmrqcUV
	 lcoPAXflEGiqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F9CFD37A
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406437358.7125.4031680894003401835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5082d3f9b39b2099d75d538b72130bccc5f1a97130d7a95d6acbd385d93ff7e2
Date: Tue, 25 Nov 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764064373
