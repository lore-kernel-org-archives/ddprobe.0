Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFE643F0A9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784165914; cv=none; b=q5VdySnspWiItXtFscaFK85Jof+d/xUCz4Jj35kTp6JxuKIHq4vb4rls4NWSzFiuJEhLOCAm4aBW+3+7HG7jXcFdqX/ntTV/CSWCFAxLiCdAOh6zc84BhbTfHrlCNtR5yAXEplFALgr9YaZJvK1Ihk8eE37PTnGMWOWRR9xxPxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784165914; c=relaxed/simple;
	bh=+tcsNnL6P4RxQozI6dJqe5VwRGK6/bwLh7Og9fDCcnc=;
	h=To:Subject:From:Message-Id:Date; b=tdnk4rAmmUTIZDZnP0nJs6utBfqUIQSDmAGGieHxvwYCk8dRrTL8U+qbSh1/XVrcD9qCPnmqNaAg7ti89BvqjEpXHCinSNDCS2tjasprElL/pzL3KlMIFcPZ8ecPJpqimfoOVdeelZRAz015HaRZoD4Iy1rHD0VAP/znMEULs6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e78FLZeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e78FLZeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCD3C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784165913;
	bh=+tcsNnL6P4RxQozI6dJqe5VwRGK6/bwLh7Og9fDCcnc=;
	h=To:Subject:From:Date:From;
	b=e78FLZeQ9zEAypnoqxTDwTz/ZrALhLt8xfoVaJZN0LZ8q0RJ+JFbsy8Aq003LeYRL
	 +9WNFxsmR1QiXLdnUn3Uwft8y6wvhdJNyaW+wBvbAzFxN3SjWRcMH/6XWyKQqDm539
	 j9rYHCn3hC6bVcKqLH2W6qpFNeRggy9YOnqXdfHSOAo0g7Hca+ssYw8QC+oLp123ys
	 y0Bb3iGq2WyTZs8GG4lAAVG1xKDwNdBNDX7A42qeSotD7LLFxlZZUEKUDnQ+QI1H2j
	 B8WpOWTKxhcLUv5YWJW2BeQhaWxwxlOse0cgcdt2OEFaL8EPDNhXnBFX1xQFpugH48
	 h1PkVv8tSxDuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E2C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416591368.9209.4953044819289821207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363224c1bbd3e40bf3dc052eefd50374d7fbdc6f352d9c4214f8a8b904f4da56
Date: Thu, 16 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784165913
