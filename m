Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88101D5CD1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774920294; cv=none; b=YEazNy03hGyS4CizDbVLMIYJ9buXWwHOeLm0lZiXPFOjHIcf0gMcoSLe8W0JYqyiKSjARk0mifWHSClayQYFr8s/UIJMLx4nXoyhk9Xfdjz6K91vs+y078EJspCULoQdrn/ZVdBJ2WQZ7N/N2mTSHlIrha5lRycnYO2P57/tNyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774920294; c=relaxed/simple;
	bh=R4l+cvw9eQfKai264MJJMs6Nj9oeMP3ZUVZthsGL0fI=;
	h=To:Subject:From:Message-Id:Date; b=lHvBIJDCpAhl1W2VWVi6BZE3zm6NzdPiYeoo/JnKdhsfEV1L/LjxcC9Ee1V08Vk5smcTF34GHQiNCtMPIv/iuHXPCa0RfbY/pBNpOxJkBOq5Csc46SWG2igKrFOq61sXPJd4GNcGueQP5umVy1uFt2ZC81mCmuBDjgnD5KnnVZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEY+swDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEY+swDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774920293;
	bh=R4l+cvw9eQfKai264MJJMs6Nj9oeMP3ZUVZthsGL0fI=;
	h=To:Subject:From:Date:From;
	b=EEY+swDN7LUzIDE3kqhhZLW9I5WzT3yZPuYcjzV4o44+1xYnk6tHCrIdgKHJ9hb6q
	 B8XaocOC8ZIjQZe88zqqV/PApiNLUSHOWCnNW+RmyXbAUbUInFGPfXztz7XCik1fcz
	 Fu7GfoyWSnVOvvfMTHqBUzbPYqVOU2ca0tWlnyHSNWpvZAQ+FLAyAZRbciFScdczQh
	 GOnN9HjM19EbihiEWO1TBJyO+GJT5ImAQVBbcyPYY++ZK3STf6MR+dAx3uOR2sySZT
	 LCLSOuQrOk4BACOVOWT0t9UPAU020mjhhMI6rUjCaWue3h/O0v9U0SLuSa1u47ypOk
	 uwwCT07X10SwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E211061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492029358.8933.12305077793954617710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0483e601939a3e6aefb04bc9de8c57fde5b188da064efe37541699da4d62625
Date: Tue, 31 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774920293
