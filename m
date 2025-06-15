Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F63EC5
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749961194; cv=none; b=sVGQf4RgBq7bJyYubKPZuctJuvxIj5MdhXBgwcfNez7Lz1qOTMWBR91e3woSJOzTsfHVtgSzFYHbkYXrXw0TyiKCzhsSph/PBK9RIiX9RWDFSCQ5+R8jlBftRqdfgYroKVw7FbIOWdTX4TB9SsLFc15LvoQcvd8PaPUOkJz636k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749961194; c=relaxed/simple;
	bh=qXv7bowLdKZLTOHbXre5RdKKEJfjnJyLb5qNRDKbz5U=;
	h=To:Subject:From:Message-Id:Date; b=mHtdld+AtYCKrIRcKigg4mYn4tsrbA2RsLGafbWuACu/akWklKz3bqzijLHfyaKaEbxWpROaUeuAuWW9a2alx5Q8FaE2V2lUTx3AgJBT0YzSzwqUKqHajhD6Qxm4o1w7fSWembg/fDRTwFqOkAcmuhPDee986JTkQSHszaPsBsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8qd1pvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8qd1pvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89ECC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749961193;
	bh=qXv7bowLdKZLTOHbXre5RdKKEJfjnJyLb5qNRDKbz5U=;
	h=To:Subject:From:Date:From;
	b=G8qd1pvU1Oq+Q+Ct07NxqwrRjmazrou7bKM0sTOhaCrbolVPsrZUJ+BC6lSPOl2XW
	 uCMCPp0mu3B4styUE8y2OCs9SVGjOubmWc2kszWVHWaSwMJ9cwrAGaIkp4Rao+34HX
	 HSxJ4PUcDTWkCzPCbSnm5kMo+pnhvJJdiKdx277Yh4Lhq872MEWZz5xid9z6SJJohC
	 HoOol7gILDyIe3b4mOG3nP7uASEXu7sT5jHfVkBDp0isjGqC7BhXvDaxIwT6ZBPwtV
	 4kx57THDQV2eb1aK6GkkyqmAZHZ/QrOhLxNM5F9XgkJnJSxsXqUf4Ea/mG6wuJ+omb
	 9x1i2NFtncc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CCC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996119358.28454.6682457772531377444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef5f8c9189d6ac4b9d2d156386776628ca528efbab61fa7cab0263fea8e5289
Date: Sun, 15 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749961193
