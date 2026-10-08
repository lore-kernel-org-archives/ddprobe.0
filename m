Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6663141A8F
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791419434; cv=none; b=L1RJvmU7pkjWeyz5Zoca+5G9McGDJ6b85G95s2ePxh64FAjWqsYB7QLtemk+8tONa5l+aEGwlXhMI90N5/nxKvwZ1fZ2D0B+tch0YV2yVTyZGCdZGprGc9k0YxXqLy4+wDapctqroYa9Z3sM79atG+qqu55VE2SP4V79t3K9SUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791419434; c=relaxed/simple;
	bh=MpPhWB+0/pB4Ej5685ejkDaicmXCf1nNIeWeNGV0yRw=;
	h=To:Subject:From:Message-Id:Date; b=si7FrK7/RT83aXq4oxC79UCXD3m0fJsFklJNNdDx8jWHSusAuKygXugX+f6HIOyHN4zTOl49W6uPAUtwFbyKYjCChNHHqb/qEhz5GojVXK6CfxSuLpoXxEYqqMK2Q0C28lZCGr8Hye06RF2m7pyRKAWXPyvyFxYtDsy8Zn802gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGCRGQNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGCRGQNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E12C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791419433;
	bh=MpPhWB+0/pB4Ej5685ejkDaicmXCf1nNIeWeNGV0yRw=;
	h=To:Subject:From:Date:From;
	b=cGCRGQNO6iEVSJbPe7h5fTXlQ7M968t7nPKX8ErqbxcT/GLoB2lpaSM78C3kDQRlO
	 DHGXRbl6fTl5gLoMyHc2Ag1xwBBmaJmJ9GpnDHLbY2c9AlT1IarR6k41ufLbwFQMgO
	 1RJLbQe6t3dqL9869tQpICT8fQhQ9rO5uNANIY1utbfZCZe+n27lp81e0KjQnn0d03
	 VLjClmpssRZxMTyCXE/AedNKG/S/NB5rv1fC3TvXT1ASDeZ41AuP/fx314B2sSS4yM
	 nB063Jxm7X2w26LqjN/t5jXk8Xfi3ebOzTw2ovDWM/CSkUxXFlplSvLVhbnzn+/SDT
	 M9191b/pniMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA3DCA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141943369.24402.4182447356099908700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a097728ff48c9966911283aa368b785ecccd81abc6d4819b570b614220b4e4
Date: Thu, 08 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791419433
