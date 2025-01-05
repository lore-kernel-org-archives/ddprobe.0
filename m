Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AA314B959
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736079354; cv=none; b=IH5DjEMz9qeUQQu4uT4bYjLzZ2DYw4SwRwAch8/UlwfTYRIGe2Q88ESAc+Yg8Soxp/dIJJGXC4Bm7xfM9Sd3eGAsjdyB0F7IoGlPrfYjrZp7l+B6GHr4TlLzgXjhsWkA4yDQiD+nK3G6FxH7hd+q8ETyOtBWSZE1cFxLfD8hulc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736079354; c=relaxed/simple;
	bh=lind3VlU1dQmJbQwgPbxaU3P5mTZzqSSq4X5XKksz+s=;
	h=To:Subject:From:Message-Id:Date; b=A3rBLWNcvDyqVLC4+w3maEJjae1/4rD9vxMw8RiHB/+it93F8egQjPoWhffW7+nJeUuMP5sOUrFOJpaBj50xpZXPh5Aen3zZWijHhZ9Ed/fAfB/dMPLNwIQtho/KI3GiX7nHB5JyhKLjznIk5IPKATGX9OpN0NWs2yIGLbLLRFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSSIGHPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSSIGHPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B565AC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736079353;
	bh=lind3VlU1dQmJbQwgPbxaU3P5mTZzqSSq4X5XKksz+s=;
	h=To:Subject:From:Date:From;
	b=KSSIGHPO2qGhc0iEs7s7Wq58JEa/wkwp0wc20cIXzw8petO/MOWe9vfgntZnocq2L
	 aiTxgGJtlQbCu/YJFTBoKW+rjc6VmxDowLu9U3s90G8CQLX59j4Il6DvJcq5kE4eMH
	 O+6i0fXQMLlgg3r4ZZixT6BT35K8mqSiGgS0lHwQFBsnyLNd3/NF9i4XMRqRY0XTY+
	 KrKEi9+xY0Ag6ioyj7PSYOYF3soKwtKlN7JBmWVatNnhOoPM5BPAbDV25OLOddzKA3
	 Iud2waQscWtjLV5rxMFPRYzwAbV+0ieGDtglSDHHFz1YSlRXAe1TaBY/oMxEX9OVDN
	 wQxYsBxE2weuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C60E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607935360.7270.7323862997500415388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd01e34b8f31243e0ecd40ee305508a1ec358027ee34d335d0fc44806b272bd7
Date: Sun, 05 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736079353
