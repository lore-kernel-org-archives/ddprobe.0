Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599A413777D
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 22:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713392963; cv=none; b=UbC+nmBwCE3AZEyeKVnkqVpMLCKex9gncybrJ9YW46xLWlJfVsQQYXFBITPZ4K+L6R49sxjpIFhS0VEFnVXtOjPSaCw+Iexli5TdwHlS6eeEDtoULpwfYr73BX1jK4Dpa1+/uRrEL85VxjgOpp1v0vJi6EV9ICHwam+2fID6+uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713392963; c=relaxed/simple;
	bh=QHKNHoZboHUxAxZL4Aaht+xxq1pg6MM8Z5K05WXrFVQ=;
	h=To:Subject:From:Message-Id:Date; b=tTE6QoQs4kIGM1pDE/JQysQW+Q52OUAqmr93ptuUaiqJEAl0tP0QmsCwag4CMcCxKMMmp6lh40mWuGFue8aB3c3uMjwz3tfnNJpwyeAe4zn8iK8rSOZE5zaC7lWS6STflihpn8gcLvMfvAWn3k63nYioZUElUgFlOFeaHDBkAew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AS1TxzZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AS1TxzZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1F65C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713392963;
	bh=QHKNHoZboHUxAxZL4Aaht+xxq1pg6MM8Z5K05WXrFVQ=;
	h=To:Subject:From:Date:From;
	b=AS1TxzZchPFJVgQ0lXkBEPNTgNTYccJadhiBcgZpg77sorz7PI9qx7JCEtAeX8zTX
	 sdf5D2wDR3YGmjorm0NbnK7dW+guJz4AQ+ngQ3mLhKdR7B6nMRQ8aoQXjABB/znAq+
	 IlSbPgwlF0aDvkPxEqrpr4zJTuFd5bK46Bbpw8GX2/wPnFqd42z3FAoX9R6rc7ViEm
	 7Hq4RwPBAKO3IwAgfcfH6aqQoQ7vzElfm3kW7tAcLemptiI8l7JsuguOWc0CXGBKx1
	 xnU+isvZdwdWI+31We6o4laAGzTx2qHLm0x9tRM1iwy5LV40Y+PoOJQicq+O7ixBi5
	 QpDB2jg9rRX1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5733C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 22:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171339296286.11006.17851539950902589194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830528cdbc5d94e77969854ef6294776724acd1ade64d2db584657320aa80cb0
Date: Wed, 17 Apr 2024 22:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713392962
