Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FC5CA6B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777855654; cv=none; b=CnzTFQ2mCr9n/W1DxP+lArH8f7mjnyOPO+puDtOGODMO6jhP7DLIC0F1KDTLfhv4IA8dRZKFhE3XAA4dYm8T1SlFfaZ/qObHtDuTNm4IEVKd+hAbmoOQ38vODVpfIIN7c8D0KC1Gu+toBMCpwjI8DVNSDcwlYO0GUrH/Qvf2KZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777855654; c=relaxed/simple;
	bh=hqPx/XTPNVuDD0Lmc6N/y6evs+dzZI03mxi2rbwgyFc=;
	h=To:Subject:From:Message-Id:Date; b=PkK3Vohf/+0J4zl8N6glStV3L5SZGRZqJHD8xC70NDkm0kKeQU5xmdTaS5NMaRjnquNVeaBuo6hf2/lY8x3fuUGsFPVhrC4SI3NpX80Z9Ka6+dlqjuS/ToY2PphGz+pevkjqhp2cgAnYQUR/g1iWvCeW0qvyRxc9T85gnE+6f8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6gKywjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6gKywjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF96DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777855653;
	bh=hqPx/XTPNVuDD0Lmc6N/y6evs+dzZI03mxi2rbwgyFc=;
	h=To:Subject:From:Date:From;
	b=R6gKywjvbI+eSWBrBu8vxb6QAEfo8AbvlGvJ+7xhBMdvZXxTOvNbKh/FzlR5bEgrS
	 jOVbtCFiszXJkNIcLrHOWUTZvhOCPMAwvgXy1QfUdsrZ+IqWPblQ35hNvpa8SgKFpu
	 3p3psQtoKT+bVC280zodSBBLIaagocxDVCl5QkBwCY8ce8jLxVQI9vBOiu9i2QU/IW
	 vKNBi6CheclP6gSIKBYfufJn4vjiwC9GAABOiBH+edIih9Nevz/MaCvypCxHGhDvoY
	 BQ9e22kCEnCXXVA2/uGvuB7DKeellZYmg0RY3srl+Z7ttqReDUCnZzt8W9QXhCXKwg
	 /hwaXuKHp+Jxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7BECD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785565368.7962.8646711180879284894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6e4450667224b215632adbace00ad9b6ea5d8666c95d4713768d24abf33655
Date: Mon, 04 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777855653
