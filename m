Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF6D8C1F
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743899994; cv=none; b=QC/gmq0kfsj3K7guO1bo2lznX5sTQPyFDm5uDnSqOLdJn+UngCXxdO8U6GfRssD1q5wF4Ji/nRgSi+34sMBo6eYQZZL0wEXjnqJQY6kou8FeOytYe4utC6cZ7ccK6asOtf4ujvxJE4vSRndAWl1iOie49U40tHP64Fa8xAH7hmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743899994; c=relaxed/simple;
	bh=n+S+cfvr0qI6Ql+1EXeIkYEWnmPcL23co2LyFsHSn94=;
	h=To:Subject:From:Message-Id:Date; b=CuyzRLSQXjxjMuj/Fqi15yvLK6VNOhiFrYDEdIXYENLXCbsxnPiAeRj3f/4wOmC29EdpQ/QRlAJyLp7/0d9EYgRKnvxu6afNhOMInNbcOrsnN/SdQo7ZTIcppbMhIrAetdBTbQrezIUHMqEX1eoOO//RSva1SlBGv5h/XQnxMAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkJ8m9Wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkJ8m9Wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6253C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743899993;
	bh=n+S+cfvr0qI6Ql+1EXeIkYEWnmPcL23co2LyFsHSn94=;
	h=To:Subject:From:Date:From;
	b=RkJ8m9Wi9HYbfWErFr1Id3hcBO+v/whanpwIPyE3PtqCu/N4S+jYIKyOZukScwLGg
	 fm5tKgDFUYJ4CHT1ZFg9Gb+S0gm1oJqrE3E+DFMy1/glX5zyhvuIsZTup55jcDZzI9
	 sV1LYXQkcHIYILYk2ImbZKcLr9bsu67AE10NmcXCeAH7zhTJFyecsMsB8IZ5A5Yili
	 2l7ynj/xMiCxyA3OXyN+ebsJAhkalNRQpF0kUK21JshcVHJzbOWiY+hsiPhmgyP+uU
	 ZJaFqt9Go12t40YwMxvCsNoWgECwkf98kXOnQo5Yq/pBNIxalAaI2X/njMczUlS/rU
	 W7JKYmTp3L0/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC4BC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389999360.25473.12820529097628660144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0582398451569acb4ef6095ef82d34c238be7cff549f14e15fc904fcf9902bff
Date: Sun, 06 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743899993
