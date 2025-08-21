Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B90393DE8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755810594; cv=none; b=jl77mU3YRqJW7CPCTIFV4YyeCUzZRExJISDm3se1Y9WsuoeMJfb+peibiFlWcdsZX5AZtc6qx9upuQMKOZsyzTRhcmeizFQchSoGrdBB1vbNd4/zgttlcaJ/rWztZPjHxf15NJ3gzGc+ACjLt6AODVfYlF/3yaYaiBY/MdlC7bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755810594; c=relaxed/simple;
	bh=co5IkYaHrHoldVmvA3stNjMmxVq36Ynw7JxnaWh/bcw=;
	h=To:Subject:From:Message-Id:Date; b=m7xWmrUcOPeAc3aYTeoEtJo2k4w3wsm0qZsvZfF8FRwgQEftR0yk/zrLX9EFqlL/709idNbGO/oyqrslpZ0TaI2avWtJ3f/LuU8gWBkZeTxbRO2LrdlE7GnS4yFkg+nfAMuHBUiy9FehJTVX+eCvTSBHVA72BuhJ6QylGI+SB48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxcLSpil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxcLSpil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A709CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755810593;
	bh=co5IkYaHrHoldVmvA3stNjMmxVq36Ynw7JxnaWh/bcw=;
	h=To:Subject:From:Date:From;
	b=DxcLSpiloq8zFeO+l7JEpFxGhXc+sA+9rDpxpHBOiEzGPFbaK5iAZ0fWGrNqDv9YF
	 A8QUaC+rePlx1U9ojfM5E5WT6sJtNzW1igj+kTNjIWeJwCByWQBum9YZpUAJjS9/WI
	 lK84RnR7dmjC+zBAQw0hFBhTgmS5D71fxS69RZ37a7sr+TAWRf9NUzo2/gG5FBJy2n
	 zmrx35E16+SPltSYALVKDpgXSf8tKtoe5FuHQ++ixbTyoPf0I1dZeUyfg0kmQ7sZdk
	 GxiasNXMSi2scUAFsoxAnntGErb9aauGhaJGk//jjnDz0NJkm1XLp0WA2xAgWMYi3U
	 KsczM5gbKZWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AFACA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581059357.27874.2710429578319250714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e3134c8de1c132b2f27b422260a82bba7a442455ec7ad892d015776bae638c
Date: Thu, 21 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755810593
