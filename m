Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00ABC44A717
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768933434; cv=none; b=ARl/CR/7BVvSCxLFDxctSH/k0A3huHbtiZYJ2WyS82/DAIRtbQYIDqmqQp6D+vd7KXgToJ8vkp5RwxjzFD5g+lG6ie3PZLw4OCO/RsXdWrs6wemY9pLpPNLMkybxPnp0sj3OjJ/Asei9a9P4kaQG2kmpc9lzDpUJ8b6AFhjAsdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768933434; c=relaxed/simple;
	bh=lzW6QS2Dqn0l/WdrsbIX9s1zQA8JKwQlizQmh2lo9fg=;
	h=To:Subject:From:Message-Id:Date; b=d7ieOxa9vV6jeHo4jEzrOwxesJgCQN3dsgcL6LHPU6ClMA+s2VgY9BJ511pLmM3yS4G2CdDBOo7BvhkKAA4UwVsFsPGBrkmmV6S/sFYHWA9AHjG+6KVAPPeXX/O+1TGxmOoFdTbRifjys9YbZFl05tNZ9A6eeo131F1q1zcCe20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hU3cKuiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hU3cKuiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D854C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768933433;
	bh=lzW6QS2Dqn0l/WdrsbIX9s1zQA8JKwQlizQmh2lo9fg=;
	h=To:Subject:From:Date:From;
	b=hU3cKuiqwdOMLHKOZZVG1qgFKRxf5/ryOdzOQjXMe4gju4vD05e9O3AnqKk1xkQTO
	 x7kLOnNIHY6nlJ+BpeTqsgrNzFzHsNW7iouPz9sFthQsauFbrPIaSW3VrTBbYgUZ4Z
	 k/eDqF/7GnGkrcCQJHNgRZHQ9WdX/erTxyOepokhu35A3kJsnZ00Q36eaJFNKYIw3S
	 4k9lFH4MANDeNq9leqnxtpEVTUjDBC86g/89riB+t3XpdxKt+mPgl+MCYj0W4/rMMg
	 1dWXFJlyPuK5J9WhlgI03TnONvyKhmb7b0Nkqa8XN5NP7dfIGg6X0dDqeScd1MfALC
	 zJUVDijczPKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA07CA5FD7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893343358.10860.3481783992878124386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd6cd26908e1b7dd38d8b6dc1e4891626488f53a386d1a3316ec06274b516af
Date: Tue, 20 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768933433
