Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037DF17B51F
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712769497; cv=none; b=L8PM1bKbwNfw3N35c+5fLrFRdrFlJy9F7X6fnrVmyno9i8ER+euNUdB2zafocda0QMtkLFwhoLXRpoAVsNQYUASIAZlkHfeGKF5vGwvP1lf23Se4B8DXIL9tgvis73tOK4f8PIuzujDeIFuznL4w/GyFprby6myVCpILHvHdC+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712769497; c=relaxed/simple;
	bh=gzTmzm48fIT8gu8twh6/DHqxDe73P1vxLe0EXVAAljA=;
	h=To:Subject:From:Message-Id:Date; b=ojMo5NMApjRpdlzlEXOYfLTfgLQUDco7rv+yaxqPB5zl8lhjJR0nR3/hTuGksKhEhrrEsbuTZBJHoPlK5Db5ueoW8oJjJ867M6pdiJ/7UhiQK24Q9DtbaVXjj6SVhgsimHIpZJJqmAnwLHOc9bvXJbNdLYHmL87zHbVe4M7RK7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIZKZsd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIZKZsd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D0EC43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712769496;
	bh=gzTmzm48fIT8gu8twh6/DHqxDe73P1vxLe0EXVAAljA=;
	h=To:Subject:From:Date:From;
	b=LIZKZsd4quskriUnZ4paxLSrC/5HdWbFUdLd55z/M6Bs0t6gMj6wDkDX52GQLhnTq
	 nxANAjlh+Kml0mlRLl4rOea5vmEHjh2wCot0BG16dfeZOp9O+9sfY7Y+DEGYVjvGJ9
	 Y65W/BclMtPIhlhqTQdgHfYYvSjGmR0pE55smQ78z7WlKXIH5MvQzlpcYKhyRXgJEM
	 W9fys3lbboqa/3sdmMK3WeT0rjUsusLpN60BAyxfvquh0HNjrf3KDfkX9gA3rpiqSn
	 NDSwbmJaHcQwUJtqZSE6lCXA6VybHPT/GoFMg0H0kgjiOZO50IkO31Uc7TnSWWNGVu
	 l+/t5qTOh6SXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77DD7CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171276949647.23742.17408556331908255882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8664b78b40eb59792f8f305623648e7183aa99af4147a28a1083e09a19046f7
Date: Wed, 10 Apr 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712769496
