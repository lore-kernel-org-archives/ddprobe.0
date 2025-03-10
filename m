Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3413D224220
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741597734; cv=none; b=KfPG9z+N0GEPC23fHWNCkdvlX02HZ6XReqobGV79EJvQzKrslsSW2UxBE3w9KD1Ai5e1DtBou7XGuJaZjGGORGXI9xTO9oU/DxpUFZl97nB3WDwH7leuiML0mL/XJgOARPjZeFRHUu4t4aYUW0Woh51YlExpFQ1CkZZD/rbuf2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741597734; c=relaxed/simple;
	bh=zQqMtD9pBlSPCz/sXp49TpYPZQgad/gBC/JZ14GyD7A=;
	h=To:Subject:From:Message-Id:Date; b=nW4ClHzylBxZsqj2epcPv65OI8I9aRgGsQ+eVQKh6CQurtIrgDpglZTZQ1xpzHql4RGskkv6udXyuHhdDcCuX36u7y+f/9kAdSuPo7EvgmTIleKDuB05s9FjwewcUjBI1ZPvt1+gD4le1Mvofsmtli1Z5SUq1NU/M4G+jd0Ewtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYEWHQck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYEWHQck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51EFC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741597733;
	bh=zQqMtD9pBlSPCz/sXp49TpYPZQgad/gBC/JZ14GyD7A=;
	h=To:Subject:From:Date:From;
	b=QYEWHQcktz7vkwfbPxs6Zb4VpBh+GCTISYvWkbd3fDvJszr9BKHN0BOIU9iZW7bqw
	 3TOQEpAHzXsN1B/ARdS02hDGjBvBjr/8cKPO/2KBsOufRUf6xRDGY5an6LVcXlTGCm
	 nPCD4cxAP4OzsOS94FYkgeDo/37U2sTcF7WjR8nODpUnfe/I8c9bKgb5dNN23l+XKd
	 UoUlLmQE+mTUlMy8wc1ZEOTnopRokH/0DneiE8BLsMCPjLmkSMgqrIV+1yUw8AL2PZ
	 kkRSnfpBAKGKjktDLO4wH13Ht7Gz3bibpShrj4N63fFvwLRAmmPst9iNzp0d/eqe/n
	 mmkdCEsARFWrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95385C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174159773360.17005.3449523963412121338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4780be3b7ac38273dcd3b9d11eb7f291bad06d20f72580f6cc7e174aad59afa2
Date: Mon, 10 Mar 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741597733
