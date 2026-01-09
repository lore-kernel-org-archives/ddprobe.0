Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047D82030A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767934434; cv=none; b=r/0jrQqA4VqOU4Wy6eKqnAikdHhpPlVyVpZKIisgB0aSuL9c9oWwIiKgVseF6wZMYvAw0ZcHHZbQR3iapB/gsquPEIFVPYhdVPccAEcd9+P/YyS5HnGMNSKPIb78Nx0vndH1ybThp2JnsvPViin0XeObZBY6UMevAb/Nen5h7UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767934434; c=relaxed/simple;
	bh=+cFui4o7c9n+5EJHTTHdxqxzRzUVkldvSiMRYAQ+n7M=;
	h=To:Subject:From:Message-Id:Date; b=RsxjftYW0iKr+T19RhtxIXf8aa/p1dfrwh7hE5jjvDeZMwhxIVbsCEwBFvcCIw6nEHzlg9L65G75gsY1dNOrqvfGtczifryE4SeBLqOrurkAeDdvxV5OwcfVgEdn42sYHemPD7Mn3XsTnbhmU8y4cNUy2/WCVLcEft+BNOOHd10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLR0Uh70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLR0Uh70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB78C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767934433;
	bh=+cFui4o7c9n+5EJHTTHdxqxzRzUVkldvSiMRYAQ+n7M=;
	h=To:Subject:From:Date:From;
	b=SLR0Uh70LgV/RitUFymWqOCkQ5PhxYaFF5clU9rgzVvGH0Iu/Y8EbjcSLdTGhIeNk
	 bMecVaJ10TZyR53JaRL7VduA1WnJLWyyad0lMw1LZmBZ0H5yLS8+UhH3a5BJ2o1vx2
	 QW6U8p6+74PM6Qu6FM2vGbcaVPXNCUuy88QCRkPhB/3CWNgBDURVBVzL137SfGbzQp
	 FEXo8MmFZsjsdugw51eG+bKNp9OxXjIIChaqjFNea20mij95PV7nyagGpJcQ4COBqv
	 Fnsu5DkbHCuLd1ITCGfLbu4RnCDjkonuq0Gj3EFot+K3FoTH3YEPtDnxly3wz0Iszp
	 sHKaeNmCvbcJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20AD232DB
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793443357.28695.7222380387506153769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc2e876182a432664d3b1d47aacd19a2c3aeecbe8b996ed8c67a5ecb53e3652
Date: Fri, 09 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767934433
