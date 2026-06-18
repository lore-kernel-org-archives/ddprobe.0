Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A303382CB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781824596; cv=none; b=aRA9RjPiUqLrogO+4W/Q9pgLYuGCMkMGd6TwTi1Vr65ZQD0k0l3xumRlqaBU47Z9DLLNUXc9yJew6gXjfWIdlh96mRu7DrnUv++fOUdHKNVePQ0Wvo0/Hd1ptiJ4HXFa40EX7OBRoMdAHR2+Tlyddxa7FERsxtTJTIgT1noxEF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781824596; c=relaxed/simple;
	bh=1KJ3Et5wSsKCthi96IgcuvTH/m+ZeVqm3et+FGR1REA=;
	h=To:Subject:From:Message-Id:Date; b=hQrf9i6hThVNrjk0rtrZUZ7DRPcHnZrRrfuejmucwwEDxtbd3+XFneewjGqwTwkD3M73ffNFvBenuobWmz6Z9SVcztGnAnKjwTIc++4MVHxde1JjOBcE9tq6N2xGiZKpICUgorRVnXQ3jOWFN1pKkvEX+ZiU4DchG5broeRdLDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riPo/Eq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riPo/Eq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9542C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781824593;
	bh=1KJ3Et5wSsKCthi96IgcuvTH/m+ZeVqm3et+FGR1REA=;
	h=To:Subject:From:Date:From;
	b=riPo/Eq9nvIDH6RGCdw6sIPLzoelN145NsHktJEarRi5CAYsJ3TIKP2ak14Z89oXi
	 g55+DF2OWykBTZ4GSpgWyv+1euxiy1pBVhVipUltaua/p4XyG1CE7nLO9N1KpIVlFz
	 Rm7LPMoNdZskydvEUAyGAhf3Y0PgpGM6cdY8jzN7Vpgnn2IP6uo1zmWV8TUl4hHNHi
	 4Z+uR3xUfKTATwfG7wt/VX6V21gWEdBf4TFI7q/01whSZQZvwi8xSBlTiD5AEmMtJb
	 Z6Qg/M5xsdCOGDbsQx3N0rdF+JZbpbWu8s3qLWvNNKymN4dGYB1k5us3neZKqjR1r3
	 CfTWGeEuy+d4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52A8CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182459372.632.9788136578050749616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40764ac13381abe9962dba21ad52db4dfbd52382874a08c3a0754af12db93de9
Date: Thu, 18 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781824593
