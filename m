Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF6934EEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767948233; cv=none; b=tK4UBNXpuiLTLBn3wfNrz/uuwAlysHIiCkZJ9a367cjaZD+czWvzKNSjcuKrxGAC0fay8/C0GCinQcDtNP8LRVFtg8zMXqeqcITmL+aUCig25M0QpCyaU4oqNht009YM8KlPf5697umMjk+IdJrO80WxnTWocgIp4XIECbAd5I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767948233; c=relaxed/simple;
	bh=PgnXl+RYExEISrcXT6zzY5oP6qFVTtjs0XFRG4v4tk4=;
	h=To:Subject:From:Message-Id:Date; b=pK/L7TmCBs44YiPZyz6/8f4ZO3n0QZLXCaPvfrf5Z5nx5sW80+DspNMEdlM+aEqS+UMbN38yBuBlwJjW07nPfTUwRGS2uTZv9/DQA8xorbZS6Gpy/renfp8G9y0dasAnkQB2WelcQ6poGStAJ9hlHV8GHFP5WQvYqRwohnJX6fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXYJGJFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXYJGJFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED71C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767948233;
	bh=PgnXl+RYExEISrcXT6zzY5oP6qFVTtjs0XFRG4v4tk4=;
	h=To:Subject:From:Date:From;
	b=iXYJGJFQDF+N06QjSeQ/yPcmRBz96J7U+rlpyk8E5CdxQdKQIospWuMBoNfVp5gW0
	 vc/kFS3AYK3ueuC6L+XkkvyjnccIsA+9djmbZnX/QbAh22Q369cmk1qeZX3ISGSI8q
	 vh4faGqGl+mSvKtXm0iWOPDF07yC5nV+WU2rw0RfEdLR0fg3sK5i4sE5S4zGHzBfLt
	 p6aj/zmkpKxEFoAnh4hUUVzQgPtXSK77pn8mD5ElBZL959ehv4LBzh7VBqbRfWmlF0
	 3iWWc4fTC/0fyMIQ7LVqNw6E9294YzoNwmW34qER+TnHcy3M711cNPbBeQf8BlyUh+
	 5LVww5sgVZrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E48ED232F6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794823357.19592.17301059664896750873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2dd0154fc276c073d9dd71db540f5e8ceccdf2113a110b9882b207744544dbc
Date: Fri, 09 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767948233
