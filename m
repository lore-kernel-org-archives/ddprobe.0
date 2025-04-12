Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C46E1DFED
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744469994; cv=none; b=HBm06nFWq5hrIlMfwrbS9krNcE6hNsaIFxbuuJkWSQ8oLYIgWAyhgcgpNu5RIRhVB9OpbFiJ0Dsoq2w5z6XuxeUYVoa0duVRlp5ebGnBNIESZQw37PYB4XrWWIp61HTtEIqCFwz2RayT5ZCAK2hH0Z2sKRiThv+GmFMN8QHPV9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744469994; c=relaxed/simple;
	bh=p8NY1a2HAXSocLEDdhRtsxzSEmIvKoQXcE+cExPdv+Q=;
	h=To:Subject:From:Message-Id:Date; b=SwZ+HD59lDjDh9orEq2572MAifOES3lK3hKiWf89eqiGr4z5UnA8KM6h5yOqPMSesZiiq0ZthrBNn32RtEjAsvPEboVvtVE9GIk6SQ+sEqrDrwtUWaVe9OswIeHmU9D67r3AtPxS72G+iHFvbDj/k3q9XUJ7KkehmGQ3c4WJquc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJkWUDKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJkWUDKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB43FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744469993;
	bh=p8NY1a2HAXSocLEDdhRtsxzSEmIvKoQXcE+cExPdv+Q=;
	h=To:Subject:From:Date:From;
	b=EJkWUDKgtR71DqVeSX5SEF7pPjOlMAJ/O/KaIhoKum2G6BoMrohS6zvuZgIkYCoWJ
	 6H09QfWfuQjReDLBn0uzglKFzygX7kbTz8UyDN+gdJOqFhGTmzpW0W0jEJxzwXoEIU
	 pKzVjqb9d1+HLFlawfO9yQt8TI8rRbVjquRb3qAchneaGPP+nRN9GqwJzgOaEjJBvI
	 58vvOOBNwQMrOOzfy0sa89WxQmrMo2Kho/0ekOw80nROx5MNh0q3AHKk6O/la4oNBS
	 yHhttVb/aaCm5P9w7vOylnNdWgaIePX2uO2/QeYePASHddUn9Nvz5/X3JzmbP6klPJ
	 ehMm96+gl2rXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6476C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446999364.17097.17550057449310146621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e0a1596f6a88be2fd000e254b9c655bde4e0cfbf60a3689a0c1d20d01856a4
Date: Sat, 12 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744469993
