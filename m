Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B82C23C399
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738879554; cv=none; b=PabDpIQTlzrwbA6tqxqas5LtKGJ1EJSozXPNXaZeOubIKE85vhRDCnzRymsAokOnKeioNOTBGaH552kdYiWv4qBF6aeF4bIFQnTmQX2xxIjq0kpV6kdsg/XCa8bC0P7fWXQv620Qwo0rEsu0UqBZ01Oiladw8spBvnEc08wV8e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738879554; c=relaxed/simple;
	bh=3qvonee9hCqTkxJD7QWb2jORHOhU11243FHxaIyC+VE=;
	h=To:Subject:From:Message-Id:Date; b=ahX6qFy2APw0x9y+xg7s5EYyZNoVscAwuc+nJSlJdrC3pPa/e/JG+WftsfSbp3kWLaetDLJMm/3SN70KGard9EoXrsb9TD9xoshHmRJXZlQYQeWimcup+6ps5E9Ldg+XUCwcZtzO8AwmhL4VSC257TKv539/F7ZjLIBNoS2/X7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCKOHOnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCKOHOnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB62DC4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738879553;
	bh=3qvonee9hCqTkxJD7QWb2jORHOhU11243FHxaIyC+VE=;
	h=To:Subject:From:Date:From;
	b=XCKOHOnXDwBDu151wYvDXXO2zYSnkXX0s/Ff+iIKcuWwW1dPN4zMkgXYzaTtT4GEC
	 G/KddzKTUXIoLlheA2E6RtNFVc61mxzAzoG6TRJrmJFgPAUhJ0K1UecJJXJaVOh9K7
	 NthXjT2jwGpj4nSDwoZZIqc+I+R/zQSx6Eqqi8AibmySNq4wOlZNdA/yJnQ8QvNvby
	 r/0UMTutPggulxq4DGL1oDvrRGQXSvdyRwMXjxbJc7BkYyQrgze8SBYoHw2dQ08ZYe
	 m+CPOeJHC27deYwv8j0xLXIU7hh+LoshvtdA7IumsDRsWYNaxlISffNbhKeZYHl9cl
	 BBUsZGkXDOFJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95083C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887955359.13208.18148971354104414029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b87eee81505fec72bc9128ba07f044a0db206a346fb6a64276c7072db25df33
Date: Thu, 06 Feb 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738879553
