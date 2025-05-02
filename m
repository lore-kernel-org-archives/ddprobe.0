Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394D535950
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746151794; cv=none; b=cZeflGKmgLS6vQA8qsLJLxvRbq5WSytAhtG437Xkb0x0T11AupId5KmUuJPCMCfTShuoY+o9qUOzr7MOcD46r1r1GoNdk5qPBghrlUVrn6W0lK2Ry5gDbMc1xWJrSN//wpEFVG9yvNZaH6N0/BvQJO1DS45uWq0SFfNz3x3bk+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746151794; c=relaxed/simple;
	bh=KjehnpleaB2/xx0L9i9yInPpFT19dK/DZFwKOycBazI=;
	h=To:Subject:From:Message-Id:Date; b=Oslun7Kj49fj0qulOkOmnPsLF+oaSsDJLfHNnQWq44Gj/qkY5ft0Rfz5xh0ESDw5ubiixH3IU1yDP0spfn9pbPLPbiEabTaMaLvAWlMtFZvQaQWrWUiKxeMzR4cJp8A7w9oE70DM50gAabfUFLsnslwyogBKe1oHbO5FRdqm86Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwasCxrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwasCxrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746151793;
	bh=KjehnpleaB2/xx0L9i9yInPpFT19dK/DZFwKOycBazI=;
	h=To:Subject:From:Date:From;
	b=kwasCxrc/DkW3IkcYgeNCmseLXjNgfEgflIAcuSC7Myb9PQuGPOmICZZ5Xk6x9Cfx
	 /JxbQVTXtpDk7BriWbmWMVwSm18VWgyK+QCD1hQzfvLD9v4rOhCVJD1FGEcdY2qCmA
	 pqrFlXfvX6IgZttY3mWVzAFrLtuQeGrQH/moZ0d5n6Fm4BEU/JIVXs05Z7FJeWbM9F
	 tIPYoz1/aAx6b49BWDkoI5+6aES33qlxosOAQRow/GmH5+t+wjdBWin+ImDugxi8+n
	 cvEUnfWhqwUmVjQXW8lTRZEvq+XMiK/ZNjkJq0K1jO/bVxhDrwSw8Nad7hILZIuMhi
	 A8Le+qFIllDCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BBAC369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615179357.22561.9858334346824806913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92902d3dbdfc404e05690bb49f5c5364377b59d8259a6b382f216986559b8ce4
Date: Fri, 02 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746151793
