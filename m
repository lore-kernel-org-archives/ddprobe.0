Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5701E51F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722001554; cv=none; b=OCBMWJ/MGMT2HP58AnwdLNJVGvs3DTQhqHdcrbPp/u34GoKwkQPpVaYTNY2jDHYeVeHTTH5VEGLWSbUpD082D311PZgYSUMH9ZPcqtQGTTtfq5Qjl2cFoH5rd5kvmovDS/AfI0Fy0+aOZqaiVjgwmQFZ4kdvHrSSiOYHp3M11yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722001554; c=relaxed/simple;
	bh=Gp6NdAF9y/Fpjrt05eU/3jceFPqBx+NRRISMBwBN28o=;
	h=To:Subject:From:Message-Id:Date; b=AJ1fUCRdTN70dd779u2B5GdczdSf4mm/3uMXb6eRSCy/KehJ8T+Q7xHmau5/mNHb9rGJ5mSmly7eRWY6DiXMAviaP0+mUFkDVQK9Ii/BWVygvuvIpJrCfDfiWthqDyIx91BP1S3NTdyS2OoT00EdFaYkITkvAtnbeWVpWsMskJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VX6U+0rR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VX6U+0rR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7639C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722001553;
	bh=Gp6NdAF9y/Fpjrt05eU/3jceFPqBx+NRRISMBwBN28o=;
	h=To:Subject:From:Date:From;
	b=VX6U+0rRH9Td3T7jdmFLu9BVM850Hjgsql0Hy6gz1Uq/KtNCWNkW9lXig02sRJ5k7
	 w5jlZCfn2Oz4I4AzEF7XTUraZPaYH59VR6KmJ5jKr+sB0GZvctiX9N9tHE/2OUpqQD
	 Qfleig5DuYDv/cISbsZZClI8AjQ7tkdFyNDRuqFd0hZlTTAmmyC+lkapOmNaIXV2JV
	 ahYTUJV8U2jnnFt9kyInqsFyWBaLZ1YmAQ9RVsh63/61Ob3OfjKiymmawgp9oFgtH6
	 7GYJixGt6k1aps4yxOML6Qu2elCU+OIp9Eug7XBmZ6A2uqACgfc37HTFvsJTPswH3c
	 zXmjnFCI4mnFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B3C3DA70
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172200155359.22514.3092577721773944452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49def5790f5c5773062bd84c11ae974384ac92eb7c73811ff65953205b10b08
Date: Fri, 26 Jul 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722001553
