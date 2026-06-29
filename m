Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D201366DA5
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782731314; cv=none; b=LOfyKwg3DfGCZNhXdxBJ+0eVYt15GTnlZNqRI7q418+MB99TlcQOZEa1ajxQga4ABVvwcOhYO0AWTIeIIsSF55CzRkyaRWRPWf3le/WBgti1nPaCJJ9h7/eCyWEhPQ3yof1klxrVHtpK1ruDmNglJbpf8dNseyvUjrCpWMSwmAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782731314; c=relaxed/simple;
	bh=8ALZ1iTwgFWtufx6xw+jf63OqEXMq1UqkdfNlNP8p1c=;
	h=To:Subject:From:Message-Id:Date; b=K1mwJnxzGAn1MyznuNkr3t2cKBuz5iM/lTANojta/EQjY6zaRvLa5mFFDdsSfqPcosFqSeMFdAw9OgT64omapBntT4GMdDhh9Pgqgb8uLnj0Z6CMnTwkQIwV2lxxI+OIHtnwWHhV3juOhczvkRogQdvUx7vk8xBFHwqdQ9ZAKI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suqhBamK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suqhBamK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87B6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782731313;
	bh=8ALZ1iTwgFWtufx6xw+jf63OqEXMq1UqkdfNlNP8p1c=;
	h=To:Subject:From:Date:From;
	b=suqhBamK+2Yc818agrkpQWTEUwi4InoAlF25d7GPJ9NjooeEjHpb1nEAy6RWtyID8
	 fwHrmvcWUDsa6+CEhZ6RvF53dIt6mQzKc4DrGoFOF1k8cvkniM5P9FY7hQ/7FBI99Y
	 gCbj8CGB9Ooh2OqtbS9fhZwW/iFeQyGDSRPzydWJyrdkAlYLmdyJYFEtxcJqSx3CQE
	 vpvG9wwlbVJkHTnbJLBzR63nPdZuVLxMSVJGrD/2CsPJdGKnoFpXHqZOfg7L9JsAX2
	 mxBCL0E/i8eTdwhuvLvg2aSherRtvQJI9neXhpB1OreOpT4AOh70yBRkS/877SWN5c
	 I0nnU/MhP5xKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0693C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273131371.5389.2090687856013498098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c537b7ea07d90db50fbf225ab5f395d785a82d151f013a4049e6ca53fc82874e
Date: Mon, 29 Jun 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782731313
