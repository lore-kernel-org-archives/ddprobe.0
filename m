Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3497639CEC5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769112835; cv=none; b=SNbKVAZHKbxzywKvFq1v7nC19+M7Mrt3HIR0kBJ3ktivXMScfmH5FU18lo5ElK1YxYpJXOvt33VOz8Xjzo7oOT0pt/erck1daMdeHkdhjgE3v6hdsHCl7BQsvrJtGuqp0vzc+Gasj43mA7TIad5fgNT12qE71saWIPD5l2jcE3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769112835; c=relaxed/simple;
	bh=FWUbm5Xxiw8cnDvqXaBu23GlSLI7zP/SWBnc1C+iG9o=;
	h=To:Subject:From:Message-Id:Date; b=gI2iO6hblD0JoP2UjPYWjLd2af1ULI1lqsKOsw4WNLHBN7ZMtZlVmIsdc/GNvsGG5I9dD0L7LrRQ+CLj0rwkFAomS1sFAnIsR0y4MpJWzzK0Cgo7iZ/q51wPr4O9CQuwiBuVkWtypYdYeHGbowgdaGlSDFQxJVibw+qBdPl5keQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjnGBXoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjnGBXoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA10C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769112833;
	bh=FWUbm5Xxiw8cnDvqXaBu23GlSLI7zP/SWBnc1C+iG9o=;
	h=To:Subject:From:Date:From;
	b=ZjnGBXoinsBufECNNR9ukL3j2TpsbP9muMlukgQYDJvozlsYhXz4A+c0IBbAXlV3b
	 5oUdpTTbeLZehnWH+ecWn3D/qkjbIxILx3NkKxVZ5d8ukMKXarreVjs3NF7reOmHTM
	 5AQIByV+20MmVXAwJ2LYzC/MLGYsBmBpzbmI+5cmmlR5RSS4Pmb+mX6A0CHtmT0lAX
	 p95JAhsxXZXJLANKu3l+vq4QzINb8hcAzohKlCPM+kwlmPLbso+7OhrCJw7TGu+734
	 kesSAjpmg955KNwRjHWs7K4XJVTN9c7ADozZ/AxgV0YRXacs4FsIrPR+kOw02v9afh
	 pwbfqNQNJJ/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96992D6CFA3
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911283359.27385.11167379273209164550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b45897dd1cd5b0d9013b4e37cf77e2954432e7e2557e8de25d544eaf7a9b1a
Date: Thu, 22 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769112833
