Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B281A841F
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742598595; cv=none; b=mbB1y9ojZUx9QFWOY50sfWoye+B5KPBixRjK8kAAYJ9IHVJgdxmpLJAHy8Wod6r7eBaaRmQu1RnaDfUtLKWi9xn10W6X9nMmZTzeIlZ6muTLj1YPmwhRKj063Jz1tebf9xN+08kcVhSs5TTBbiUXi04NdUsL6wHjCYDnhTFo4uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742598595; c=relaxed/simple;
	bh=oUwioqp2/eH4p7HUauDOvU8JLItP+zbbrhVaXwPFVoI=;
	h=To:Subject:From:Message-Id:Date; b=GfftoiBoT/7AtSGmvSRaKHkJzQfJtLEfVNTG4rSsMkHnoFBBe6b/QiatQRylPY2FygUk3nBHwz4IWcOTxfv/DhiSfddIXyHxC3qiiEfka45i7p4jXIuesjwfsRV1Y/27y6iU/guVDTv6gP4B/FzPvsOfURaee0rThs+yR8VMOCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeOLFZGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeOLFZGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742598593;
	bh=oUwioqp2/eH4p7HUauDOvU8JLItP+zbbrhVaXwPFVoI=;
	h=To:Subject:From:Date:From;
	b=WeOLFZGR0UztMHgrIETG/yksPyioHoAmXqkwNg+BsKm88RFX+bhDB7wwNrzgUxUQv
	 Z0jWQoIrUWTZHH0J5RzKNQCu3SHDLBBpuEs5vNUPLSQ/lwtmC76YtfdH7dWS6bGXO5
	 82ZphY1mn7B7/2mFRRG9VbTGQ5XMy6ahD6QtNwr8LC91hmT4r5GuvEu5ZFGlqob/jg
	 3LAP9KLOU97zLyTeRVCjiVKqYkLSp0/61uMMzEJLv8zRiFW04C08j+gtJrw/pllOFy
	 BzZMdeL99oK35vemYhNLjwBDRp1bs7wWWJiQushcVW/7mHohMsYA3PJpwpv0exUFMx
	 esQvLgiWSOQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A17C36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259859365.481.5741945690132638164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4447e906a1a38d82f5ad610a5d6bce6c9d9f5f5212ce0314a5c16ac7f37dc8
Date: Fri, 21 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742598593
