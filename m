Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F93E4028FE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781537194; cv=none; b=RqkbExxuwtbt0/Oxus38xO1k7ZwZ0d+HNhJDRjcZYSETCUKhz4dH1AIbenQ01Zq2tcCyrrBRxEC0PdDevSx/A6y9ewa/+5QTP3u3L45MGjZg9k0+i4TYpMljUmXEHMe68Bpx5u6qDZyhJ4WKLkDym/MiCv5MtZpEPe9IDgUaXWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781537194; c=relaxed/simple;
	bh=gltyTDPqq6TilV091birxoSoDN2nDrGDMPi/xz32+fw=;
	h=To:Subject:From:Message-Id:Date; b=d+OUjK3tYP3Fm6bZuNnRevfCH4PqrLkhlu/013VJraDg2q1XNqj510BUr74yWejPwWSESCX9YDg4GwsFRz5wUXexUf+X/e3bMbJfuKsxmZKOUNdjPEGD3xEA3Mu3AG7ZFUCxFTEWcwfpDdupPznFy/PCBUIEXOAWZ31V4cqYGJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FikYHx2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FikYHx2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2CAC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781537193;
	bh=gltyTDPqq6TilV091birxoSoDN2nDrGDMPi/xz32+fw=;
	h=To:Subject:From:Date:From;
	b=FikYHx2Dy0wbS0pODcWuNKlmqlLpT3BH0WsXoog1qoOmWbCx1f6qoqK/cdJCyFAAP
	 5bhXynpyB9NXeCDFUw0gj6HzFPhHPutB7D6OxzpCqvDfbMHbRn858nfaqxEk1Tbw9S
	 GxDr1hZPhD/oxYMJHv/GjHKcp6E09WmsUWswm6V/MyuAGEOTaww/e7Ll4q/o2miJZG
	 L7lPmuJO5LUbJyOW/XG900xKb12YZaALQyKu//3p/zf2ntPnPQIZWhrMxLK4MjEvgf
	 pKnqV0Hnkdf9KpKPeXLX1mpUMSjKRG/sShFoMPASbpOaoaeLCDC+6LEnl+PIYmTb48
	 1nI9j/WlU+kVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36EACD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153719372.32429.6270951095964116567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f18898aef5cfeda38b59fd6ca2bb49a2feb24ee082a285ff3cd0cba76b79b70
Date: Mon, 15 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781537193
