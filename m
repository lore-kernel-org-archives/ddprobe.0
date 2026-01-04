Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FE522578D
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767537834; cv=none; b=E9fwGM9GTTxafx+BnBxgYXf45bhWheTRIgeVC4FMc683YR9+LYfuuyCPY+WtjiGFqgjuDqNqHTlSwa5CwSvDYAub5VHA8e0vttjLrr4qbmYamAsNsceTKuxW5QXHG6KBib4gnZ88YjgZEcNtZKY8HnupZCJdxy4aNdBVrZC1uUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767537834; c=relaxed/simple;
	bh=H+lpDDX1z8prE9OMJLT+QmI8jYDkjOMj6r2fR+0dpVg=;
	h=To:Subject:From:Message-Id:Date; b=Cbvzd/MtNqWn6qfrYGJ5jZKI2tVfC8PkdyADeCarV/TcD/z8e4Mg+51pQLCHiwxlJpY5xdBtExxWh/e13qeiN//ySwXidLheX2iKr4v13NuI9eTb4xCFHvU7HP1Aoo3LzKpvW2SO7fuboX8fpcHx6qpDNOvcCxY/ceamhHia57M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIAwOHvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIAwOHvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A182FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767537833;
	bh=H+lpDDX1z8prE9OMJLT+QmI8jYDkjOMj6r2fR+0dpVg=;
	h=To:Subject:From:Date:From;
	b=IIAwOHvEcvpPkbHyGm/Xvu+8cdIxbjOuSKoHEXSwkAa1vg2fYN3uAOhDDE2SgU4hm
	 mHpslmtwGYEG/n4x5fpUe/s5b78Aa8gbzqqFolfmZIhDRIR+siYvtXaV2mj9Zr/md9
	 uzfXQVQch+SZfHXbMS1tbhbI5gp5MOMt2KThun0BcmLrlCNzkSkpx4CM8Kgewy3POH
	 ED4wCvOhgBgrxib30MZYZcPG0vo8Hq2/K/dil4d75ug8Jn7dMl+tsMczBdyDd6MtuD
	 tD7kpkYS+1A0SVrhSNBgFnNQ3oUa/E/17CVwIGwjlhWWhzbOnnSFGRTPrr7K6ARlvo
	 yH1oFrVAQs2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924AFC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753783359.5647.10922933830700643940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d55ac57cc58e80f01c019a775d5cd1b3ce07e1de25e5a326a1fc6b4871e8f18
Date: Sun, 04 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767537833
