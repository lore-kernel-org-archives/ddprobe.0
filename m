Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2124F84E07
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756009194; cv=none; b=hoyoW16bTVqLJ6xmwGPFs7QFao8QXh1NOAWK2oqEZHltoPw1/2L6YX8UekxzBOUp38q/DR2vJt7H6oG73eQDeTPG6TD4mjA4zgv+wuKwMgxsYO/3g9CBOYcHl8MwJDpllVvLySRxmBWfIITE13o4gZCnHGzJNwEbTFq/cug5Am4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756009194; c=relaxed/simple;
	bh=XIdiuTzfCRQp3nPjsCXXG7PbKm2nKlu+qMaa5NDN4MI=;
	h=To:Subject:From:Message-Id:Date; b=gOv2IWFTziGbpYJNO1EKdQaX5gj4odLCmJGREPZ8tdZocFRSWfavDc6hkO9hIfWDmYfdMvVrTEZRJik28991NwmnNARb0fMK3Z6NpvzfwQ5LNQd1RgZzRPsCmDK7SS9jJ4u+w2dnhPPVueCtMoOEBWrG0jYMlsji7EdLezHQBeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiy2nCfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiy2nCfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A787FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756009193;
	bh=XIdiuTzfCRQp3nPjsCXXG7PbKm2nKlu+qMaa5NDN4MI=;
	h=To:Subject:From:Date:From;
	b=jiy2nCfA0ZUhSldGXNJmOKLokHFlSI+GdpsazAcwdxQMpuFwQYh3gh4AuIRQOw2cc
	 +NxE0VDw9dDB7u2Rdr5+1KQ8lvIQzCdIqhQTXeNUUFgibYTG/2WI8H3rG0wU330tWd
	 y2ZAqIi+2fRB7LYrv7PvzB+s6a6BZty8nL1BU6K14QEnyTzmmFkglCFbcMDDAfiVY5
	 FgV2bNnLUh7PuCwbsBtqts154dewn7CqHbEdjuu33s8kApo/LiKvQ1HtYJ3kp8tMye
	 S3FBaIRkMmOh2HKVyFudcaiIR2F6kirlAPUgg0A12Qig8HREXcMzDBbR+XYXjtEo+H
	 N7O1MbFqsVwrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934AACA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600919359.15542.2442316684303319974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f197e569f673efe6808c759c60f89e5d00d6c59a3126ac5c07aa0b7573fc388
Date: Sun, 24 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756009193
