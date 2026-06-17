Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DEB318B96
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781681794; cv=none; b=nVzEwHZ0bPYrh6V1jeffXIoxSXKiYrqt5b57lMJD3ls0nCSQ/javkm6isxGomS2292Lc4X3qJ5Gisn0fa1M7k3b1lgbRRqk2+MYrJPZCWt8swkSlYCdSXTwElrG1bl4Oj4OKykOFxlBggkHohcBzAQwbi3VswR/72ofDKeZpxzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781681794; c=relaxed/simple;
	bh=ZdFTjS2rCSXDfmN9HTYqsucfQUbRUuJJalIWJO9gYgY=;
	h=To:Subject:From:Message-Id:Date; b=CeUof6T85taGF8i0aon/5fxhy0aprwkJvO91slqKX+8lPOjiQdhOfKukoros2wwLmQDNqQ8HqcFGStlHNOUBmPiW6xYx9CJ2Ya/B0D7bRKVNZ5zh8OaUeHO/IGnUclHgeR9tg261VKhF2jjCpDVWSroL0tspFwa+FY7Z/lVQ0tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jekAhU8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jekAhU8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55AFC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781681793;
	bh=ZdFTjS2rCSXDfmN9HTYqsucfQUbRUuJJalIWJO9gYgY=;
	h=To:Subject:From:Date:From;
	b=jekAhU8bXlNdjoywi8XxlKb4NORK67fh4zOHrOdKL+MYd4QF1qSp++//ty/oMDvNJ
	 mfHxLuxDLvLmCQit6YGbU3VkYmkNNZlLKDxfq30oz3U0NewfM7yXv4qMLMhIklF6E1
	 WKQxvG1MaVyHyfot+g7emjiRPfMeP5/1/3MDVb13eXnXF+nIGcBAa1hhRcvu0O8IyX
	 mz9K6NTlWGcgP1q6mS67+VUFmM6FnmJCLy6ivsvIou+CC8I69+EPBRECN+SaZH4sSR
	 gcjba95oie9ESDJAcpyQCMXP3OzuDju8yRWq8kJPCX6yHnP+KTDnepiaATylEX81R+
	 dbz2AtrVLJASQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A00CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168179371.29772.817125188535571728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfd07035641c53ac98b3abf49655b8dc852db1a44f59d2666c0bbda59af3b09
Date: Wed, 17 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781681793
