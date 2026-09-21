Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6699C3C0A18
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789990834; cv=none; b=A6L7Gdf2FiDXT5Wkm044ypT5+5mZT9RSFw9W+O8dS4cVQYdIEuwajZhWKsQuPxtRvSm6cwBnGr88fbU2JlVeZ6Kj1DonMucXl5lgWDljuAWaGKFGiVAN4fZoA2WZMDEtcCRMb/eBV3iX/4u3mPJsD5NeXNZs2ZOH7ku7rEK5afA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789990834; c=relaxed/simple;
	bh=S3YK5lNATLrkR13Pfkh5qSX4i9zvtFZNdtK2W0MkX0U=;
	h=To:Subject:From:Message-Id:Date; b=jXpXi5l+RTDLljfI1q3E+jFrz022iCrMxoG9niG3SYtwjpizVHEiUz8JHw+duCMm3SX8MLoGckNRHDhGICc2IQxmmGnBfBOVb3d15OeKOMTV1juvCdgENemv77FTND4rd8/kgX/7z24UHAnz9dfHC7cZDT65plx8FJSzTlNkyIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9VmKxWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9VmKxWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEB6C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789990833;
	bh=S3YK5lNATLrkR13Pfkh5qSX4i9zvtFZNdtK2W0MkX0U=;
	h=To:Subject:From:Date:From;
	b=Y9VmKxWNFdUJa8lBge6p4MJtyqzY70vFckfKxAWpRzMFT2s82ZExzXnpr8DZG4poE
	 5USIt5pVLupLKfRXQTa0cFOdx/HOoq7J+iHQ1Yj9TxHswOLQzguOwdLXINz6m+D2NB
	 yktlol+jg2CP8FIxS8CWijCPBaUIFVKEtfbZ65wGr5ZyLIsbHTBaahI4/tZxmWq+39
	 sop8gv+KSVeArfFsBqtcZIu0LXyR7fnLU7bhlv6BTNWNHDIzRYA9ijRLhXIXd7k49R
	 Xk9eTqBBqO0GPopnRL6fadr41obgIc9NJXS8xbHw5wF/iF8g6jaqsagcbo18gVxj12
	 sRTQlBozHjucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E1C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999083369.24602.10166180112365930847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d071e338bb2b2f6b63c24ead305ee08631abedb604c5e98d09376385aa5e363
Date: Mon, 21 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789990833
