Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB2813B284
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761486594; cv=none; b=j+pLWYmRtAQdgErVQFVxnZKTE0kYLHFR+sLbVbaPxeZEcNCXfq4+yQLUNRKsloLK2GX7stkDMeru6ZAlH/mxFp3c+isyp1Byn4Ioxr6Bjw/2soZ8UKT+2F4RD29odf4j6LFvsQyxsYlnspWnIIMKC6UwSF8Auj1trZbQV6gPctY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761486594; c=relaxed/simple;
	bh=tT9TpP5vE72WP/3ExQe0j19AELXouin9xAg4+EKwlUw=;
	h=To:Subject:From:Message-Id:Date; b=Gwkr1UE+6XzrWHwRsB2uf6PgR3bQOGMCCPJauWwQJCW6zY9k1NFFUbY9AW88mzTW1HWQRFGlyY2Dxr4LtHygt+Cr46lJHbJqSsO7RFYF3R43twq3LperB9YIMag1GH5SMYk+nau7wTYQWPIbRGQk7YPo/UdKKddjzXyY+G2nx4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFtA/Af7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFtA/Af7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0670C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761486593;
	bh=tT9TpP5vE72WP/3ExQe0j19AELXouin9xAg4+EKwlUw=;
	h=To:Subject:From:Date:From;
	b=CFtA/Af7Lbr2kpam3TkMrrZ/DNsXVOyaBtTliYRpRcTgRdAPOAg67s7FY/nc1hAtY
	 WZ8vStyuZ7J2c1rgz6WgtDLNPkJZxcz9rbFKzQp2txtdCWssgSb640bpUfRuZ6vSgx
	 HZ56aShNp4eFcUKEIr2oAYEF6z3/OkMvMHmYWPU2qBIMyO4oMoeJTemFrPe+pvu5xc
	 GaLHHdl0s+r7XwKhMxBI4cDeSbxL9qmiq0bhv5PYTqP2TJ5W89EgDrrse3gipaaZny
	 Xk9QRnfMfgcSnusdNhOi4W/h8Mf6GcsnAqaqmha1pRxJ3I56vK36z71oEkEk1K4Ehv
	 vGpM+w4QDRk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F8CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148659357.10161.9491729104642640740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512f4f5bc5da79623f4cc87e981734d5c8e9939803d6b3f397cba66bc7ed9516
Date: Sun, 26 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761486593
