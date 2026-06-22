Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF82B640
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782088594; cv=none; b=UbvAJLsOBkpZW/jc7I/B0Bk2brN/I5l+nXNQGBNwfjEM5DKd5JWUe9cCl4/QIEzCS9UwFO7jxvLgKLUGRKl8SvjgS+tv3aE0VQ5Oa2XS8G24dqVViuHqUZEdE0WmMDHTbbLJ1zs53Ra5xMxesuj5k5xLOisGbYHnS+suxNs2IQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782088594; c=relaxed/simple;
	bh=FXhzLMuEKpKmulrmk39A2VSHCVafray33SIn+dZHwtI=;
	h=To:Subject:From:Message-Id:Date; b=ElYR1N2TAM6lZ5qlnX+k7gkv8eQbllMoRQjPa8Q3QSVkfcbWWjvIvciApQU/UNibnf65PCBvNVQxnhFBBgJbEmM1Wq1dPWzBG6Zd6MlKad8Zk2sTmyzsV7a9TeKrBk2Mb1GvYyhmSDgjQLwiiKkpw5ig0UBzmqAlJY4ABnoEJlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/Ys8mFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/Ys8mFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D590AC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782088593;
	bh=FXhzLMuEKpKmulrmk39A2VSHCVafray33SIn+dZHwtI=;
	h=To:Subject:From:Date:From;
	b=K/Ys8mFkNcljBBFek1RsiAZlboi7uAyj6uq7M22J19/d40D9YcYfKxayf/44K5k68
	 xp5aUHdHakow4AUeHwOiZB/W5/9bf7+VceyYTa7Ew/0x9f5VBBNkKypFmXhjKIa41G
	 ip4T32MlEr6Xwuyz+roRUhMnPNRc/bKWN0rN2eIqiUnMT/sCB8kEaDYFTJVTFYHdAr
	 h+oDY6cr6m1VkKAIVrMKzn2FlR3Q1iADJAkZtYqk7TkB27OnNTFCZkguJbGzOnx9jj
	 5wF0U0Ay/x6Omy4zR35qcAJ6FNrXJvcN5u8JDZmgSqGMgEa+ffg2CmRJfylzUGbVfy
	 vkALwt/uVDsMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1319CD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208859370.6998.10424436213133293249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327f32f535b05b14a627529ce2d2e624dac10c4f8124401b58606ab8e6bb7890
Date: Mon, 22 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782088593
