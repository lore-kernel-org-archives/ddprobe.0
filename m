Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5675E14F9F0
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718972543; cv=none; b=PqSZQVUPQ5fe5q76wJ10ioBfiZeLdNaSkUM04MnO1JYxrH93MgjeMqWd6LKOdthlJxH+QwlvyfkAfQyabqNH8d9S8IV0+jllijDhYedorIICOOsyFMpWFHI1mQLXEj/Gxo4d+m/7mYtGjowfUgthqRCEpmDd5Q62ZB2qBRzIXxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718972543; c=relaxed/simple;
	bh=Sj/Ea31vJ7qWjdLAu79hdIg//RW8ItawetN2uwrXB4s=;
	h=To:Subject:From:Message-Id:Date; b=Lk3WgxDeA0xarneaEZpxMogx8g+lWgs7e8yKU02W8iEW8wyZsEPXbnTCvd6TYVleMF/FAzFxe4BrXVzv5WzElwQghphxlSgs0CW5W2HdszdNWjsL80uYOkNlmHVcHP8ybUL+FA0iFQQNpdI5WmVScykkncXW8dQRmWn0zz3JV14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVTaY++I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVTaY++I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE43FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718972542;
	bh=Sj/Ea31vJ7qWjdLAu79hdIg//RW8ItawetN2uwrXB4s=;
	h=To:Subject:From:Date:From;
	b=EVTaY++IUjhMRjiOoE5GPMs1RK+7a22Ih+cYiEsB0yHhkqwUpO4npU4PRCmSdZ+oh
	 uzFxfflHAjPkIYRy3NLB7ldCoPdFSffHr18EUVjr+X9RAx4QA6oB4g8J6A6GxlZYDO
	 aRP8u/y5z9TOXftgcfctAK6zvcVyTp/ahPu5kySYM1nG/0pr1OshueJgx/QtfpMpFd
	 lE9zsVSPIvk0nXimSxr9FXbj8ZqWJQzmC4hnkqAqnu+u/oAa9WCWzcSTlcnbr2tzW/
	 II8OzJGjnNZlf7Lyf6mOE4l7Ig/BjGoTU8DEIOT6JGBekKKicsPxQSm2xtCGKXLzRZ
	 6MKefzXD5EUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA93C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897254277.8967.15452819407450972351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04978014417d1cf605a0cb6c13dac4e7d0f9aca33443ecab71c51cf56d4f571
Date: Fri, 21 Jun 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718972542
