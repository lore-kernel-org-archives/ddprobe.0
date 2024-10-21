Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C14F10A3E
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729554954; cv=none; b=XCUnvhc1YKO9uHn6UYy9Am6ccDHH2eWEs0GZq1/MxvBdjW3vCMzI84j6vTp/vDBngkIhP4igha7wIakt5EVsia25l0IZ6bGVauI0WuS0lIndmMwYQzs5WVU8HTpXjXwkjxGnb4/zXjdQXQrSg7KyBFPiuOUgza8gI/fi5VM+e8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729554954; c=relaxed/simple;
	bh=uXvMKBpzIfrKo6XT6kDhJ/N16RLKKAjc1Ye+J0L1BGM=;
	h=To:Subject:From:Message-Id:Date; b=bDexfy659btwsPrQ9f4R7KsUQftXlmH36Wl7apD8m3XIeuLX0kelArjDivk2PEBT7XgatwyPkMRnm1sLx2gwUdoueGECvPbystEdxDN9AWVV9o75+IH6MbNjK2ltZo5Qb1kxvcsHvdxk8d956uaNmIxs0/Nlk7ke/RQByH9X7/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opA3py6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opA3py6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE951C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729554953;
	bh=uXvMKBpzIfrKo6XT6kDhJ/N16RLKKAjc1Ye+J0L1BGM=;
	h=To:Subject:From:Date:From;
	b=opA3py6dadJwWZduMDiwlCol4jDBwrKB1/39i3UK1Ln4nUC96PQc99LyT0EEE7XEG
	 Jrprkgw49mIDLS/qlA7KJAFFFbeTiY8+5dHmp3mjv8bQIWysYYLeEELyflkfwjPESx
	 z/sonMAbft0yET6FTBxrZoKTOEmojWUwNw6KfcCiMkshnaCk6/jLJfCegM2tEwknWI
	 gPKeSJBB5FzHPSwDZO0Dk7O0Xohec8KDN4as08yhyoOrEPpO+39qd72rD2SjiEmbR/
	 MfnNGma7zUu2MvDYSuOOhkImx+65/Na6Ywky4Iyz51j+SsTNmCC0qBxY0Na7wH/fwi
	 DGXvn2JTplnow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDDAD17148
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172955495361.15469.13448335452341350435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae389728e719cf6b8a7dc6ed051768c2b8a5f81110cdd8afe351f7a5d304cc7
Date: Mon, 21 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729554953
