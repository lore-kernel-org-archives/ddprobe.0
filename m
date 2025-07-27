Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EF226281
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753624794; cv=none; b=Dc7n8Sqw+urk4voKqJDO154QNpsbMKqaINTQ9lACUXctFvVlJBWxGtSX0qgHqJl9TtZRUc4N4jnkPV4GI2f1+kyZYvgojm7jFsdSplEiTNR0o58I5aD/4F1h5JnBVmd9uhdgnEt4a5gxPDC0wA7FXZPnrqWKlnS7r5ZU02Y8Uys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753624794; c=relaxed/simple;
	bh=sih6FoXQ5+9ZGxQpWLsoIe9ZVyVH+E+sSfvX9bNnUR4=;
	h=To:Subject:From:Message-Id:Date; b=eDjNZgmOS7diAbhoXqXePufHsD3Lc6wWWPWMRXYeI2o6DrfEBCm1G5L6Qx8sLAv+pBD0h0v07vCOP65e5mWVknDjqZ24mfLMi8F8znL2GB+fliWRxaT9RGsPAWLFem6JUREzc6Z4UUF8rFOGgLwiOXq2dYuyRb8V1WRKx6a3XuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+9Qj/O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+9Qj/O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38CEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753624793;
	bh=sih6FoXQ5+9ZGxQpWLsoIe9ZVyVH+E+sSfvX9bNnUR4=;
	h=To:Subject:From:Date:From;
	b=X+9Qj/O96UYnuccVrR/B5wlBtZv4teG+01s6t2Ms7D/zuroYnaSYt5xR6ednQvQdh
	 2MdqREB2JKoLGrXfruqAAboWNKAkhe0pPiztR/zqM8NpWO0+w1iA+rfsm4WhRIhrjb
	 RikEtSg5nFQicpPKzoZNiEmnAgCZn4ixeNsmW7MOlxZgCBLGq8epklCoq3zGZ5E7Jm
	 9RF627jPntqsV6MXjsHW15MjDmB6cMwOSYJQXgxNdcEz1zdTbqLff3OzVJCRENHgZk
	 VYjTmRuH6o0/cPY+eehEEtw8yTd0jK27ifP9BsbWVErutVovBsP2YDBXO3rytXrNhZ
	 KmL9DgqI/l8yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE1C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362479358.29867.8392862272817897414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b90cb281f55902b895ffbf6eb13cd3a1a9d9f26af7996e8cffb0dee2aea1fc
Date: Sun, 27 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753624793
