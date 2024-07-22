Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6CF23DE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721630154; cv=none; b=mklNFFP3a42ajis5U3wXJpFp1WCDY7EU7a57v7OV/U2lKHV9w1ns97pb1c84JHvVOCnsr92Pu/bvlBtBvj/OJCHqMeSw5E7HvYt6YMjCqKjEIw4zXuZIblyUUVTAwaAy3PcFLtTbBIBUuVkyKqAbDGxYwrla6EOYg+PYjFSf2jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721630154; c=relaxed/simple;
	bh=aCgAOpq6Nb5jVyLAmOIbLXvdGfZM6/YK1l8DAdr0b1A=;
	h=To:Subject:From:Message-Id:Date; b=HJdbQ5ukfyHOLJUlwtVWwolMLSkWPtEQYZtfdLDs2dl2kFrnFP2wlGOoJysxmVvFUFaZNd8X/eKvdMdvaL4iLfqiDFY4HFAwZ98F93HZ9IEn18S72P8cClN8roHBbmUwYtPBAl2RT4tTWf3QzCXd5EZEbz6gaAyjwhxV8oSbOSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of9F56oX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of9F56oX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4999C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721630153;
	bh=aCgAOpq6Nb5jVyLAmOIbLXvdGfZM6/YK1l8DAdr0b1A=;
	h=To:Subject:From:Date:From;
	b=Of9F56oXmjTKmfZ2hR8sFicjUgDM+m9SgxI7goUSQsV4M/XaJzAmQTB5yGJnHSUND
	 UTGqzS24IShuTUxSe9CQyuXYdW3sSNsDWBM69TZLd22BWapbhjKv6PAtdORugQI6AT
	 ExVYfe6RiuEPzKtyEFVOuMbhymUPEhA5ZtMS615Dwdy3JR92FKkZ0Rg+iY2YfLRgDc
	 bIpBEcn5iqp0TA9PmNy+0L119SDkWqMb5P/O1mdsjZQzcvoD9lQZdxLEP5v7Z03nUA
	 59iIW3cAbm7klErYXfaxz8deMgAWjdOYnCAOr+N3yIkD4bM6XsyivCjGfvPLwMCckH
	 8bgcwK4DB9TiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB4C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163015359.8059.2981947023428937629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61730c53c6b8fd289ccfcd73842c8cdb9ee4fd6840d71fd49393836ac2d1c33e
Date: Mon, 22 Jul 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721630153
