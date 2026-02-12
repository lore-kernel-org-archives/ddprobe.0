Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F96241139
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770898494; cv=none; b=LCF2R3lXXrEE6pKheT5VRlqRTJLW/MzF/I9nnVxIz+EFNnOwaFgLj4BqgPGqXntMhc1lvBYYMPXpXIKmDn9N+6xGeWGuWtf+uxaY+Zsvqm1cmK2wbnydM7ipBrqOCnLZhkR3A1T4Z3ulM2oZ3mZb0yg0EJXJbp3KV3qXjfIbY/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770898494; c=relaxed/simple;
	bh=XjOKhcwr91DWobhsQd3El/bpS6mORmJ9GxevoSaEja4=;
	h=To:Subject:From:Message-Id:Date; b=FjKpa5RKFfVSvj8Eu+HlA6JxmAS4C1LPHWZWyUykH6+d8Nc6In6fKK3a64G36O5YfjXopCSmlSGTaDQqutJ8uiCXTnuSB85aY1b475sh4jvLrZ/CGSOZqVR7Br2zszI1UN4X9F05zKGnQf5WE+5yutIBrwTlwslgaa3Eai5y+Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ermGIx8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ermGIx8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4E0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770898493;
	bh=XjOKhcwr91DWobhsQd3El/bpS6mORmJ9GxevoSaEja4=;
	h=To:Subject:From:Date:From;
	b=ermGIx8yXwC5k/KAwLgookP7CNLMHmTxQrVEIGkWmu4vPTTcxXUZkZnAd9PIH9xfP
	 eon6ZEHClDHvvl69V4gvrjiiQt8P8ZJND4+FQNl8R7eX2RkEjbODbq5lKmu2CUcb49
	 BTCAPhH45SJqjYukG0nFYBTR6Tb61cACglSeH6NK9xFbxCvZ6/ZMJv+vcoBDYM188H
	 wWiDXmpVINgvO2z6ym+kSPeo0vO4Cql1EiwrZRcO+nBtPMSdPyLgMNl/VtCHcIXObj
	 WVJ+mIf5oa4KIp2JQn60Mm/LVuykDd/0/Oyt6lblIJFc68cfZcL8gZ3ErGCrhQbZSq
	 E94Aj9O2yvViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B86EB4914
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089849367.32724.2963530840207831333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aeba5e16b554cb2624288b67a9bbf9d540159c5790923b5756e8586d78788bc
Date: Thu, 12 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770898493
