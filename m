Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DF02E0B5C
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789850434; cv=none; b=ggCijWC8OHyRPy+L++QjxkKsnotiqiSYxvFEEctbkc3hGId8p8dMKQ0lLz66lwikgqyE5CM6j3/RXTofSopHR4buorQ5SdrCK3xDcEllmJINHemggjYbuHivoE7CtQemy6RVerjfG5iKqGRahZcGmvnaV2zaFvBizszkGIaApgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789850434; c=relaxed/simple;
	bh=NLmmv9FmV2ZwT8Ir24M32xXw8EVs0vgyRhkK9Zn3fMQ=;
	h=To:Subject:From:Message-Id:Date; b=XAlaBcei0aq77TqJsEUlavimKCnv8C4YvwuF1klxcVhvO4IzBtK0khFe1cFArfX/AieZVEEQhnOpNvcOUw9U4HX0dCqLvsqObwz1QstpIJgw14OXvdyFReaLDaoBYjjQz/adTEqQeNE+hMfKwDKc8xoCaa+nszw14reBG9Zff/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m89NhWjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m89NhWjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1794C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789850433;
	bh=NLmmv9FmV2ZwT8Ir24M32xXw8EVs0vgyRhkK9Zn3fMQ=;
	h=To:Subject:From:Date:From;
	b=m89NhWjOaRQvxkGoakdlvkDPMB1pXJsVHae9ECkP7Wd/gnNQdIqWzxvlf/zzssS1k
	 2VLE0gQtAbPx8hbejIlvMdqJsdzyBva9Vsn7NRWW/yJDeUxG3ZgXfwTMd6ral1zq9B
	 ZqSWFpOnRmIyFeZnmjfETGCfFb2fqLtSbDmhUa29dp+DDnpR9HfWqbdMSj2eSTWKRX
	 LIsIYGXqp6q2WrzukQdbuwREhs0yZR5E5ObDzifmZBKj1Bpo7XI6H6yT2mj6Uf5yVB
	 JVcj+tRMgIbIdc8JJPADge6f837bTtbDFUYEIVEH30164LsZebnf6iX1HVfa766/nf
	 otMr/cEDKVJGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0299C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985043368.11280.6153109860470797536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428aad238de25263322e15f349ac238db73312926cabb043dfee3f5e607f5be3
Date: Sat, 19 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789850433
