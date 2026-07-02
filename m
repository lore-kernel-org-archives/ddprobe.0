Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B64631691A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782964714; cv=none; b=MXoCxrhO9YiK0/ixKi86/Ivnoo6ygOhsZW4qIes4ZoSz/zD/hcmUHy+ZKXP/Ike5erwshACvtr4ZRKmb6cGY0NMWk3ipijHH8B43xI7RIsU6EHjq/KPpt0uWoDmss9te+x3K6O5bmnXteSmmVMGzQiKzTr7xH6OmUNy2+K88FU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782964714; c=relaxed/simple;
	bh=U0QIAEDshvBeutxtmF6tGccxKDkeH7vNona3KR/dsEI=;
	h=To:Subject:From:Message-Id:Date; b=E8C3uBe61K8V289e0eUPY2vzIhb3rl6sZbOYCLm0nfAlrhkdKky3RM/mcZSlrPlaZaEHC7ljburok+8OI8wHzvUjN1RFSrF9mAH9MOm474fi5Z4dW9Vkjg1hCL9uBeq/pLn08G1tQZvixHYD7Zugf1inL8GiNU3Z/c2v2XmeeB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBuhzucC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBuhzucC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3972C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782964713;
	bh=U0QIAEDshvBeutxtmF6tGccxKDkeH7vNona3KR/dsEI=;
	h=To:Subject:From:Date:From;
	b=bBuhzucC+sE8118BJItwZac9KV5/A7ErkKD7EKTxoJ0Xl7u/TA7fDw1C4z5z5hB0I
	 7qVctGvqR1fNs0yHdY/QuzlBkz+y5varMXSQO/r8FFea1A2EqRlRZBuAT6EASQyLJm
	 FD0FXU1J6Zv45PlxFUwgp+R2KB16HIxcTbEYQKecxYc2F9LA+tUQQrWwOlj7tOz0rZ
	 FJwgl1MEcS+K8VXVc3FNMAT/oOi+Y7wDcxkXBTUXqdB2jO+3BhM03hwg6gzf0AIaOC
	 83/yB1meNy3V4Wq2aIyUY6gQQJuQfZUPQI7c4KdIyzuDoZITWBRb7Wte22hbomjyzv
	 LPoFUU1O6HAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A865BC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296471368.4125.3317300048421696660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a689fb643e9fdab3f5ac2c60b1f9ed3fda25e6041244eade01d4c8a0c690aaf
Date: Thu, 02 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782964713
