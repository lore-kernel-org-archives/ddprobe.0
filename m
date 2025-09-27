Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2307C35950
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759006795; cv=none; b=Q1ekmpTSGoZ+xJsvEd0yoDL6UQc85xFMv+kA7L6gbQJn4ogPboAzPyPIvFbpcyKlDZnIrVYx3H/sgg1J+OkTU5Hf6q1bUU3tuXeqelj3wt642i+nKIF/eITh6DK97iU2PTX1qzK3qJM5cJw50C9h4b2Jx97a5juHL7WSze69DFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759006795; c=relaxed/simple;
	bh=lIuSN4k8ZHowM/xRnfL/Pry69wPyai9XRAP+Ebuwcow=;
	h=To:Subject:From:Message-Id:Date; b=NSLGddLEJEzPRUk9bhmgTRwOF7Ari315OeneTRpHfjlxdfOHoFA18WncdUhP/2ukGcNJyWVWd7tj/WZR5BLV3XwIa0ubtHzkwbSBhszcp0wn8olTloDAW9yD00vTRFRuHs7FfGprBChYkWh7H6VeZoiZGqW36C1sVW7qHQ0c6C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDxFyiyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDxFyiyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DE3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759006793;
	bh=lIuSN4k8ZHowM/xRnfL/Pry69wPyai9XRAP+Ebuwcow=;
	h=To:Subject:From:Date:From;
	b=BDxFyiyPw2PEIbGCy0Eyt/yx7mlFYUFhy6tpaftP8I/yqA6RyJY4mNxcUmMN6VfuS
	 tET6t8BH5evm6ZFP96Hds1eRv8G2icRqHKSP03VJWqMtMlaL/ABeiQw5+kTT9gm0ki
	 Rkna2S3cgJBObALe7Meehob5CwsCLnYnEu4nUUTzFSLmxpNT53mXhOC6BKI3WjnPnV
	 SOMf6zUsSMZmygAS1K/b3gj1oWSKY1uqysPZd0RX3C1+pwHDmOC0/hxvsz6KcyEQgr
	 cgUyzJDS6LIiEk/+GHQAUPNZPbi99Pkp0D7AHy34tdewhDnwO2irABcJuqdEK10jTF
	 J8z468IQR+CCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B02CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900679358.15417.5099190173683458770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc8edeb0109af7e65078d38ea8a8e2a903f3517cc968638bfcc10eff53642b8
Date: Sat, 27 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759006793
