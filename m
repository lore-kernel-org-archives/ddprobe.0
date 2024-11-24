Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B7D1E6DDE
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732456553; cv=none; b=dsVL0+2QBH5TAgjSn79+h1SM9ue50JSuLkZDhoFDGek3UzG5c5LbMIhTvWWibM8YHbw7fgpzuVyp3WGMHL/hTzFBI/GXXDdnNkPGZcKGwNhIqKmqSEZOhSVZzwRgh+M0bcdy7HKfNEfKpuUdc/OL6RUkbQssrJOKioTNDuIQzZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732456553; c=relaxed/simple;
	bh=ZTX/kRTFyvFG5PYh5bssxNgYUh9nXl/AWqjxfot3eiM=;
	h=To:Subject:From:Message-Id:Date; b=Kqkwm2LiIFBO6DovHDzRbxwGGvsVtMaRz07aux2IKNOGF6DvpHLArPXZQxpIQD5mHoTTf10ZG4OPoh/ZLmK6cR7EyX3oHnXkB/maKAYhuWKDo1hMyYZY60TJcd3qhIhwYvdH/ua4UzFF5w9G18qhjsMDtDnVJF2PFneKW7sMurc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgYHrAWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgYHrAWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73EBC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732456553;
	bh=ZTX/kRTFyvFG5PYh5bssxNgYUh9nXl/AWqjxfot3eiM=;
	h=To:Subject:From:Date:From;
	b=VgYHrAWrHYR3RobNjPqsULH6GhluTes+563s204VBdf9cjhwIR7N4d2Ud0jOuzrXb
	 lxGNsFg0CUsBQcQCwyUTjBsGdm63cmoj+ebp3W1yy28dZ1kYEhFt/F7p02gHjOjdlh
	 UsMQxX5ixqM1zGXXHUSWWOsMSKWvESGzHtyRyWJVQ3jNkR218NKySQozc8khOF9Ud/
	 Y9suF3ci+ZCAlK030EcSiwk/9Hu/8dd1JMAlmdVS6CHPvCvdOn7bBxTcoIOhwwuG9w
	 Oy/TXER7SRtkgVuJuPlbkwM5UXlOGukwbSnZJ8GOrLSosknlQZ7qZ5+fUqfCTKKPKN
	 p08ghzLteVjIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A141FE66887
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173245655365.17795.9399044761604700234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b111a1c065b7e732e4267e281f9ee1d1788b6298531e213018d7a1e7d5d9bf1
Date: Sun, 24 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732456553
