Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B7B20DC4
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714824143; cv=none; b=mDE43nS+KqxQ+JlF6ZDrA3CJnnjSYgBTmpNf/gadFbOkBHezQY4PfGMsASgJd5aOTO8o2qWydy5Y4bZI/pEzfPW0ywKHJM0iogXhhvAvBdNeyulKmtU6+SSlBBI7WPpjS1apsxO6nGqLPgohqIaP8erZeTZDGfR5xbUsW0EfbBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714824143; c=relaxed/simple;
	bh=YFcZp5iDwR3s7fpFWE8XnGvN07ZxFZ1cdwR528Lw5LY=;
	h=To:Subject:From:Message-Id:Date; b=VEaWzeN3LcB0tn91YTJaSnWMmBHlgEPDyLzndqVE41Z8JycDoG5vbvvnpXkF4xNKi1yjo3EE73lu5XpyckhUeYRxqFEgDUyqD/R0hVqfImWDirmZ3LA7w80cotHkU57gPt7E/P8PmzsSXnLkBUNG/bDiWgEzwhvPeEBb3Ma2r2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ii9gMgJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ii9gMgJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0A5C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714824142;
	bh=YFcZp5iDwR3s7fpFWE8XnGvN07ZxFZ1cdwR528Lw5LY=;
	h=To:Subject:From:Date:From;
	b=Ii9gMgJYSuqEWJLIAV2ZFwxr0hcOePSYoqNa5hPse5z18XPLCs1l4auMMEaTp8wdX
	 FhEl1P9tH3S4iH+c7WDRZ+CY6RVMShLUFAYeSHqZgzgY+CC7GhK82bm9A48g5ruva/
	 44O0g0Y5oXsbKF09nuAv7TCbISHgG1XPbIWh6zyLM4ZzO7QY6go665XMULR0bKxQoy
	 ltjvNhr3B1hDQfa0U7Q39LQklOcDKq++uG+bS/vTlDFzwD0yA9jaAgJZ4M+giPYtb1
	 fcoJ4f75MvxnUOo6kuZnoEE/wbXX4P1ysf79rVQcuI8zniQ8RP2SvpMG8A0/XvalDB
	 UQl4urL3mUByQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63A4C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482414280.24450.3216634221497399046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794beb7920dbef89e3ff8608f4b12596b0353b99590e9222f9befc2483105d43
Date: Sat, 04 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714824142
