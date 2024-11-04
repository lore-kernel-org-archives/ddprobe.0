Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CA913D53B
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730742954; cv=none; b=BvkNcUsEHbaromBEKI15htSRh4WogaHYeA07ZdIZyQksrRlXH9wxiuvdSHgHaHBsAqFR4iaez2QYYcJ2hJ/9oDV/qDZIfibBR+V7OhqaNUzm+VOtmiBd1aAULtYiAmVWRXjiQeUYlPKTd6sDUOZ/L2z3GrN+NIdKveFuycjdl50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730742954; c=relaxed/simple;
	bh=MDBfZxknu9hTVabyc4NEYsYySE290MV5+A/c8Yz6BYw=;
	h=To:Subject:From:Message-Id:Date; b=GQWYTybS8r9uJiyqbXXi3ndKkCfzEtoU8t54ORKy6XpxOWv6+C3dEZLQp4lvLrnqRdt8GhmNpXQaln3iuwRYU1FRFAUAm9/H6VcM6TX3NfvIaNVS02hUL1kaIhUGW0ACdRnXsn21VZeUeG2+Vq5pRabKpTpmPWCrsb07zlm7DyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKOF+mLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKOF+mLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2474C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730742953;
	bh=MDBfZxknu9hTVabyc4NEYsYySE290MV5+A/c8Yz6BYw=;
	h=To:Subject:From:Date:From;
	b=gKOF+mLYmFgDajbsCIXt9Erdn0NP3Ds9X6Ie7gIlYVOcXCRF69tOXeg0/THva6zl1
	 CkXcSabzfiGRIgSjxdpq36FiLYENVV0KxxyIK76+rwObKghrZMEOE9k2YBc7OAyT3d
	 OvVjlPEk52EDlZTgi0C8w/EkpFvsWoCmXht9UahtuvMcyDcf4GtIl2HEb35WPC03wT
	 YLcx0JM8oF37X+tfrChjPSwyFdN0P68pQK/Twb8S+zbEbcpsIGIsd5Z6LLi2kFMGJh
	 Ls1xbNtuUWx/VhvknMFYtMocMBXzz2/A3wDf2um4adeEeHoorVzGhnVcPQbmbl5wrd
	 JmPDBhPvOWOqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93652D1BDD5
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173074295359.31300.4086695452278913877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b5fd8e204fece7cf3926f1b491ef0e28b94d3dc0b1bd1e1c9d85dd88d7c784
Date: Mon, 04 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730742953
