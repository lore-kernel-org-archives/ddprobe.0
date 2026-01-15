Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFC636CDEC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768485234; cv=none; b=qqYiozgv46dmNGZatFziTz04IUS+shfYwsbfz50/wlsijjjzhNexBIlGYLtsYRwAUB1UhxLrLkSdozNbzTMN/I2CfFAm58fD0fg3yKTUoevYjL15JQ4qAPqakskWygtt5F87LOuJ5Bx4gV8ovoClFGIH75IbZSf2XX1bPkYWl0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768485234; c=relaxed/simple;
	bh=EBdM+jgWGwMccNld3bVMt9FxGBi0f6lRB4CugM6ok7o=;
	h=To:Subject:From:Message-Id:Date; b=EnpFaPAzRd6vzdXJxolov3PLC9hMEBcViDWrkSk64dh1YDB+65HBp/+94rZFzt360TgY3E3mHoLdTnb/IFUqrE1J2ss3to0dclBYFOWg8rs5o7qDEiK9nno8VTU/PgZG/BxtEVWuDlwLxkgGGlxI7M3+mKS4SlQSomdyPt5d5g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iya5IGtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iya5IGtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE27C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768485233;
	bh=EBdM+jgWGwMccNld3bVMt9FxGBi0f6lRB4CugM6ok7o=;
	h=To:Subject:From:Date:From;
	b=Iya5IGtz8z2m6rOtTeg3+pKeQlvYSh7r44HNmX+oFVpOHvA0xrHnKaq8YxmF1O4JI
	 g5UfxJvXQ+fZDfdtaO53ZSbzTWcy4FJaauTSeD3DCr5skPrd3E1I7X7ttp9T1QaEeb
	 tvR33BIVG7wL9CmKDu52tiiCl6SExwG1OTRIyRQ7r5oqbXwBsrH/FltGQP3R885aRM
	 EMvJx6uv/qPL8+CA1pmb0eJEnwOjqs+2I0yUOUONQ617J9Yozrvs5s87Tv3/spoWnm
	 /rXJaj38Ff28FQIhq3d3zH2fSk6xJpxNqOsErsTwuctj3NTK+zlSCkXr6/y0pUvrnl
	 kjWmbf07tD8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D0D44C4C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848523358.3688.17267878773762183741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d160dab3639d2649e166137b302b95adfcd847dac176106dcc7dc2f1affce49
Date: Thu, 15 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768485233
