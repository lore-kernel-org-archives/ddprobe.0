Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850341527A9
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500703; cv=none; b=MlGf4RsR8iM3IKsuQPS5AeGveP4PTpZJBJIOT6CmWrU1+LL7Tup2hnoQIQ5PRAeUPi3hrCqR9ZbpNhvJs6zotPtaOMatrsCs7PqByzwOUcFRbjBna6TzTIMCxwKaJN6VYqdiXeKQ0qip4bvH0QxN7XCl4aDs5AxuAnHd3bhR2c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500703; c=relaxed/simple;
	bh=MH2hTOQ5hCjHPCVmd8TBx5NW8EHUSlUkqOX7LprfsY8=;
	h=To:Subject:From:Message-Id:Date; b=BE5im4RresM14ERcn75riDbu0RhYE3I8F5fsGhpyE349CMpNas4Ri7lrBDSq9BWaKl8vfGuORgeOynpSABKbVaCv1AChCf0KTP8REA/X8TFdNuek2nj2IYmNHk/710sk0EqA4y/qI9mGC+zgDnIo3CPE2dzZ1OGPCHrHHmXR0EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lN93g0jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lN93g0jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AADC116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718500702;
	bh=MH2hTOQ5hCjHPCVmd8TBx5NW8EHUSlUkqOX7LprfsY8=;
	h=To:Subject:From:Date:From;
	b=lN93g0jlL8GQTeNFp2x/tWOjRNKQ5eVRxyGpPbLiHpbcXAFW4CkfuUBlx6gP/B5l5
	 UQlZ8pXakEzTCc2fntg27WrqzE67prsZbI3BPUNjMHPuSEuTdlssWuEl+M23m5Q55f
	 1f3NaI6hOf3tsVtAP5koCkG/xpTSf/2z+6R/SgxZJVeZQAYxy+bvRj8Qlk2erTc8T1
	 Eb1laptI3h2obqVPcXJTRhq6QlFhITTFCNnaWq+NTSRTxpMR6J4c+5aS7QOiM1t+LY
	 5RAawd56gUYr+DOF4KX9g1WkaqQXD/zi9TigAtNWZ6poDkspXzrC7usJKNX+rSial8
	 ADRIgTrMkO4Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D3DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850070281.21926.15312218161385547304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84856991508f99eee0031b639135c4227965fa5c420dce41758010b35d46cb8e
Date: Sun, 16 Jun 2024 01:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718500702
