Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD658821
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740902934; cv=none; b=HxqqalrofEQxiKDYAO/2NlKoUZgktcKxg7Y6rNx3kT67BWtmtOvb+Hcee4gRL60+6LGSWpzNayKKYylXhtyUXf+KTbyckKBsIncqXb4QCBETusuroEe3p/hJavGKyon+ubBhmWC5Fm7eFFajkeib1Zmwi2utgMwiRgEoxdsg+80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740902934; c=relaxed/simple;
	bh=58+DmPn5DPgFqKkVSUi+yzpPEkdgGB9sloEKGdx74wU=;
	h=To:Subject:From:Message-Id:Date; b=SkLcNdY2JNpCIKAMn9g+oOmRIS1nS9W/rRIZ+f4rSU85eBcKvRnj2chNmruixFTiQjysXbgnd+9xJRySVEam7xg8sElAAvtYnIdo3ELAeI8O3vltcU2e4Doy7oPVKX6u0gtssM7L5dk+t8DqdupguX7L0dG3stnjTRrCi4vsJGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qz6vmzII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qz6vmzII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ADAC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740902933;
	bh=58+DmPn5DPgFqKkVSUi+yzpPEkdgGB9sloEKGdx74wU=;
	h=To:Subject:From:Date:From;
	b=qz6vmzIIYq52g8QBAFlv0oJrUUnR++7D6K4TAt11s+62qMWSRTzha+Lrd95Ujq4mQ
	 ac5gc3UyGKYEqPzir4KMDWe23f9hd+RkjOIJ5YzC2a1wpjcy/swBCge6XBxqwwBypR
	 nZ6myJy01ZhyhBBhlMwWM+9DwhGagokMJlDwcaElRjXJqFdAi7P+p0mOzID9TiMvWq
	 rbjkaD0NEs3u+PdX7qp9cUhh7uKHB9v8fFEvmw1JoM4gX0y/u9Itbovelm9Ylm1p5Y
	 7CA+RlP2hfaf+OU8lNDPjJwC+gIvgLYw8P6glDlNFVBKIL006+w808AUTqd76uVkJo
	 3ETva5hk49wjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E896C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174090293362.25993.15038313244517140459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfdc12e0191c44476667930d575d56ed77d6c526483f2f63a1a7ab4c62c237de
Date: Sun, 02 Mar 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740902933
