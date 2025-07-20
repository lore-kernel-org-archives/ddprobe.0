Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5F185E7F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753019394; cv=none; b=dydEMYkh21T5ytmetO/6JAbpa8kY/jDOaJahxsQHMEI9OgealVvqw55WCq7qU1FJFcV/6nGcyEdUMmzoV0KIKxb7hF2/2bbu3I5XPQexQtrNOIZ553lgBgrXWHgF2Gr2L4TQuPPeFrn3cB5xGzPOUDlvt61+swx8rtrOBmbHEvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753019394; c=relaxed/simple;
	bh=fvVMGJzKaPYrnqaQMJohEKGgzHt4TYfuHE9XhxZe8M8=;
	h=To:Subject:From:Message-Id:Date; b=c01DHnuKe0HK2JnlrH00zHa267DmWi2Gd8HANMyB1kn0HSjX48PXNBsajxHzGkMi9m76MPxmSpKng30CQAdFIo44kFmBJWfCyqbfBOsTdoREl1TYbf0QLwPDDWK8jp2Re690Ln/I9QiG53hkfqUuDedxt9UMGvI9rMeKXGvnB7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Grpr7EoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Grpr7EoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0B6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753019393;
	bh=fvVMGJzKaPYrnqaQMJohEKGgzHt4TYfuHE9XhxZe8M8=;
	h=To:Subject:From:Date:From;
	b=Grpr7EoXj9uWBAiLIHiEQVuG8IFS0r6e1n7//r2p2qS5P38bl8cfoOZYhc3YlrkPJ
	 6Osl7UECWVnpWZ62cakqlMmGz3O32n0y6hVwITh9twKyVJgHR6nXr/bSgW5FIuFKV+
	 5+7xVfzQFqxfEZJd8jtYsNFsXLFIV2FLFrWxXFou8McWcUMG7w3/T/X6op/Fl/zk9u
	 SFKBBGYe80V2EBpRbL3OKnL3RJobwtPJqh7zrHUUvKuRB+P9r/iw0y3bxELonY+uIv
	 e2+kiIFNyc04jrZNfhlCnJhTPM9hXf2ftevg/AKse6tMChplk6XhtpeWojin4WdToI
	 +Tp4Tw77z9LpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0FC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301939357.19420.4777136194661101660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6b2a5f184df4e8b809f208e40b0495f57296615044947f36bc2c17626a5c7f
Date: Sun, 20 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753019393
