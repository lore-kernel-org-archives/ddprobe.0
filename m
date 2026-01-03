Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBB31E531
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767423834; cv=none; b=R6Nw3ZcbjL0egAaYck35SOKwLwyHWS2uhj+9xSGP/6TdG4vMR2NRmErwrvwKkWjzZxHtnnvBipMtvQKFm64sajMaEYxDbY+VkKqx8Pr9QEqLmieIPpXaFyFkNOuDhWoIRDHOMSiL7Fr5gvS5t8nVarz72qqtAtGwEZJ8sREvpNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767423834; c=relaxed/simple;
	bh=D3Q2+9I9PQ4JLx+365dsl9idfdBnE6QAR7Np/I2vWYg=;
	h=To:Subject:From:Message-Id:Date; b=nkqfGEVqu6PwfdMvvbOyokuEGZVsMEkrL9zHsTvGO+uRzl7HHHN09kJuW76TVn+GnTO0DF4M7qsajmNjqiC0eXlhSWYFBVk0y/d/umod2VhFtmT55chOLlM02gSC9ku8lSbW1/omokZWqLR7ZuDzDNC/V5P8XtRSSEatfWyuVPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijWwpwha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijWwpwha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA9C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767423833;
	bh=D3Q2+9I9PQ4JLx+365dsl9idfdBnE6QAR7Np/I2vWYg=;
	h=To:Subject:From:Date:From;
	b=ijWwpwhaLwJGhZYU5Ti8+IfJ1YvkAJQrdUvJukpo8pAsyF+OHWeh+S4MuvnR5gr2k
	 k+0z41v8LuzjAAxlkznmn2U/UN5SzRSK6KQEpGNtKpmIMcYrEwwnaHGqO+K1i8P2pZ
	 FOGnWRmMqA8tVqeCMd+ouaO5UIELLYyHBpFzNyvmqmpYAhyWyLfozdDA/k2cBZ82TP
	 i90WrOzWg8kdIAKauEhnVxZkhUGDIKNUqw2x3/eG+kz2Jtt+iCPkC2EmjuePOhp8+p
	 vWcQzMfhmwRa7iix2n5FyLnmoviyCk27U08IJeLpFu0KG8MU73BDJVMMjQFEcyOt0k
	 FdZizpz/mosDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B0FFC6171
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742383358.4520.14539835776458416775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 080bc639343eccdf139d5edcbe768a4d6fdc770f5979a74326ef32bf62b99621
Date: Sat, 03 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767423833
