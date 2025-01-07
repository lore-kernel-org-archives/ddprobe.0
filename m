Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163055661
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736211354; cv=none; b=JYcTHJgEwudKHkq3UaJei2GhE97aE/12GBabFoSRISSCGu03qT6CsUdGAywQaqq+tSLa2InePyUUrBFIXOClumMYb7Vw8KCVh/Lz153CAfY3WIFb9uSCcDDtunr1lz587aVtQS4wvYQ5x+jXCP76yaOc23LrwEgZZ/fvODs6ec4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736211354; c=relaxed/simple;
	bh=vwB+7QFZdnVuz3gxmhsngH5WNcrppRGcdcqvS1tMyTE=;
	h=To:Subject:From:Message-Id:Date; b=auOhAqXIUmxAatMINEMoYQtqfZXhI6IuPKjozcaV9BcvqOoXbIHTS5iboOK0h4m7IkXQJYNhgnAN+slY4W9rXAVwvO+6uM0u7zrgMiFpH3ZhFHGuSMzlfVPZX5bEMr7HGFrgGZfXNIH8jIGTLJCBvRpnz+W9ds2jbROSErtdOgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k91yh6X6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k91yh6X6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A171BC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736211353;
	bh=vwB+7QFZdnVuz3gxmhsngH5WNcrppRGcdcqvS1tMyTE=;
	h=To:Subject:From:Date:From;
	b=k91yh6X6WwTh6thGNtTWHs8q7Ee+9xZt/1IOixRsTzDCHaRblkqcIGvMr06aTiXep
	 LOjEcpuQ7M7O9wMgjoGoBNPSXaZl8O/II7y4CHkOZA4zpHXEXYKJ1LdVFLGcCTmX+5
	 cOSRQD4MdWh4PbyxjCXaK35gKuEBrASFmmR6mK3hRedBP23L4G5lgta+8KNBDQvTd+
	 ifgXPI3E1zU0rAndbEDR0WR0P3pyvR4R1HVOjoSWAl/OmraNe2kdwY+wlhyEia/h7A
	 EMSCqxpTLfitjlBiS5y23EsbBjl6Y3uASxU9MBUl1/kqQSMFEzE0r/T3mbiJxSGjK+
	 I3icRTTXKo+YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91659E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621135358.7356.3009813155130979935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac893f1b254a5e277e477e20ad00d5ba91aad2179ff40fc3c0f84bcb6f9ed9da
Date: Tue, 07 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736211353
