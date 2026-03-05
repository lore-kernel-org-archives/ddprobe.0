Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CE63101B2
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772694894; cv=none; b=RTeW/kLmZeRF15DNgkbkYFGV+vETcNAGPr9aK++Pz7Wr8Y4wDqdwXJtHgFDuQF4s53cHhmTMTWWeGfZnzPshN+WHkAjcaK61pM0MeHesOfCi7UFU+Jkk3aIyjysgowdY/btZJb2PTCko2BxHD9la0SlIKnavE5Ufj2ax9OnaWkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772694894; c=relaxed/simple;
	bh=O5JlVPLYsKaSsm8DUfbVdA59Wb0ab2gGaaT3QfN/Cc0=;
	h=To:Subject:From:Message-Id:Date; b=ocjqurxUHGQTwWMOHRLn+iiwi0hn4yLhdHmwKPyviTjKkqEeUHXCgEx8JRGckmk5oxhleMHysnJmQY8v7mUOOV96Z0Lk22Tc65+LLxInPbjVH/gOHhiXVe0IzWpZIZssQYBzt9jNEvubEg9MJqv0hCX/UsQQS8rEWHha8cJ9ezg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROXIkcou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROXIkcou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A935BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772694893;
	bh=O5JlVPLYsKaSsm8DUfbVdA59Wb0ab2gGaaT3QfN/Cc0=;
	h=To:Subject:From:Date:From;
	b=ROXIkcouPT44xztib4JgnL4+RxNIZAfp2LxXzJPFjF+5CB2orRTSxVxhuZDRiAMTF
	 9JaP31/ESDNGOtVx3hWdsa3kRU0s7ZrKvvXNCPPPAmcJC4H+JVj/4zQWcZeudjV3PQ
	 EdslBDfrjnrkApL3dS+R4sVVtVlqGoY3cLd+av6No/x8U7za6aCgiPreZENkU+HblI
	 5NKd0MnAOMXk4hknElhohoj8IC9mGkVCrUXn0TxsVwk5iyHm8sBebLqtJfHGrECAa9
	 VoIIOPVrWjgGtivILtGKLfXrM9NQZ1Mb3RBrdqOrdqd5qG8/qizrpiQtqUpwd1YO9F
	 ns9e2rp1uSqqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A85EEF30C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269489360.18266.371604977826613425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880c1897e4b7ece5fd485395317f3deafe651e00709e0d5069675871dff26098
Date: Thu, 05 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772694893
