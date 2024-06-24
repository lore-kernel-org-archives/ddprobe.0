Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731AF136E0F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719225743; cv=none; b=bgji12GLVheuOz7tmyiuleHbtRLgEsBmy4p7M7lmUP4ldjmn6yzPy1SPBxkg0jslvx7uNOIQW6ETELhjMuUqeRwGRPRFkLi50WUHyVhz+tSB2rP06tHKwnpJidutE14SdK/X1m4WnlH+kEjQs3UPTnCR4gTtGfRv/k1L219W/zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719225743; c=relaxed/simple;
	bh=dFSew5ki8+uoVOIB5FHm4NGRejn1xV87YTFZLs6bT0k=;
	h=To:Subject:From:Message-Id:Date; b=OvWuSkbjcr2QDELAzPFhwWX5kaT8JmO8qfg1sGqGgOezj03AXU3lYKYJnune0LcxNbW9bdTCiuG3f9ChF8ZzgMqIGBfg5gISVdMuhKSYzYqOR3+txBJgAWH7qeMZmyQvO2guHZNuU7Zfjd0iw67pTXalhYLu0rWU4zG8fkv0q9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sb1K+Cmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sb1K+Cmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED3CCC32789
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719225743;
	bh=dFSew5ki8+uoVOIB5FHm4NGRejn1xV87YTFZLs6bT0k=;
	h=To:Subject:From:Date:From;
	b=sb1K+CmpxZ22hpoJ5FFryGIPm2rejJfG2Ck5LSHZP8dM9fshI4EO+AgglfpJEmNfK
	 qGBUyKeUqVPA5O025hb+iTxRez4BqqGR6N9M0+I85ydnqvJXodNmfXNFbzyfDlklxP
	 0i3OWShywJslw38t+OxGqaOmeLnZ9qEFA6fkyxHqChHEOBLbzPCcT9I5z7PrFeNLqk
	 TnOYzlRHS4bkSWm6rqPq2Twec82cLL094gtjAYrsMGh6Dh022vV7iRvlPW/aJXlQ+H
	 ILb6irQz7xJz7sqIy6OkUVLwjRQNpinS9DueiuYUzWt0Peq0rST1nQzuywDXqsDOq2
	 ujGKyzn0RKsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5A11C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922574286.7266.12096342803046297421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10037e925829876e749f43e46e482bd1065c188c1146689b3610baebc74e019
Date: Mon, 24 Jun 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719225742
