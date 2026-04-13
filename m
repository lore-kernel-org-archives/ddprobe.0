Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB0E332EC8
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776114454; cv=none; b=kFUGzn2BGjJ0wVTVczqcU3+Z77MiV2l3/0Fz1ze9VUn0QCT9umlIJlFMNMZQpKZ/0/7HA5C8HAJT/m3iKQlbTJIavAfWmUKx59Z07mLcfRZLl83/vl3Fwy2PeAr6QJp+BWgWD94304UyYO4h2CUD/sNrx8tvXHymg9I297ukxEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776114454; c=relaxed/simple;
	bh=bMHek9qmOWaohoNoNGCpo72C2E3RLNMWSoN6j2kjbrs=;
	h=To:Subject:From:Message-Id:Date; b=ag6h/jCt2CPprQ8EOR+E1Y7swMmpfMoy2QjIfGs13lV0498wvzul5OGugJlU7GaAQmyl+4gkjv2PnWss7o5qfqybRGPrFDe2BDwrDNruzgiqgL3nVt2rgjy15f2z+dz7teEnOGP32oINeOwrVhtTKohnXLzlMHRYj3M+o08DI2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJs/vVj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJs/vVj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4821C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776114453;
	bh=bMHek9qmOWaohoNoNGCpo72C2E3RLNMWSoN6j2kjbrs=;
	h=To:Subject:From:Date:From;
	b=GJs/vVj/jH4qEJLL9SprIB0dcsZSaqfFAoguNX9KTBF4kkcaaRpp08W06+djEIGUx
	 jGkUtm2sjcyLqsbdZEuq5hTcma6ropt7pK36HFTAQ9CXz0Y0OJsbxmyRwaqtuCNnqp
	 fmiCf6hezQlYaBUt9+0bkusRMwcIpd2NR6/RrTT+6RBT7KGsIpHe8g4BZQlYEtShbC
	 sRRKcwMjRfUIeH5xQt9FgMYAHqsJ2OAy89A7S8XY/PWXROlKUdcscmVz0lBMPGYg4G
	 vaKYFnMXLHKVVEeIxFnKkZnheKdyQC8jf47iA5m9DDypQQ0suVNKUdmorMPjIafr3p
	 jZl4xaq5zTK6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B85F531CA
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611445369.1927.12339895845183288812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1b6486a7825c96fd5361da9395f9b4ec3efda117009ef3c75a662c66848f18
Date: Mon, 13 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776114453
