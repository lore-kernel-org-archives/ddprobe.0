Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1DB1BDB9B
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711340299; cv=none; b=bcCKucr444RDPHZjsYBGwJ31cNphl84KXy5x4tkANGHa5+WX7RyqWgFhe8Y9CbqOj6A3fMCpw5m0WWCveL5szeO6GhZPyjFNrUNBQsGkEr8ByqEQ6pvqqu07MtWuKk+Z3BzgRG0eBAY3sdwONbI5eF1MXliT1smVk+FflgbQIJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711340299; c=relaxed/simple;
	bh=Wa7PB1P/Nb0O2ePSpzIcJDDGnEy1QqLo1zrjJwohahk=;
	h=To:Subject:From:Message-Id:Date; b=jHdWt6W4VqoPqhbEd9DFxSguF0a19/TYycOTx5GIQrE6NDdsPTgi2NshH007NR75zn6QJ/C5s7ZSc3IOPBOccLFgnYGjmwuYpsyGk3zovO5lACCnScozyiDTKKZwYjCkQpqQl3m775fEAbybwoEZZhcjZ9Qij/GICc3W/H2raYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iukKoolh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iukKoolh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D518C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711340296;
	bh=Wa7PB1P/Nb0O2ePSpzIcJDDGnEy1QqLo1zrjJwohahk=;
	h=To:Subject:From:Date:From;
	b=iukKoolh872ElJvK3AZuHEARYlSC+kTsL/ONl7mBqXAEaC8rzRYk8MBQ3Uji6Lcoq
	 pkFI98eSBBY3H+nxAZ+ZpVLW9tLaUeV8S283aumy7HjvCwHM4f5UTVwA2+Z1d0aeXJ
	 ky1ee2VCK9sqd5DFtaFCtDLoiL5XuJ5HGCUJ1Yzxu+mBnSw8xg4IFIVO6bmYzZiN/o
	 BzNYiEZ1UJN4SMFo1ogeOslnKutlX8L+LcZht6Cn+zUX6ttlLnHSVt3E0See7P35VG
	 3VSkkRTbVMjSx7tKJk7v9IcdwSZojzaOH4Gj/2m/KPu8+q8NIuwQIBmvy9Q5Dmu8rX
	 xwOPdUiJEZAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69208CD1280
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171134029642.19299.12087168191618576821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ceada10256c8df7dc7c7ca399a6cfdd5c4c9100ee4c1a678efdc7ef2e2aede
Date: Mon, 25 Mar 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711340296
