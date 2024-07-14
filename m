Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BB5D51D
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720930223; cv=none; b=lNbl2jGNHoZv78PlEUv055vPhqz76dYzLoxFZtJyi4H7pLSS5fTm6xQjnw9hhiyKoZeXGQPr0RfUb3dmRipmEf1EyywqFbYi2qdCn1O34pL70GtVWeD3bdQmsMebG3APERzIubq+6LbsTOkAuS3156AVXm00GvN7RlTl3kSFoGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720930223; c=relaxed/simple;
	bh=uYZ1TSJHmXCYGVdYkVfJmNhGv2leuNQ1+BQ8zNHi0wI=;
	h=To:Subject:From:Message-Id:Date; b=dDKmFr2eVglGJ6YsXhBaDnjdjP3oXCnRNO3DEUGyDNnxuJmgecDoz1p4aJiido/ehCS7vUq11l639axmMqUBb2jeuo6nZnJp4Jc2wCrjJd1bZbDBdsRyoyGD4xJG7UusHHmQWLePt4X1l2tT5jZmSY/beaPHvRIKWnMRZ+NJ3K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8ZGkkd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8ZGkkd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8179C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720930222;
	bh=uYZ1TSJHmXCYGVdYkVfJmNhGv2leuNQ1+BQ8zNHi0wI=;
	h=To:Subject:From:Date:From;
	b=j8ZGkkd9FaixALH9qrssmoTTDofdR3eF6NIOAgkG3tpWRkW9baFLh+huHTqAFeS1B
	 23TrSyPXzd/T+y6OhxXDO7haKNKFQH4PNW/HtOZKQKn9OtP8icpgHNhKAB0TSpgL/T
	 JTHEXsMHuFnQPfsyLVrUSXwYWAaDQw4Bo/KweSfT7vo7n9xmEAlCAlfe2I/lZEYilH
	 NYKxaDoGTTgWGGRM/EH3BBO80yw0dfJ4/C4a5beyS0D+EhZT4W8+02tUH6a4e58sB6
	 eB/e3Qia/06f8pMjs7PEvLaRiayTnVKgA0JdivhT99sCVqCAN8MFj4aWWOKIS6Ee1h
	 DFLR8GmyTjj0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58D8C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093022277.10394.7121152210122504301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a325520aca806a826c9b9b4a8ed83687a341654f6d3a54c06c56cfa34cf84fc1
Date: Sun, 14 Jul 2024 04:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720930222
