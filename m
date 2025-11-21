Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414D4346E7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763722914; cv=none; b=HyIY2nT0TjacJV3H4dfMgijeBgwrd1N0FCJQuyqdpQ8hh8ZvHvP0i/0iMbi1oZ+HA3/+wA+/2OXbjEVdFLe+FaFpserY/4iIkQom2syEU2OvXFzZDvOYcAe6jS44qLkeA+fcBU/IFmtjZBwLvhCTeUXFnqTKrxoQIZ7Df5nFZGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763722914; c=relaxed/simple;
	bh=JL4p22/CGy4/TEFmjudEuXknBur3rW1QkxoJZ9z1pug=;
	h=To:Subject:From:Message-Id:Date; b=soOPIzOlEaqJhgKLLQRyam9IIjN3HcifJyAfSoxoDJARvQvjQwjXop67Vm8/6drWGDmTTFDPyuSp0U3T/0pH1v+mGCOVgLI/QkMyPKK50tmpvy8B2WOK7DdgKjOoTcdwudeOEpt2m13zwjjGBjRT90/OuQ2o6NxVgAYVg4OVWRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/yRu4FD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/yRu4FD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FDFC116D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763722913;
	bh=JL4p22/CGy4/TEFmjudEuXknBur3rW1QkxoJZ9z1pug=;
	h=To:Subject:From:Date:From;
	b=P/yRu4FDtvVFJuAo5Dqvwy/BpFztHBIOXfA18MVX9M89/3Y/bZQ/H5KMsCaM6ol72
	 /fdvovB8C3obcw0g8wd2JGF/Erk/wOkyKKRWZ4jvJyB3hjl0ZFj2KoOtN5ILlP1Oqa
	 nF+p0E8EhEUzOaOnTMvvvZKBcvWsnx1fJ+vbP1iF2ltCNyJ5fXwMQANvp4sHU4okKe
	 8l+KZmoMyu5vW8QIi8w7pTNBn50zMt9aYEgmntxof6Yq3ALpPwjyLIMM6lSLgD8qO3
	 FAjh9VB2cKpmFOFtd7ndfffFvlI58aof2U7kWUU5loFhvGftvr5URvq53Cj3q6Wr9b
	 2kxKNWW/Q+Byw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5ACCFA778
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372291362.28405.10648710105653845084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed5923a7b2a21c118e92e6f9481dd55ae3d27d477ff5946775d84fd07048519
Date: Fri, 21 Nov 2025 11:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763722913
