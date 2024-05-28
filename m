Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690392907
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716860063; cv=none; b=bInVxziaHJNxrUoUIq71SZHYCKY71u8meulFEPi+SnM2Xi9Mw5Tsrtj7258ZetiprQLJBNAnL67j2OE8a62kpuiX5Bx+uKbRnMe0JKGd8zMdjpqYYZyDNI44e4pk7NBml5zDcFKjUAdcXgat7sF6JwXlVLVqvFeeHzBGZWC3770=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716860063; c=relaxed/simple;
	bh=92FslGuKyqSrGRy5z0EWqt6F5Tfyz+/VuEmFfZIzWMs=;
	h=To:Subject:From:Message-Id:Date; b=ibWxvZtQsGMhmv5zNhpmhM0aXDRlAqy9+yAMmnd4szCvq33tQT4oX8q+xRess4fM7YcxAlo//lGxkcej5Da4ECC93FXkCeTxo01MuiN0HYrxv7APt46MN3JdJaeVdLPguW0qx+tkLDJsjNOs9kMDBu9LPKtQGS4mjjP41w/y7DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFRCHoVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFRCHoVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3F0C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716860062;
	bh=92FslGuKyqSrGRy5z0EWqt6F5Tfyz+/VuEmFfZIzWMs=;
	h=To:Subject:From:Date:From;
	b=lFRCHoVnqOp473HCONs1+LOF7sUVPbrE85J8oSD+eUqMSI7WAtgWkv41hfHnubMWs
	 ZOmaPZY7WtpvMgtzHHBGAQylGQHDqTeOJWhmYkb1jC+NUfRAHF+/jxcOdnX2U4qdcB
	 ZiE7S/FbfFrKt1f6CUSqJud0cxmTUXhpp4D7j0/u2ihI33QXo5LLfpIUlQrw+XdCGB
	 pOWXR1PVf+KCb8F0oMCmSYjLmQayhSBRdLoRunug3hFnQTlsLovx76/r9X5uaMRvIQ
	 MMqEuljRNWt4ZR03axBgavzm43F5RgiHG0JnGV6IiC8P9yHxpAJLFr3VpvEaCyJEel
	 VY8+6O66OYfFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9107C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686006281.16640.13330348723721582549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20256e12d3ad13ef1a098717ea8118a243f9a28cb66eac7b7cd7557456af82c1
Date: Tue, 28 May 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716860062
