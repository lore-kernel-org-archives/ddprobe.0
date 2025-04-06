Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40455154430
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743947994; cv=none; b=Iu65STSfUcVUTWsrX5+zLQy8iHTbCn0lZjIalf/ugOWPweLXm7VaCm2iglYlN4DPwj6pwpDjq8IGTUDwdh1KUY5jf6IuyeDEMeTptWi2HiBegwtavTiv7MvzMrukDF+WvvBpe/IPa4/S7tYZ9eBfBYcU3df91SfZE61ntyss4oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743947994; c=relaxed/simple;
	bh=1PGgshCOLRSHnv2k20B6Ofg+ixbgBsXITK1CALdU4yU=;
	h=To:Subject:From:Message-Id:Date; b=C5ZQsKGLRBzBKX9k6YTkXs92GWUaoE4lIxXkbK4bw7rqtrwk/5L3ObhDNPJe8LS84oJiMZvowoJ/Uk6pqwd6hah2DsVX8ohuiPiWMCTkthRviDgOrti4ouFYyZvn6pE1KhzWsXN/1+K+Yrk1GxYhenDkoII1ofy+pToRaRRKnAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxN4SMQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxN4SMQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50A5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743947993;
	bh=1PGgshCOLRSHnv2k20B6Ofg+ixbgBsXITK1CALdU4yU=;
	h=To:Subject:From:Date:From;
	b=MxN4SMQ/Yy3cyTkzSVtOHJeCKxShq/pu29vCw1K2Ww58DtLg0oeDp2Mn8vpaJw/+f
	 076N9RgeTNoKd2MktQM1y/sBm9tHLgMqXMYSyQD6lUaEz/HsoHuVh8Nz07kX74C7PF
	 JcelI9oRjZPldqOsREXjJPNyXP3N5VD5S/qznbUsSKIK/Yy3Uf6rIGkKMXkrD+sCJk
	 o2F5OIQIkEBXswj5rIX58j/39Ncu5tPl+twDwUKkmUmYghRJ1NO8Z2ws0gUVARuAih
	 XS3hj72jIdC5c93lQEeWYnU+iA60MLflZcrkscQb1OlipyYYS/XEo34n98t3WkRTxA
	 vnCxlMDYvxoGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C981C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394799362.31245.13682838856192934005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6991e984ee6a29f76ba3485a25a66e81676d22ce66b6ef7f70d9ccbec4d5c61a
Date: Sun, 06 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743947993
