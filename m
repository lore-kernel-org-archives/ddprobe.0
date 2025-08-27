Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1290C2777E5
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756271394; cv=none; b=WgKOv4dEQ4kP8bm6GSkg9o2kbqYc5yvh1bhaJPs5tmcsl7nz94hOMpnbJ7Q7Q6/uryiDDibtUpfR+bfu661ScfVeh2UQsynnZligPGDUo8glkhdoMbwp3ir88zFoc5TiuvgX+VhpcVr8d5TGGfBgs231EyR/kPs53jWnjQ9WHIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756271394; c=relaxed/simple;
	bh=Xf7hKt78PA4v6al2Ynf/gUpUD0iLZ12mZ7LUhcbMHc0=;
	h=To:Subject:From:Message-Id:Date; b=ao/NjDXD6K012RnOL0y7/2H+sqI/srdUqppxP3737BLElxwgsZawZTWpf6l+gygKWBJpcU3hd97YkN92h+2ZrqRVCrYDANcV0f6S6sWOhzPxC05w8jCw3vYGgq3WzFd918ptIt+OOjRxJtDCHOnWWxnIChBnZ8Fmotlm3pnhTmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Txa3/BIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Txa3/BIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1815C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756271393;
	bh=Xf7hKt78PA4v6al2Ynf/gUpUD0iLZ12mZ7LUhcbMHc0=;
	h=To:Subject:From:Date:From;
	b=Txa3/BIP4iDLdVASYk0yv8tSF0Q1g0lJ9fs+FNKwKKAjLkXaFy/oquserlma20R3z
	 egJzErdXNoudeweTsnaWmaG5N5pbyeQemW3UtcF2pY/ZVbII6t0zpW/aZJSM0Cn7e+
	 XuKBYUVQ7XQp5W/Z/CGC9Y3NR/TIjP3G0Uu220g1fvu1xymnMQWxNqlQTySx/Y/sdK
	 +fc1JR1JGHIyFsDu1Cvc/E55qxaQYGoWR0Iy+aFSHATi0e86l6uud7yYNc6lY2m+lc
	 SAdBgwFCvVoyZGw4KL6IjdtHkyhLN3Wekc9xxQvC6PJTzLOg8VG9DcjFw0EWkLuXeF
	 6KT8BixkYhD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F948C8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627139357.14220.1554435546422275596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1e422ecb3c5204c96dadf47da7a1c6679d2aeb87d2e1670db3086939bc265c
Date: Wed, 27 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756271393
