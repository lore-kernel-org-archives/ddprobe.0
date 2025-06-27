Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081EC19F461
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751026194; cv=none; b=b6Yd1RsZrYmw+8kYBuUF73jsxNrJfZgtXiIo+6JxEFFAtlkoyxf+OFukQUbPD44qxlz1CT5YZ9QX8JwBH/ShzmTgXLs7zs9q7YrlFicp4UCBoUFPRY0aceKA+CoqIcYfyjt/1rWjWVCsj6zaOoVJxvn8x+d40Ho3rCuNXhYX6EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751026194; c=relaxed/simple;
	bh=l0PcR6rbSXiPlevwL6EVjpKQm6HDLrP5PB2ZCgfxCWs=;
	h=To:Subject:From:Message-Id:Date; b=EdscXcFxBk40GIznlTA5k1Mw3DMIaFSpD/6/3ePB01AxcuPsUV2oHt9Yx660gF1gOBfztoT6GfYhKUGdrZtZH2o0Zpx1DVEhpSILqKLjjYBzLvcY35vlRTIDD5S4Ff3vbBqjo9vDwoezvlgjOa96Upgky5a9Nv6x+nAO69KeNUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNwOb8fC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNwOb8fC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9973BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751026193;
	bh=l0PcR6rbSXiPlevwL6EVjpKQm6HDLrP5PB2ZCgfxCWs=;
	h=To:Subject:From:Date:From;
	b=oNwOb8fC/yoheJU5ljlee6qNuOrKP8U6qz4d9wbFEjY1Hbde0SQ8zX1IWR244scUe
	 zUwiStKDQtwoUMulbJhGuvi81iesO77TL8QF9wzs6o9pushCLm4mci4FN/E0k1trfi
	 Mr08pUUPZgr4kUR2SKFK9lYhO8I5JlUrejaherkG76PfyBwFW7MYbEPKrJyTGjmyYU
	 Jjd9CxPaw+pMCO5U4440AEK0IHMXMf03hVIxo58xBk32zRttCI/y4+CKYBZNGbIhK5
	 CrPojoOCMtA34tfXLt3QkiF5JkECIA6zXDodZvbGfIajnvCq4ccwv20bttyL2sQWjw
	 I/iq+MmY1GLWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006FC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102619358.32354.10048997616191177471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ccfdc705689b4cd660a80db4b17c7e892b3a80d026e4d50ad0805abaf37610
Date: Fri, 27 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751026193
