Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1584F1B85E6
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725654354; cv=none; b=CWt/ORsS5b3HA9rnM4xAb+W5z++DvhoiEjXn9P8UGUznSIIdFsZvphcGZAOzMbGldhzapRM9tuxIiu0jgSAtzDMw56XzpnL1wWs211ZEajSo6uR6/1jhblwxOIuX2k2FnSeSEuTNhk3Hl6K1lQ3lZCJwNOi3PDKSBLQzkjytgHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725654354; c=relaxed/simple;
	bh=dXS3Oh+2qQUAbc0r+B7fxfqKQrhrN4ohL83wpXw2ZaE=;
	h=To:Subject:From:Message-Id:Date; b=LyJpXawIJG6H/jl58jIHP9eEvj4EW7jrvYyyZQwC2amVllGm/z9zfjImmTfwi5ZZzOdFlcKXoyHWroqFp69t4QwGXC/c/wcz7PZ0SHaUG3kY3AMu8/tO6HZAY5M5UNWNrMKrexCkhGni0ZEcC+7hLDytxHFK9JxFAk7VFPvOtRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ri8IAm5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ri8IAm5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A6C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725654353;
	bh=dXS3Oh+2qQUAbc0r+B7fxfqKQrhrN4ohL83wpXw2ZaE=;
	h=To:Subject:From:Date:From;
	b=ri8IAm5m0xzKjwGjLL3qAkwwT218ZRagjVy0GfmTSKA5UTWAKtCrafEfHRcVoaRPk
	 M7BzyShXFleUr6CyqDtOMJGVE1PyOw8Ct48Zm1stEwNB0lIMqdCkedTe7g295Rr7ON
	 GzjOn5eCOCpMmVnDhBUYo2/ylAAUbowVuOxmxV6Y99ZPzN1Kh5lVP1xI2fos+H8wiQ
	 LkcW+d+4pDn9koAQnvUDfg7BpqngB6J66BLy4+G2kdkD46Jw9EVg7+QBOhmvpKqW0P
	 MnIaR03k21PeGa82o08MYRX5o6ByyJY9H7UmKqd0vInoNdL3zW2YC9f89pMxvyDdlM
	 NnjjBKT/MnArw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90367E6FE46
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172565435358.12278.12686086134142974026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62738299f569f20b2aff3e84b29a33fa3ab011d2181628eda678e2b40c192b1b
Date: Fri, 06 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725654353
