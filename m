Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A291EB19B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786844434; cv=none; b=TJyKCHu7NZcEZVEmAmKTuwD7zD/jofg+fiXs0nRNBFinihf9CMpXgJ4nmMHTVtwhtnfYO2FICqPcD9X2RK4OkyD7PB0m51nf7NRjo8fSgpTHECHr4ZGohrXnl6auwizyRjozHYkxdYdOL8Sspd90g5tgbuMkZxyzvkYHYGObAcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786844434; c=relaxed/simple;
	bh=VnyYlkw1I1VduTv76ZZ4iw8H231deSd09Zw8LKA/8tI=;
	h=To:Subject:From:Message-Id:Date; b=KikccKMpA6Nj/Qz2b7Ij05blSaOB55V915y+eJHZgMaqGzqS2d7+S5ZIopfY9SPq79iMO9P5Yam9ie36gM9jDpQPU3WsfqrvEPHwVd2xNT6xqfcQHvvKzs8FVScCEC5JXFdmvq8RDPeNwvIlzXDwJah9CyISgH4HGU2NdYtieho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGS1JTyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGS1JTyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F52C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786844433;
	bh=VnyYlkw1I1VduTv76ZZ4iw8H231deSd09Zw8LKA/8tI=;
	h=To:Subject:From:Date:From;
	b=TGS1JTyRvi3tX0jbmjBoKKkMMaBeXWrWSxxWMb2mQeuH1bQZTmLfwYzpCMRsnsKVT
	 HR0+/UGcjho+dtyNs9aIkgSDY0sKjXxx/9ppxSRONpPzHhl2pQVQSkhn3i8wnASxyq
	 a7388zVF6xf6kaQEQbMwP4LbOy4gZeFYkN6gtvv1E8/V3FHN+AMPc2DWqhxI0zKeZG
	 UWARMTsNRvitWiBbQAfL31gECYBsnntYhN7/IZdrrK1pj8sDAB3pBQqhXPNZDfbnKp
	 zpnkc+KSyeMVHmO1PG/cz34zwlYD71RnJSFBHgXq4hE70FN5rJ7APxnl9CzCFZ3MGP
	 o4UcUtAVqWK0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF29C5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684443369.27295.18066555720233249011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7dba9959369aeea46660966a7169a4bb26586410df168b111b8be70a2daa57
Date: Sun, 16 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786844433
