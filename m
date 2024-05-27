Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E56FBEF
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716790463; cv=none; b=Jr2Jsgnb6E6m5o5RUQ/Wargp0NdbpkQ/UfAvgEm4/q3scM9PQnPJT5+543qO/DHWRHrGdMtNzc2IryAyoY9t5IiO8zYDBuPonc1mPr9Rx3xgct8STOLWZ+E+/FRtMJT52tIDlL6n/LU3fX14ZJWARv92WP/s9FpKXUxGmAv5RhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716790463; c=relaxed/simple;
	bh=ZRbiWbcJz0I+zJbKdIhNNBAewa14XPFCGo/6aHPzmnQ=;
	h=To:Subject:From:Message-Id:Date; b=ilu7W9EK1B2ZegLdZMlOO0r3+WLYbtOH6DQ8uFfB1ubyUXKH3LeCNXZj0LPtYrc8FkYcMzZmauE0hq8praTpGQk0pQx1dshFFq5WphkZ7G/IcmNrD5jGVFBr3ens8MiiVHlDTsICbw5cqmsnyseCAURQbZA9Iehh7jqdt0l48hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MG6fWvJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MG6fWvJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47D7C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716790462;
	bh=ZRbiWbcJz0I+zJbKdIhNNBAewa14XPFCGo/6aHPzmnQ=;
	h=To:Subject:From:Date:From;
	b=MG6fWvJW+sHBm23Go6+2XhedHuWRsxPuW8R8RqflURqJAaSlfUT9WU8BXbFx+L175
	 KfOodP7brQ18rdUCYMICs0mzYebpaCXIbIS7ZE6GP6Fl3DWme9W0DEJRNG8ZkgWq8W
	 8/8fCf6GcIhHPGHlOS2uRz3jFCNaVYV/2rRpxufsZ4I5PS0oiuAFfVlS2ME2q91lLe
	 XCnM5IKp5XnFMYRq79eTvWirD2aZGdfEEwjZnsXWaKED/Dklh0irWYDi2FTdvDBmfr
	 EBekdlx0zXHQmfrFuydRC3KQtq9jej9mlAgxOuTebGcDLqH2xliKE3sQtqIqwZOUF9
	 aa0TbPapATuPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B61C25B79
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679046278.28965.6977691566351059819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178d228c8bbc6af236302408ce53155a9ab87f1124885fd7cf978ad873df51ec
Date: Mon, 27 May 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716790462
