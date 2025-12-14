Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D7D1684B4
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765686774; cv=none; b=XOERJt+j9vroU9jiYcIEUoCw6h4DVhlvssRRkpZT5ARC0ooIJKpS6QUzR8xMqdQ8+S+cEqMZGe6sF/2cuYkexfea/d8TUFuoy0O+f8yUanjivkWWRBUn6uccRK7fK+qqhJ3OL/EA7TwYTXvtWUghQe9UrN5IZeJECKtytXiNaEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765686774; c=relaxed/simple;
	bh=7lEs0/s7rsV0JejJhvWYPZ6NcWC7BWWw23FPsO0sgOs=;
	h=To:Subject:From:Message-Id:Date; b=H+qxalXUjzKMuShG3T5V3ZaGUHKJ1dPUpz8VgPNa6xRymco34Y4hTJYpDfnUu3Is2ZPtPT94aIFCDqv3q9N1H5BJanmr+hyqXOs08lvD/zVpJZT+hgnRwc4VnRoHaXmiT2aDmLlnlUoJAz4e7ecqtiwm8Q2GsaujJcmTebvYj14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8U5vo4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8U5vo4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF89FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765686773;
	bh=7lEs0/s7rsV0JejJhvWYPZ6NcWC7BWWw23FPsO0sgOs=;
	h=To:Subject:From:Date:From;
	b=N8U5vo4KoHhJs4Gp3QShae4hBObCBGMznkvhqNdu9zh1NCl5Ps7RqRKMZhCb79P4d
	 08XBTDIOUVf20sQMGSv4Pwhq2A+2r7A/yeSh6VHjSOPNStOkCPzejEcAk74HQgSE1p
	 Msz2MRXXPyNQLLnBzIDM+BK1fg04BWzZGalL0OO90nVILWBLWgjKH/P5rs2u+iyaPR
	 FK/LBE4AvwszreJ8ljS0hoftCQiEWcKc7K61oJ76wcHxiKvNvpqoe3vEskqNnhlw8o
	 IoouKrjQn/n8LuPk5EQ5aWzx5qCvnqJu5M3P/Q9ujNBzIOnNsRqnFyeFQHUE9cKyy6
	 45tBkgxlg129Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFC7CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568677360.10196.16039923460714217367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36cc89e33d6f7fa33841753065cddc83ba40c9555b48afc4c1044ee84df32d7e
Date: Sun, 14 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765686773
