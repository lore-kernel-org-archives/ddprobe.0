Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BC710E0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757340594; cv=none; b=Ygd1qxwKvWNKG9CN74nkO41nHym8fWYj5XHi8ZZYCJf92BYkkKowXv/448Wec8eSS3S8pfy3+vyCCdrkkjcHWjeZvwfer+b7/N6az9NB8dweaPV3gQREgKp4Rg3QS1lXXkRwDZUvXqWk5VUOATyAbRP4d1J8oUFnJaFtXEFOatk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757340594; c=relaxed/simple;
	bh=jAvbiZk1iishURaL2UrXPF9FBuZh7Ky+iFh3Rt4YDhk=;
	h=To:Subject:From:Message-Id:Date; b=QLRtb1jrL8zX8dq7rHPdcaW1iHyq0AzEpmSyLgGWIMtvt+ZWPcKc8+CwQld6JDlbvEBvlPsuEVN2nO4Y7TXFTcQ9xRWwuY9XIcgjFCve/452v5kCTbU+07jMbqLdV6yW47DUxm4xXWnDgSZVG+1+w34TiTBTDOyDvEccT6WypoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USKvQ4lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USKvQ4lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757340593;
	bh=jAvbiZk1iishURaL2UrXPF9FBuZh7Ky+iFh3Rt4YDhk=;
	h=To:Subject:From:Date:From;
	b=USKvQ4lbFoupWekcB0iLpfOkZqJ7mk26TE5X6DuUn9LC3+GXmknNv1gw+nYji3576
	 fCYl/2P3bYOGmjvDUCTueDRof40FenXGXeCqR1VfWjYVQYa2/8rJjnL1LGw/wrGft5
	 Lt3wdck/Z4wU+rO8JKWDQGeFyA6ABUu2YS7IEU385ttYQiV0TRZUQfE5J/0uj0WEX/
	 TMYmN9bN3D+TDsa1OsgwxtsdUZVJ+qCMwyfIDK/eRH4sgqDKu0nOlU2RAnF9AvBfy4
	 625TJfLeGhvIfbLmDgshSWCV6NNdGYeZcYkWFjnmkJMjPIMCUdEAeh6tOoKmu6ZD0f
	 fG5mcPcRupB+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF1CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734059357.6261.16097805887855617891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9803dccb115db38a68b13c52f6246b823879f234caa7f1c7da3169362baae01d
Date: Mon, 08 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757340593
