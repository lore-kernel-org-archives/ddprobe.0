Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6663B78F5F
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742002734; cv=none; b=RQ/ZncTMlEA7Ef3hJ4Ed7xFKV0XI6tvgmlyVHMApq9UR8Wuh6FJQmZYxb+4GxVY965oLoNF82mYUGw/ocNLeot1c8MbqZqftwCamSXdopp00a44aCMInI0l8I29VhEEJtj5Z2yZOj//+TY0ewv6i17ndVt7IK85PhdS2ORFV3PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742002734; c=relaxed/simple;
	bh=C5N0UFxQpqICzsbesvB6zBzTpE8dsP8q4rg+JDkckmk=;
	h=To:Subject:From:Message-Id:Date; b=Ptgv0V7zfl/tpMw/QVhcQa5GfchZ+Oixb6Y6MXdutjeW4otODIEzYqfuYWrGfjIiijwSdpwISIQoRIuoUnXGQToyVgNfyHpG426Yew57CZFc2FS+yr6zPNN8urmcXm7uIQDytKYg8LwbvXw4WSNQkyH2ph3DPRGS4IQM6Be3z/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2fhQNKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2fhQNKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA439C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742002733;
	bh=C5N0UFxQpqICzsbesvB6zBzTpE8dsP8q4rg+JDkckmk=;
	h=To:Subject:From:Date:From;
	b=S2fhQNKVekW2N6WglCmyaCDBW87IWHmLIoDAMmjcKVVxUOlWUuWPpucRQ8UPLR/Uy
	 WuHm7CFObV/BrfjTEcGATSlOSepkh7CAZDcVx5i5aRDyA/v7YOAouzrIHATOx5kfwy
	 pxZkqHbEnHX1CmzRaHJ1cDdNreRlPc9d7pb0nCXF/6aa0phiXIILrBlNFvHkfc4Rem
	 UNG5LjpoS/Q2Bo8L2mzSKwkF3iMy416gfx2Rp9yC3MahWn6hJIgsYh8LuGlbKnsmdD
	 tJd5YcDrNA2OrKM6W5ixBibVNZN33esrDJxbvFcarXjlYm2H8LGnDAAJIGzxmuLqVA
	 96C7GseJkm5Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7B5C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200273367.13980.11900497825539648600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d7a26df6c08f4e0ce47e5d207df9c82cbaa4ca38b70d2eed99aaca73af241e
Date: Sat, 15 Mar 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742002733
