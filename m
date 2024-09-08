Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD2014D715
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725794754; cv=none; b=iDaygMQS/IRCYbqGkhp+rST9NZim9rpr6SXtJeZQD3iCb2rg6eCgxewPlumg9XEJZ/GzV9hlbNderArHaFsQOa6PhxaE45DIiG1dAa1BnhVPUZa18o5zOI+E7DV5+xeBTALIymxyB9JfQZNmr+i68kWrhvJ5bdIVslQZ9v120Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725794754; c=relaxed/simple;
	bh=Al9DzR/hSW2erB5IBfymyGFyOh3FC6ULeyUPhDAGUZo=;
	h=To:Subject:From:Message-Id:Date; b=GxSfwd3LbgXms2VX1v5zYQD1ue5JVdFsTpQzrSHlFAUMWFfvkBsjw6ukspIAlwT8wg6wv+bFkA2rZ/BcLxdC1irVAkS4QRQYiO4N4Luh3JemVXo4uaa8QTMdGzGLj47ibxRRhRQ0RMlIhJacUtCWj/HygxasTgFA3jerKOtIgY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rpa0yhCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rpa0yhCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87EEC4CEC9
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725794753;
	bh=Al9DzR/hSW2erB5IBfymyGFyOh3FC6ULeyUPhDAGUZo=;
	h=To:Subject:From:Date:From;
	b=Rpa0yhCcpVUirZA6/Exp3siInhzQEFSe8555XpVe/IkS4/TSZYQLF29t/w/2qIU3t
	 x+LXEY6KL34lDdbRDtNGRBBzh3F2m0s564w81Yyw7RVnlTfBvPKDFmvHtVhLhimHk7
	 ZeK5ZK9oMKz99iERQCi3TuFUo/4rG4VDYdtc1UyDsaHMmr5WgJqFQRpGU0oQIXkqET
	 OYXoSum3WIHR7XIT8hFRryFYOb+BPzsoAr6KAsrvyGklksxmLPjlrDmHgR9Dvw9vBt
	 tBgqAMU7TpG7/sNPzsGbl3JsZvdRBNmSmvDsV/9Yhr3q5YLm1QiNQlYhOFirs7fvNs
	 V92nZiDhE0SKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C41CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172579475359.4253.10364360030867477503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247cd05d7826aeb16f44806178a9b0cc00845d666d444202fad7bbff0266f32a
Date: Sun, 08 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725794753
