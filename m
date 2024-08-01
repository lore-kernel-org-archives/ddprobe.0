Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C8E1DF693
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722472554; cv=none; b=RbqJwXNLmIGdpMmo9sPCfAVbx2EfSrXTGrLcgdy2JDW1w+zpcKtAUWCTsLkWO3JyhCOhzzobhYK4b/3qsqRWN/RxCDNcdSlYOMnTmN1l0N28h3V+q+O9yL8Eim0UNFfSBBPp1o1h7f5q6XnCNPsuz8DmTVaI9rlDUOMZ8H0qvWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722472554; c=relaxed/simple;
	bh=O0I9Ig/XeBPpCY0UL7zAJqqBQvjwQjW77eWhqw6r0hY=;
	h=To:Subject:From:Message-Id:Date; b=gRtvnKTi6nITbYbOXmj/BRmjTPtxU9ZgFfGUuDAsDSvuUfe8tcQbR8RfsJZ8VsJk+oIhnTnd0+41R22uBjw88iKDi7HGti55Bn4NNoQa7BL9e0oMiRHS1h15pN83nijRWnXAwqDgZJTAxJBieFFo/awHuZzdwfyLAa3wRWvmkVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4xyeJRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4xyeJRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF3C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722472553;
	bh=O0I9Ig/XeBPpCY0UL7zAJqqBQvjwQjW77eWhqw6r0hY=;
	h=To:Subject:From:Date:From;
	b=f4xyeJRcaCKwkCo+1Xue/rEKQ4r+ZbdA9h1uHe/708pwWK6kmhhhCr5YB5ikx4vzb
	 BVVq/n1LSHw8Db/QLNxB0a3zq0ru2+Ad5sSLtliluARKRVJlijZnwIjUYAzZl0qni1
	 x1cIFWaxHBXSmpgpxl60/PvKtVbTNOg68R+5Srhiz3EB/xxjmXdHALb3bRpC8+VY1R
	 llyCsgkwDe/2OoM9dZM8R5MhCXewX8C1dE5rQyaCRojNPCe2VOgMKAMpGmopflsACn
	 qCxifofgkN4eEiBsoyn4U6fo1BgYKF5y/Hn8acwvHbfbnw1nD8V++JH0Feqzolbgd6
	 qrEWv4EwAmocQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD54C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247255362.3786.6975221194548960308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5886113a87ea37e0bc69d9deb0f4b3ca474b045374656f9bebf3197a2cb09492
Date: Thu, 01 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722472553
