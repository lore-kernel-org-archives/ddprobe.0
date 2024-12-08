Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CFD211C
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733685954; cv=none; b=NalvKPFObed/aIw6OQB+L8fXyZNbzm+5Nsdi1if+Oa/fsmhuG/tNusqveJefoEqTbrgLhfC1kAN/URr2zX2KmRJ1QyIeFnNMEuGeCIM32fKgmfLRsADoGgwvwoD7fvJiZt8frSasmtA/wccAjGRTz1UN0TdKpnsWALvoVXnX/JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733685954; c=relaxed/simple;
	bh=cHi+IDJkuxDzbXoZJh8oHOyiLBv0tnkdiQFoH+XGV4g=;
	h=To:Subject:From:Message-Id:Date; b=Z7mQqmuoCfwqFtruJdeEfTHklsUM13gsXvqVKXgylgkl2PPA0rMQZ5UcuZkVd3LUK6gE0R0fuoHDPenF5XkaP5A7IcljHD5mwjClKeCTIOdAD+DAi8h7krUpZ3Ed/HRMgYaN2eYRlhb7P31/36UZ2qmRskLEFtg9GB5cG08eKQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lzpu6dY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lzpu6dY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9195C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733685953;
	bh=cHi+IDJkuxDzbXoZJh8oHOyiLBv0tnkdiQFoH+XGV4g=;
	h=To:Subject:From:Date:From;
	b=Lzpu6dY/h81Vonj5XtPhCtjIeqCrk47EUAo5KWY+6egxD7E3TGRKOYNXJ1bpLpyAo
	 XtcMjMKTJYwDP9V+tPLMamxmnB+Z6dGHf08i8094KbZOkz3gsINuoPvrhqJd0Ho+6a
	 0sWn9/019fTdtT9waf7FrHU9nMt30os073nUHK15Jwbkf7E6IjsdMGE7TJUsHLEaMZ
	 Eya3OyAz6CjCsV5SsD0T3Na1uAyzf4Whsf48Ikx+EUtnkm1+A2vs9VGTkoeuKxJA0W
	 jybrOMl/zLgZR2ZZx6+qmyLDIEBJ8uD9b09ipZ9tc3FPortt+xM2igiSRl6J5cA6eo
	 5CSCIu8nw9J3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BFFE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173368595358.24083.2293074225694605167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d20acb9b3098f169dedaf1835d7930783108b71863d612f61f95e935e02e639
Date: Sun, 08 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733685953
