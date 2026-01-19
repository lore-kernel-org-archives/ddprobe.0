Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE0723370F
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768858433; cv=none; b=qSMKltRz+cktTMI6jGMucLYjByYZJPE9iMnqAZZ+SGJ66kK1KUBoBw1LWhpbriAQJWBAzPxTLyGKeuEqPAtFd8X0MlZuFZ79NxOe0hwYLpaiwLm3ryluXfGJNv9jshHUm5+gToDfEXsuPB8FzV8oRzt5FY/jEXlUhN/vdbrPRg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768858433; c=relaxed/simple;
	bh=V59W2cqtwxNnBc/ZtGYNytYgaq/DlcZcZ6MMPWZ7oaw=;
	h=To:Subject:From:Message-Id:Date; b=MrZeBdjonO/bgsTQP8g9PMwFdyf0LPptwXKWQN+hc3eG43Lxd+648OH0mIrYD8EMb7eQ/TW6ff1P8QF/aAfaXMUOUjDhFHA2IUjCJKt9PflYjtFpk/ITxkUvdmefzfPGEIZpCmiYLw6QJNHabzIKcQXfUFS8a8oSsC8UkNaVijo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDewfQ95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDewfQ95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0634C19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768858433;
	bh=V59W2cqtwxNnBc/ZtGYNytYgaq/DlcZcZ6MMPWZ7oaw=;
	h=To:Subject:From:Date:From;
	b=ZDewfQ95ZLA94gSjl5yX4Weg1tUQkwdgMdMNYDxnGjtQ7Ior2UYTBXclyPEIp12zE
	 /UxbuNIJwDbPyaV59uun8n/i5FppLvqHDS98yWW2AjWGyJfL3X+StEiq8/b9cmMgsI
	 exa5Vy8C14EYxL7WSZpCOmx0Dg6Th+FKkNNsFgoC0jQvSr5GboCcx3+gJZVBMbuPwC
	 Jjr9saiTO459MeLQxDrY6PGbxmdcL43Fqn30mW3QpLuKQLo62V/0Z80KYOHhYjQk/S
	 JCJWJ+Rcoiak9XyErYc34iOnT+pQdHkroNtwrayM0N28NUB45pNv68uffoGF5FZH38
	 /JLL5lb+t7cJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FED2ECEB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885843358.16573.10515796388089180942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7845aaa2fedcee53a996114d8920d2becc9c9a23d7ed6b94697e8d72e68baff5
Date: Mon, 19 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768858433
