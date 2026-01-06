Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E9A2AD16
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767662634; cv=none; b=HeaczL3grSQm/6TqnT8QpncXM3c0xZwQ7DCaPy3kZ/tqiYGjuGLRX1UhdVZhu196gyUSJflzNhJh/TV6MwUIf61xyCEUBBzakNzTl3Bh9I5DTb3RufROZ0GvKLK5ZEXe1dURGOO914a+VA+8K1+bKC5ROgZnjl9WFM7k80S8Ymg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767662634; c=relaxed/simple;
	bh=wJPZ8a4hpSkggrcNd3w4g9EEsNsLmKBEQGrSmaU4cIc=;
	h=To:Subject:From:Message-Id:Date; b=FC5k8Tk7RbsAE11DysNF2fYdnrR/X1sd9u7ZSYjzUNi/OCKqEm3nKroXHI5POj6ZCAF6GgOysJFGRjuLX6BBs0kofPuukkUXd0sQk/QzvHk82czo3fRT/1/J31Caawn440/J4i2hhJxjaA3b9SJ7nL7GKTFoq5uxgiKTIszoi/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc7OLy54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc7OLy54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2087C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767662633;
	bh=wJPZ8a4hpSkggrcNd3w4g9EEsNsLmKBEQGrSmaU4cIc=;
	h=To:Subject:From:Date:From;
	b=Tc7OLy54yxSgG/1pYkQ9TYNAeLjAalHKd9Pm8kzI+D4NGQhY18u1LkUlJDHHz2UqX
	 wtR32pOb7pqEYKHZSWVRE47Wslk5Q0fV+JP8+d0QtdNA/BGrz1yTIEXZcQ+eOuMqoQ
	 NP7Nw50FMRbMBXFWR/hsJNDEeHO/kg0r8dTmzgRflBYTHUvOt0+nUxUWNx7YUQwWtG
	 KcStt24Gm9Z5Y1eX+vgz49sHf4BgvhBNc+5Di7x2vKABoBa5flKZCw/I+dWBzS0VMX
	 VEAv+rmwPkmtQPWjGlhm3QswVhXAF446f+8Mle1LWe3Y+I4khJBE8fm9x1VbEeKW2s
	 82M8H36lLFx4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF59CD042B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766263357.14556.15417806078877071944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a85b3aeed7a34236bfdb14c6160d8dbd31642b5bd72439a0116dc0e001dca0d
Date: Tue, 06 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767662633
