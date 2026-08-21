Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4250E3115BC
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787295634; cv=none; b=Zb1t1zGYMvUrdywuffAj8uHDklxjvF6bVZzz3Oy+LCeJ9nFt86XT96MetPVg8AO6mmt91riuXcNlvwoHdB5oB9Kk24irY0IPqAUXP2QIAtDKP14SmmDnceTMZYNksLRHFuXaRAFCg5Tk4+9R4JqsviPC8dnwffUBNX868t0HCIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787295634; c=relaxed/simple;
	bh=nQOPrFqLdaPi2c19jVzoPen+Lue6WEuiRUbyY5CXlJE=;
	h=To:Subject:From:Message-Id:Date; b=KU2dJTBBzCcWvjU+0Ik2dFnl6uh9UZeanR+KjUGcR90SEfeY6nbqwuKHfvK6MBwtXzz+PPaCKEpHnp2Il+AvHT8DKnjJZ3z5O7oGkzXVExXBd1vAG3CZ/wbzHt/Hbc69VImKZr+z9mnLRHZEQf6ckvBzqWU3ChFnotCVKNbbDx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMC6fg8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMC6fg8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56CDC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787295633;
	bh=nQOPrFqLdaPi2c19jVzoPen+Lue6WEuiRUbyY5CXlJE=;
	h=To:Subject:From:Date:From;
	b=qMC6fg8OAgUcr7cYaPyDb3JiWcN3kwcO997W78aL/BibQ5w2NA+6VoJKL+GxtQqEi
	 +KYwybJdu2EF4RoF9GbaSaAQe9MZb0h1pswIoKoM8JXYRYCzPI8qVyD3hjjel7z79v
	 Kx+38wJtpYr3v24O7Aya64hvguMJ7/GQkMwbkMZenBtCe0B+Ja24v8tWSe+JD+cFEy
	 4hgWlz/2r2pBe1TrBVfmiSZYyEGT31nPmrE7hJU+xnRoLjviyL2LxpwgGDuKFnNkDZ
	 7R/5yXdw4KmdAb8RLEP7DNp0dWkaVYCNfw0hyjbLInFiEie9QdwMTENLx7XHCtHAXK
	 0qtp665mLPuBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D62C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729563368.22359.9225065775888024135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f09984c945806939116b3f9d4cf60f410674faa1f8ebe9a8744c01faae48630
Date: Fri, 21 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787295633
