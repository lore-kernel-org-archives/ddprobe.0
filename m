Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5288C757FD
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716383003; cv=none; b=BgR6nxT1rdLGWE8YfzL2HbL/zr5uBpjBIJZgUbJny/zl+I8vnLJY2s8/L/ty4eVtgJi+DFHpWnu6CuaRql1/QhaREIQCnx33yFrTC0WTyHbnGbvKvHpLcrYzIkE6eCRZgI/+8jxnwSxiyXK5C1FP7QWo9K7oict0qTO3+rpRBqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716383003; c=relaxed/simple;
	bh=8Ejnr7sWAuNTnhsJpQ4Dh4mNsu6woRVybIUhG6Xdvro=;
	h=To:Subject:From:Message-Id:Date; b=os3OBPmv2Nzp/dvK7oQs5PsAczKgA0JGnGkAZ6yk9ui5AbStC5eKZxjMGUNxcy2+aNbBWkVYJ+KDEHe6kyPrUK7JcZb8Q3O22TsUqxV8JSQfjAOrsNfG5t5mg8uSHezqkps45HXfCAmVNw73TSB3t1pI+OHcVPtKwlP2p7jaZwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6Pmuuef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6Pmuuef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A2CC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716383002;
	bh=8Ejnr7sWAuNTnhsJpQ4Dh4mNsu6woRVybIUhG6Xdvro=;
	h=To:Subject:From:Date:From;
	b=L6PmuuefGty4DhSJi6R5Vh25EDFDXHqrzYa7VPhr8gISZN6sy2bwl2bu9Fk9azp6M
	 3CkXGtRsDU4EBElaXpLOeSWpMae8lUVC16iybct4niOQuRsPbQws/7b6FDJtHbLOR8
	 xeYeVMxKEG2JtDX3XVeJyUGa7lNCYf418266b98rJhvaHuu+3ldrO5NKtBcX22+d8K
	 iYHgc+RgfpRvuUJA+8pJZszghCRIxBueuWavHQE3tk1RFIvKp9wN1b2Ay6c8HYoaLd
	 oLAjec2Mqcq3UGnMCco5LZ0/4Up8WEGOvGbklPEt5aAtqAszaIudCV1YMHKeWV840M
	 mZP1WtfTCwrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD254C25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171638300276.10669.11219968753473036781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36e8b045383b6497a6a14afacf84c647fa266630102dbcb6118f4e6d8c2afbc
Date: Wed, 22 May 2024 13:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716383002
