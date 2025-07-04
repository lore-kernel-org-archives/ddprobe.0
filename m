Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359FC22097
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751635194; cv=none; b=AUEpjBqzKO4qtaf/DiEfm6RzAM816sbfGCxT3zWRkOxyFXcII1m5IcGsJY3VTyLQpntvyINvG8okfp9VOEChMNPKVjzrclzWOpMmDvDUWFiDslwC+qpbzZ7iBmEfoZrs1yjfVO9vq/ZgF5gFX8ndsu8/JNEFF3T9JTJ6fiQX0tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751635194; c=relaxed/simple;
	bh=1VDJvY11Rdzs7PgBtu+IXwNn50nDjhfPPiTddcmF37E=;
	h=To:Subject:From:Message-Id:Date; b=pHwF5wEVLMajsHmJyPmFC1F4JJz4qp5o4W2dxoxI0jBPforbnrTA3mewKT5YmYVJVq87qIUXIDHaiVkZnDejdxiYNoqp/+n++XMTqxkCKj6Uvf45GqtQNfoAZWAYhzoTQRQwRliHc+vx3Gb+46poE8rZDrrl/InjT/3aSw7elxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWDmCKuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWDmCKuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E461C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751635193;
	bh=1VDJvY11Rdzs7PgBtu+IXwNn50nDjhfPPiTddcmF37E=;
	h=To:Subject:From:Date:From;
	b=KWDmCKuOuTkl9Gll4ro141OAqUym1MMgd1B2xTK4V7bf6m5W8WcEe1V3L0JrNkaw4
	 DQEbLkVYPsfCdTWmr1kkB7q6O5gjZccHiWxaOMESjZyVRknwhOHFQbQKygY8eule+z
	 bNcQsGt0Uw9llsd7Qt4ZBMRDYbvw5/1k2pF20QgYZfoy1YP7oD5VMqT1rQO5q5CA2d
	 t1TIcfP1IFX1px6zuc/V088vRpuYpxyXgh61IRJyl2KgubmOOvTHFA6iAkLgyr8SuI
	 /aGP8X4SakeBP6UHwCIU5OCsCjKvYQR6ieejiDquTsb2cPFxIe+n8twLRXOvkdGzBv
	 NBsG6KBG2HZiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E807C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163519357.22604.16463697696829771017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307f055a730898584f124bd19f138825e723c4d1df6f8ca8df8aa53a162d17d6
Date: Fri, 04 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751635193
