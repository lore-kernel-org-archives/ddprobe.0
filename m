Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA27318E04B
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724975153; cv=none; b=H/gNw6PhW+Db3M8mYAHolWA212CwZiDD6iz7ZXpRlS+fyfZk40GdGXOMz+Jc3WG0Gx0HIq/rDzwm5bnqLl0lXO/+cF4R6CcsTT+n7Mz4Z7WG75WBCUW1W5Jp3bG3CbmgC8nyFSty7/TagGydAj2+FgL3itfj4cKC/fDpdn4N6Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724975153; c=relaxed/simple;
	bh=Db6g1b5zZNIVPcd960oYAYmP3JNOwWYtL4hjEzDjuK4=;
	h=To:Subject:From:Message-Id:Date; b=lWwoLnB+kwvmhlpKhtftsO3KTlOW6B+VMOozx8ik17NOeHoAl+JD5kkb10UmJ6gyizTWkhirhkw16ZVFddKLuuarSzb7audw1e6nin+9A93K/kjL02E00UJw7m7Em2aaydmze0zfadcfEWRg5bJL1Jco3ylOMRjxuQpE55b3x1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dksWrmo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dksWrmo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B388EC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724975153;
	bh=Db6g1b5zZNIVPcd960oYAYmP3JNOwWYtL4hjEzDjuK4=;
	h=To:Subject:From:Date:From;
	b=dksWrmo3FHzmg1nk2kZ7uwzarR2wm7FTPYZmYnWsaJ0XJ7iz7vpUNHJOqCuH+Be/u
	 StTAGyUQM5Z5AICGVhdufK+j/GyPoKCM2BzDaBa3PlzfKTgadteo11CldsbUEq9fmP
	 oWlBAve+XcwdD1xW+3yD1s1k6tZ7u/2gCavwKWjszaJhOrH4uEy2HMlDtRzkCPQULp
	 gPPpkywJwgFkAxCNDp/j9TQFSoxzSliG2UZK3bmeXQVAZbF3v5stUQzYcbGWmQbrKG
	 KlrQBiakfDXRkD/+wJlF0ajjCvs5xpTXNPJKymjMTbGPUN8whDUCN5m7BdrqSlp5Cu
	 0guD26c4uWTgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA0DCA0EC8
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497515363.5678.9829913381967910234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0d3b9ead897d0c9c8762bf6cf24b04fdc8c5850cc7c7b552de529d730b89b3
Date: Thu, 29 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724975153
