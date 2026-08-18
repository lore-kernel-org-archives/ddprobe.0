Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3225474F
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787092234; cv=none; b=GPnB1TmCDvgVy1H6RW5nHyBL+ep354N87wCiaIGV03bhsBRCaUH7R4wKUdMNtRWc6NvD0RgLEfbGduipfvbu/ZkuNdWF4tIzaI0SCle05iEEzj004+hTZm552xhX29bkQT45+dUoV+jXanB8GxD9YlRKc0SrLvvPgLCT5K6jyRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787092234; c=relaxed/simple;
	bh=oebksdmNVjK0ZoOIZMlPFSNKE85E/uSDhY71v3Io1uA=;
	h=To:Subject:From:Message-Id:Date; b=WwAJ0FyzCre2zawvC9/IEUtsHStPMtbLtk44dK+dWAHcSNlGvREwu1mn1BjA415E2QLtcaUv3geK9t2whA2cHWklos9TCLT8zx8mq1MJL1WPaTxOHcU4FV6HDjylHwLj3dwuI5FWZqsdKbF4O6nEBk1HXVA6wcLYPl8RmGQ82j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QY+hqcNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QY+hqcNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA632C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787092233;
	bh=oebksdmNVjK0ZoOIZMlPFSNKE85E/uSDhY71v3Io1uA=;
	h=To:Subject:From:Date:From;
	b=QY+hqcNbnNGSNiJI1juodIpOwv3I4U8Z9BU2veUXAyvFXHMpsCOUwK+fs4XwAHl23
	 2iLtPtY3VBymNg0T9y7fkRJeluTf8Tj3V+GYDJ4WqhUC49f0yVkFpH/qeFUyQ8RSmI
	 DbC1lFQJ19UIQBdEebaywlXLycqoTrLsEoEavdj81letJWOkBV8eZy/+nsxvNdBvVG
	 hYXIMdIlnxVQUTpCOngJy6b0LxZZwCZp6oi+NvKhpa1UcIJaFeJbDwHYklwXykJDnx
	 pyXLE06sYtEJEHp0IO+lQpq+Mck/KovoUA21CPnDsxznRCR4RzMRRvPKNi9wWYtLLA
	 ABn6jNO7wkl7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD565C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709223368.939.16571303373809471870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18cbc32739fdad5da15f653fdccb4f078a3123b3198196ee6f70979499711eb
Date: Tue, 18 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787092233
