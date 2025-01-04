Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FFA4683
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735985154; cv=none; b=XZXaLrEqxkw8aIHS1m891l9r9n55TgFWf5o1N0vj7vZAxy+24wbr/I7ssM5trTABk1Rs5xzSzO0qhf45/3AfZQunI2a7WFa7JF6d5aEU2U2Ll6yN3GixmK7N34MV7Q2MUDTgLz5n47RYEZkLUn5jlT9ei/xI7DakFwNndkgxTH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735985154; c=relaxed/simple;
	bh=l7GXk2AFfuVUwpvTNL1TeqnYCL2sAZ/e/2pRIzIRWoQ=;
	h=To:Subject:From:Message-Id:Date; b=XVdyQieNb9wH+2uFkKT2nucTLW1H9MWLXSqbzxdN+Z4s99iTzGNtRWFaj/UAiYgXA2l0NJHl2LKtf7VgqypFEWL8SRT21By95trfaKllhmRASdH85xLQl/EcbrLLoUHn3f1kMLoefGcCIJofnm9Vs+DQSNrWgjAHKF4kXHl8v3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSKS8ohb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSKS8ohb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE61C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735985153;
	bh=l7GXk2AFfuVUwpvTNL1TeqnYCL2sAZ/e/2pRIzIRWoQ=;
	h=To:Subject:From:Date:From;
	b=oSKS8ohbSzfQknkQJwqtwvDCjslGnMCA1QFKSk1kD83WZvpegk4/tOg7SWlaxX315
	 qwlaL6JUil9sdetmspDzOXQYYUQTnEb9KFx2MC6ii7RVsO6U12VcOeEpzYfT2SnaZ5
	 Y5fk7Iklg4HrH08waww7JvCQjYDLqpIlSdoCBo8TBUopgFHluBYxYYqIoNG79/D/bE
	 E4AsHzZPAdfdS+6GX+3XS9XihDLT4hqs8MCv1QoR1JGkX9m4e+l92nBCtwT0aus893
	 ExPiK67jndosyO8d/SdUnFZSHwZwpIEpl4zrWqcw3kYs/Ib9wOJUgSsfV/XxBmR9Ze
	 QeOTX508Jswfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B9FE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598515360.9271.4565814784461778068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a6c2a032a4570af2192d47031b5209599b0f72dd0fe9fd13e440817baa3004
Date: Sat, 04 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735985153
