Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E3E380FCC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781258794; cv=none; b=C1UJW/Qn/l8CZeX31ic+5pZRlhJJt4l1MzwzIE4k4DVJSW2ssM3t5S1CK8bAPUDWtdYVEenUA6oAKx/CzAynJLWQKpLoMpRcbDvM8B/RnCVSRK7RRNLHRWA1Z0OsnPnDCsjZxx5azwWXB3yCFYTX91TAjeBIOKs8gLL37e2kcMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781258794; c=relaxed/simple;
	bh=pc4aMJn8tvojKL4v9fP7rpyDzS4cazisGMz9OsQB4bI=;
	h=To:Subject:From:Message-Id:Date; b=dZYJXjQAbLzRJFEhIR5hnfn1jSahfDKfEGxX4ZHL69cJihNHFQVN4aUkHgZdw37stwP1AEbuXCfD4N012nvTCQtSMntjzdeh2qFbDpzTBZwK4XDm+iIZC7PzilzNR17PJBdRIawZDaudwiRb+ASLqirWXQx0m0ibMVpbC7v6T1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUPCc32L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUPCc32L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FB1C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781258793;
	bh=pc4aMJn8tvojKL4v9fP7rpyDzS4cazisGMz9OsQB4bI=;
	h=To:Subject:From:Date:From;
	b=NUPCc32LuXQ5ZNXNTyHCwX6cliE23gY/P0QXCouSZTUzyYlE0A2FGGdAj9CJoNa8V
	 IAw3dnpPvrYL0GtFvC5qF/3WOOPpZKi7ip4UTXIECZvaft0nlm3qOEZR4m+QPPza1g
	 wshrR2ArMB0jhAzoGaaoGaQV8Lo+IwmH02/Ms1uYjxjcxGUR4QTlFV0wv8CW1l3yg7
	 gBSf+5rgZhNUHCEAZj8u3Dju1mSSCn8iMYxufUSD5NCaUey6BkCvX0QkqAIG0V6MBK
	 RHhKfRzgXv59MUfn/iO7vxGW1Ukime3vCa3ZDI9rmzuy1ikJQD1cUPV0KgLXRPmk5L
	 EtHF99IiJUDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EEACD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125879368.16328.12681143485741030470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ffd2ecc057dc8c7417487e98d0f61a6f60f3ef218cd1ca53f1dba62ab8c987
Date: Fri, 12 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781258793
