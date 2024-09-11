Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3836518A6A0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726057554; cv=none; b=G7pjaRLSndHLw8tyKh4LTknSf/MNuZjlvTQp3oNQ8CsdBV5gZ8zoITVfY23Jf+RnQ2j1lrD+PDrV4FRMmXZ7XU2M0DgLTZ3H+V5jqTFpgZ8Fneu9YDheW4VBzQ4OpOI87ZHJO1YF3H7WAIs0d0NmqqxHB5Sb3Ejin2EZt6aEzAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726057554; c=relaxed/simple;
	bh=pijcP5ZVsKCP0/1YOjUmyV2yxWSPPqzagqsv4xW3tOk=;
	h=To:Subject:From:Message-Id:Date; b=P1UnpkqIaThZv/gOkGygxB760Gjn0N4PpeVW/hGFy3E66YwfDRx+Fx4dhyA8ZPJgcB7ytp7PfSUzF9CvBkUbUxv9Cr6jSho/isXvju0BSNv32LOHovsoy+nX0dczyedS6jxDxlXHJxrAdU4T8XmbSD9TePewwkIgHH2VShPUNEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rb6jgrCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rb6jgrCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C1C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726057553;
	bh=pijcP5ZVsKCP0/1YOjUmyV2yxWSPPqzagqsv4xW3tOk=;
	h=To:Subject:From:Date:From;
	b=Rb6jgrCLm7wtKzYXgxtmcfZwZZhmPP8JQMxbHzpu7yGHcql3YCxgdIxmu9EX7ZNMp
	 G3y/+uzRv930wUC4BhOiaXvJmr1q5LT0wUFj/JB9IwZQUPQyXJuGhYuZ/vhX1tbIdd
	 SPE4rGWcxip6eBRav/iRCEQzSvYrmMR/X0hmgdmxG1qUmpGqDQwDH7KVG9SynHpYp5
	 BCdKSNozTrnbU3ljKxejPXy+N1k27P+5Fw2tndQSn7zFI1dFpEAbMkmA1YoN1ipUcj
	 uyqpxFplFREwiKWlBkH2t2C94K/sweMOjh2US5XQTWnDaiguji56O4GGQcXAcRLeRl
	 4+ft/RRsZf6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AFEEE499E
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605755359.19445.550374487957921203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a116c0eb2c4357e7fea1e9050712f80fe68c55e5e2121cb4aeee1c24193a91a2
Date: Wed, 11 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726057553
