Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439E55A79B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732773954; cv=none; b=gRFsC9kVHn/Jf1KExj7+6nbQS+thgOjQX5aTuhHlDzIdIZLofCkWcZB0I8eEaPUUD7gAk8lG7dsgL5LrcvMgdhZYDdCLuT7zfinDpphztS9zxem2MKaa1pDHBp+f1o3KPvACyEvgiSR1TpcHR/4GNClgMRN2hpNeMfJ2HxOfsxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732773954; c=relaxed/simple;
	bh=O9HDhj2excNCL1EO0HPo7OOPk6o9Q4doMEkdHiw29M0=;
	h=To:Subject:From:Message-Id:Date; b=HOSlzUlEFkIfxEPRMocOmpGUGYzOhKlUFEOss10NyKUNqpjei7zYfEEgkPpf2WijvODz3qEEtWSVR2i2f28Kd0b37oeu5aLM76f8lkzPOilqlbGC8Ud/ACOzROVxhv6jUtYTcFh3CiA5aBSxyUr6qBQfj+w/YOgQKw8iwNKEafQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHMufZ5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHMufZ5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6643C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732773953;
	bh=O9HDhj2excNCL1EO0HPo7OOPk6o9Q4doMEkdHiw29M0=;
	h=To:Subject:From:Date:From;
	b=BHMufZ5iQs9NTM5FxKas6gvxgJgUFnUzXxRbJ20sJLHw/B5hMeZ2u7yiqlNvFaDjt
	 G75nmFfHrwPViMdYlRePJJ00CJHaj/FLJyvAtS3swr9lVsgxkdZ/s8HoxLKv78hBvY
	 3WMlq0n+9uO4kPYAc+f79iAQ8MqXT59NPYDcSJ+I87cPQgFpIH2C3icxOidY5xv2ff
	 JeRfWGUvZ91KDzDlZijd9PrnTt5szVh2hWCYV73JzS6em4YwkH4tRuNvfjUcTS4Sxj
	 PO5fJgLi9A8VBLtomhn/CLUF0DoqjQLbEijxIIIOm+n8NnuqfhbTQQhPXaqAgP90gh
	 Y77VzGt9sgu6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36E0D66BA0
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277395363.12841.1509507304961164933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b79f21b7108346c97a208501e7f44b8e054e298407a91901a67f6cd23071b5
Date: Thu, 28 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732773953
