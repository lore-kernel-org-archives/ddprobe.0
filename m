Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA72239085
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789604434; cv=none; b=CH7LSEzbBrRSvhgK/higGSRMfMMIQu6u4jEgtO/j64nJbvqafO5hU0LNoxfk7yzK40MgU1yw2f+vt30E09yVUR6g8De1cfBiTJ7uEmh0zICkYZSYcdcrHh4ubC+DpxX8jA0j1NT6GITMatCW+zjsWWeaUmfsl7akoYxgCO7PbVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789604434; c=relaxed/simple;
	bh=ARCj/MuDzLqojxLijCe/4D1Nco3Wv6puTVHvRQWtCJE=;
	h=To:Subject:From:Message-Id:Date; b=PbTBZCx4cwK1whM4HyqGMsjh5UaNxAEAZ8R2ECRXke3B0nZ9jhK7yzOYh1aGgw5Xnn90rPIWaFxyN4mFHuELWb5VtM6AOACCcIjrsizBjIQeNVjGtAor3VJyzYqK7aN2EUXKQzbNe93WY5qbaLoF03vlhrx7h4/cbPAhNji9R0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc9Uy8eX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc9Uy8eX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF149C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789604433;
	bh=ARCj/MuDzLqojxLijCe/4D1Nco3Wv6puTVHvRQWtCJE=;
	h=To:Subject:From:Date:From;
	b=Kc9Uy8eXXlxrRyYKmw2bHNZUT3ImnsLtAilV/ytIHnTKdeeA4KMWswhHY4FtjhvJq
	 GgJDWKz/4v9gZa9BlZWDCtYhQcwDev29bjxhI+x9bqjNbYm6IkKJHHjgwVqKe0165k
	 bqot2ozJfB5FTyRygcVdf5cR5pxwmiz6eNBLCZYLD3Hc1wEWGDN7ig2TrMlJunWgtL
	 1M8GSA4GQDOhssakBkebv4pwIlhcDPQQaqnSyxn92b2/v7q12KB3aLxwxqQGz8qPxX
	 J1FhSxwaA6pOxISnorZa3XuHp6u19FSsFMrr8iXC/LPiPmqSnQDvWRyzkXTfChW43Y
	 uKp0TtEm0C7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC83C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960443369.25783.5150802861997453917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2331c749c9fd643908fc688b6e82cd0f9196932f1373e5ac056c769fec84bd
Date: Thu, 17 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789604433
