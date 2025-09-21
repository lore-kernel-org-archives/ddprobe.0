Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8CEEEA8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758497394; cv=none; b=UCs3bEjXREpg/lMzYbBkwTzpNLAt8mK5XwCy5UIkXnpt004uK2bAmuvzf1ZoRPKSC2ylByOJ1/FvyKwE+xX+0qGAQuiuGSTI4Z+ccxlFEOjAikVpIpWnVPBJqwTDRqYlN5N9XK/WQYSJALDaTmZRjZQNuVi3L120P4P/L5ZsCuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758497394; c=relaxed/simple;
	bh=iQNL9lHM+ovQiMvS6+QbrJr5b+Px7bWnyriGrcjKRTc=;
	h=To:Subject:From:Message-Id:Date; b=JXku0Rxyg96FOOhaPgTn+vGPQZiOqLL/wUnEEbew36nUyQYL7RV4MZqqJuaSoel6dJOtXZWsZq4dN/4lrhpdDngPlDCSY1SZWEBXr2xvIPqB6NX3IPb7TsEG/DGKN6dQLDArB4cTaHc7fb9sTg2hLcyG6pVOh4PK8IrLAfNMcng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PM9ky83O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PM9ky83O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9735C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758497393;
	bh=iQNL9lHM+ovQiMvS6+QbrJr5b+Px7bWnyriGrcjKRTc=;
	h=To:Subject:From:Date:From;
	b=PM9ky83ORh5Aw1+XuOlLgxYke29snW6UtqUIn/wTpiRpy0e3lHtw+gM/Z5+ljdnpX
	 IApqiTZIxmDSmrQYyAKKZTv83XLjvSguNjvbeRvzpexsMIKd8RJBi49zzXJzn0Przp
	 6koRzzXg9YCPofIYCdPkRWjfabWeCTJXOJxXsRHm7ZoiINig8KlZ+vWg10+m5GXNGU
	 5q+kBGIvuqMuBSR8kiWbm7jAkNzc3k1RQa8GseynY9E3Fns/DnusNBBG/O+izYK6AJ
	 rCbksocaxKZcykkHGkWGSo8Sw3t8DKBDCZLGnaGH7yAtYwiC2ao41tqLzDdaj9uDPB
	 hjdzus+6GjcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9668CCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849739358.2823.3458273647514423371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3793a86137fbee0b709fe19cddd4a90a3abc625f1677311057e95f9c2a429cfb
Date: Sun, 21 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758497393
