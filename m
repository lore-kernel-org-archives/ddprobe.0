Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A77278753
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756565994; cv=none; b=eY92oc0YRamg3NZpZh3VZ5wLP9l8gQ1eZ8+DyR+65edD78ocdn+Q63QqZM5GMHj2ANHAr+0g52ulwv/6uZR/UKHZvp2Nx6C5EYg0GPT0t19hXcsQi2+Q5esSJqM+zprD3c6TH1dB6muPTk7x8EI68sUydeF0ty4V/MZign7bfJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756565994; c=relaxed/simple;
	bh=hAECyAePDs6Eycss3OHslLfWTMQV6alQtd/P2AMbODI=;
	h=To:Subject:From:Message-Id:Date; b=WxKQhJz2m9wh9Btb8Fu03fzlICkvv8qa3EBzgtthqJF2y02Zh9ojGwyAWhOVJrTvjwC09JipA3uZglOb2lOgPwompxd+THUhCBH4RTVpEFvmmMfdsY7XeKzEKcVNZzGUdxrbZaVZVT1dK57eU0crIii2vAhNfblNicLfLnkv4f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHgl0n36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHgl0n36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1162C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756565993;
	bh=hAECyAePDs6Eycss3OHslLfWTMQV6alQtd/P2AMbODI=;
	h=To:Subject:From:Date:From;
	b=uHgl0n366OR02zJYhw1EVm9kP/cU0ulz8/tyvb4kIF0I6+Dtl9PDVj75XE0xZPXxF
	 K0uG0LNMkj0i4tChCSxITebvqSo/5r1KK0tneoT78/ygMEAzZ6Rguw2M726/1pgmaX
	 XXjBnrw2eHdAfQH29L/GtfZLoruB3v5adLavHtoou4K50WhACmpwJkpEVLDqShoIAj
	 ZQkA7up6clRjQOyk1Vvm4x7WLzLLlexitkCgX/SiBLXNmmfA5MR2jfr0EVtyhDBr5S
	 JWVQIssGbRbT2sml5eJw9Phn1KrCxQB+41E6fE9AozwwjzElfvMkcSqA6MleFEIdtT
	 A2qTayfVr9iSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01ECA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656599357.11952.16504711597389929208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364622fa40292a32aa5765016dfc4f4a1d1c2f1383e79f65fe657ee2af246cbe
Date: Sat, 30 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756565993
