Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE4A1EB195
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764034974; cv=none; b=jQOpyTAD3JAnC1F2YG3gOsWWmQzzLAwv/7j8mInqs7cWSBN4Z/BGj1JoM7IMeWPS4ULaoPesBlLGlWd8B5ZvctehXIZWnUNcFNKMOUVYbkpbb6w6ONbd5xV+IklWSn4Xbu02jcsNItfd06nLXY3HmrAw65/TY1G5GF7fsL+yWls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764034974; c=relaxed/simple;
	bh=qQQ8Ru2HYDS3ffD0lWCJGxBkQ0/b5wZ3kyvZR/5E9Kk=;
	h=To:Subject:From:Message-Id:Date; b=Za9iEGgpyMDZ5eIrbFVu/4q9/cJP/MuW5R4k9puY35r5LOQrVVIMdN7o2y6Yu82xZb1Dl1vnpWjHZxR71LlvLiZuxdDKWbPOlSj7TAduRFBxo2EOdXA6xEws/86m/seZiEMj04ssp19wG5ieTZPT9Nl7OIrSQk/BRH0Fz/4qNC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5XtUOee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5XtUOee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E29C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764034973;
	bh=qQQ8Ru2HYDS3ffD0lWCJGxBkQ0/b5wZ3kyvZR/5E9Kk=;
	h=To:Subject:From:Date:From;
	b=c5XtUOee/J16Nrwk/DIk/EuywXfNNL4+Z0kiU0r6saAzPqgeCLeRFEHfIE2b74470
	 wWSjw4YNjeEFynLWoe/9+kRQn7azaLmT584+yJc4L+hFdLmAChA0pwoZnKIw/xaBDP
	 bRGzOnmbzoW6sCyel21fuqe/w6hu8wosNvvxP9cftl5svrJNxdnc2w0NSRLJpv4lSi
	 sSKzq9E+9VwpDwQEMhpGs70tMDiB0q/Mb4/h9aECmbepdalr+JfyIQMoIvzNSK4AJ5
	 rh51ucC9bmKxifuZDF8Gw+3eZik1mZ3Yk788OHGn8Yz4DIxnXGQ5GfAI3uLpVv8O63
	 Wk0JIsz4hRwoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1FCFD372
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403497358.31780.18364232632865406065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30aa0ce29bef7d2c72fe8d14df1f47cfa7504b674e6caaefd14749a2e40b8ec
Date: Tue, 25 Nov 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764034973
