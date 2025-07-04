Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3034415E5DC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751603994; cv=none; b=cJQA5ombzHwqisrYUhxg/iKWfm6ol56i76MxzUvFoJ86sD+foZJRjI86EL7IIuJyzTD7rmUqEJ3imdt1znojPfzjlO9W5EKE19H+xBaT/OLGxCjY6RpCjwD1LqKwpBnjch4V5KeWYu4DbIj7U6OYSeagyPb89e5DS5O5sgXjwNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751603994; c=relaxed/simple;
	bh=JNukUFYXj898Euoeaz2j0Vo/33/RIsyY4zj8515fhRo=;
	h=To:Subject:From:Message-Id:Date; b=AWJqdIQrw8TSDZTXdd4LJH1p1jz9nUrVEexy2X8pjtIsMiVJhMaXHs1y/zk3YcGfni3TzH4UeOnrw4DCSAx+QPvrYCCJZbg0gIIKvxLinyHOpbuBCXWAXLHrqP3QSzPCuT9D2/d0B7nWBKQlqMv4Cwf1njiU2qKI+wBVl9CQ2YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuXpCLwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuXpCLwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751603993;
	bh=JNukUFYXj898Euoeaz2j0Vo/33/RIsyY4zj8515fhRo=;
	h=To:Subject:From:Date:From;
	b=uuXpCLwfWVfw7G9i2TjjxHwU+SZHsJ4Nc9w1H0Kswl9+9FB2xA+aSm5UrkU18ACP/
	 pEXxg+n6l0YfVQpVglbzaDnkEmkc5w0UdfjGuaZVRH7/kNsQVqXklWHUHi0Zte0dJC
	 NXxGwg5XZWUc6viqzKD2GwdFXVAaBdTyGJye3RpTozHEGJUBqUe0I5pX+hPmQtTHG9
	 qpglFMbRch4+aMcvj3sOC1iXnYwC7phCSAqteM1HPwR+RUOM1Cm/y6JtEjxPQ2M8pl
	 vsh+YjUIc7RYLjdSkEvMZgWPbXb05I0haqhztn9sLnC1lBRxAv9pzybSOAP9bQcnmO
	 WBmYWE+v4yJvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C22C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160399357.9449.642396712392624561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86358543d31f2cd7db7c63a364d5c3dcd81eba8cfa324698c954e690a9acaa64
Date: Fri, 04 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751603993
