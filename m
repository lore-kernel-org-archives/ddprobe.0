Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C131C84A5
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748549994; cv=none; b=HiEN9bMlBLTkNE/UoEE9BOGzfnmZsbfW8Obpr2WXZ3OnmZKgWyAgrkeF6/Z+npKXIqhEwRLgAicKcRU9vDOepNd6+o933wsfWENPB9HpI0VV/6n1QvsLkMzT0GCr84RRNOBy1TnyOfcRBy9svocQxQXDNyVZxTkanOeKZ2/1ssg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748549994; c=relaxed/simple;
	bh=3H9nEG7GSOnGjdeZC0jZ4VzLSqOi+Kzr9+y19YS5slI=;
	h=To:Subject:From:Message-Id:Date; b=NHQnOmKZzUmvfmZzY/H0sUsHT3+1UIPtNJ9BcDzGhJ+/oEPh2oI/qggOs5H2MchVt3aAq0ZgE/lNYbd2JOxrbddvHLjyGj1g1pKawPtSdscfNt02e6HIZw1uHIDMuPfKMx3K/rDHbdGk1WG+Z8e69GxKUM2G4dNzgpW74ZyprlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1XcFDPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1XcFDPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA29C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748549993;
	bh=3H9nEG7GSOnGjdeZC0jZ4VzLSqOi+Kzr9+y19YS5slI=;
	h=To:Subject:From:Date:From;
	b=j1XcFDPIqG1WkoGh9nB5pYZ1aTjZvV/H+4EtHdyk0qhxnd6+OthOgvbsC1ZNLrYET
	 mE9xMo1X+nOtO8TwbyiOVMbCeW70bP54Wx1SG1gYR58NRGXPLp5i0bHpAAoRnx+R5i
	 kY1+VJYWZoPBDxg+8IWVZK1IXWE5BTsJf04sjqhDvyPelwLudIIhTZLKUP6R3cYPoz
	 CoHLLIz4/vKYzcfg8sMxJUgUuT607QI2agY5U+XRE58dW36lt3NcKPN6OOhXEj0pAp
	 PygH3J0kS8B2MujYn0nJZhj3VOd1/isulpvPpcPwRdrGU7Xp9dKnEktSF1gOgIXssL
	 gY52bcgjK/03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90994C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854999358.17708.13388895238141546722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6420200fcb1d8306f276f3c74e32741164b725ba98955ebf82fc7c56b40fdc25
Date: Thu, 29 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748549993
