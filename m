Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F552248BF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747634996; cv=none; b=EuyHYI+7+4nbrdkzJHfQz5cs16pGEfmJPU/wRxxy6TtiCg84cmEwgkpr9hzWFa8HED6Af+0uTpEPBdPblqSCx675sMSHUIdB4ITfCft5fYJq5qqRjXjps23Lyrz9UcH6gHaxlfpq6VXW5aLiYWFDGo1Mw776Fq7lBP2mtmoivgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747634996; c=relaxed/simple;
	bh=1xNta+gxbgwRaHh1P5IrYnZVmkaB5ezph9RpZqZ0Wiw=;
	h=To:Subject:From:Message-Id:Date; b=i2xLer3oVcpb0CXp9U2UDAawdncASOqIYzMH6bifGbogdqH1OTfOVnNcCLigXNw7FhGwt3k1Iidm/HCu0+SLWJCRmDudn5jRioK4f9RLppIq/u9e/rpCvAoWQSzLn33khOrrs9ZjRbrx2JHMIUL2jidRzegyXYB6w/5K+9QqWo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOeVksUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOeVksUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4F9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747634994;
	bh=1xNta+gxbgwRaHh1P5IrYnZVmkaB5ezph9RpZqZ0Wiw=;
	h=To:Subject:From:Date:From;
	b=IOeVksUx5yzoe/YQqFHyR/6/i67AlrWJnMVGPmXoBBNUklZKt0WUlLL3dvS+Vqma1
	 L2buOB00na3VpgYapeZxlkbyr93kU6xtR/Lk14C1NAPTUC+Fy1+oXoUQFM9PjC77EV
	 FPHAf9yIqwm0eHdFGgMVqevOJ5lYQfg3WgsbCpSSWDdrZx6iEeYwd4JK2RZjFDt8og
	 tDMWMi0pySQaYs2ANUzGEdBDc8rDozr2/9KYJAwuDbprXi6FH8YhUBkI85TsxOHok3
	 x/ZopmwtMhy9ngtDbvvjT7dqk/NjMgpxvnlpJZ7wchTVMHrksi2hd5afW1wZI+axJ6
	 aix+XYuW4qsxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF7DC3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763499357.22093.2334365133910805540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc8beab5a9a6bb9547bd3c9e8a4d287de80aae56a00645b2fdc6b97ac5b14c5
Date: Mon, 19 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747634993
