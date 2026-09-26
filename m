Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE20306746
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790386834; cv=none; b=n7X/hzxV2VthGU3uAj1tluRyvqZlU5MEF6ufd7XuW1h5JMmrgh1PAnhkQAxy0J3Jqu2oWWZal/C5s3EZjfAp4jQXUNqIkrVvb/gdpIcyLG89Kh8zDCJZZAmsazENRhDD+BLXmV6oR2VvULSBZDAjNfzOuPfodrpFf03qP9iFs2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790386834; c=relaxed/simple;
	bh=kgEMpxNDxUUNQHAPpy8yUcN+wTFW6/FyY9Z0fbZkyGA=;
	h=To:Subject:From:Message-Id:Date; b=pt50KNEefLzMUYB9ACjNnBaLwhHa7Xiwk5TZVDVIFnb/sOXj7rl+qpPiU8AugpYZhwKoJY5hWpzL4ouQ0XsI0uDNphb6fwie9Wa6wx0Ye4Zy+PTIK4ZQ7ESmex9UobD248FjPHEKzkhmC+trveelOsThCjj1WQJ0qB5fmISPjtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpc9BOmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpc9BOmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D458CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790386833;
	bh=kgEMpxNDxUUNQHAPpy8yUcN+wTFW6/FyY9Z0fbZkyGA=;
	h=To:Subject:From:Date:From;
	b=gpc9BOmId4PE366meSKf5ZT3gLc1QbWlgLZMWB0HayM5izoX0haVVcCfkiLJzlWT7
	 Z2DW12GWl8W3N+qACpIv9YPoEOBJH5024uDJxZSl6OefBm1vjeoBqoeCxQ34JQ/yP7
	 Py5yDoF+B7F+UOucJmrcJo338u2yaTNKtEzdZDtI1pH9UiPa+/5aV3u5oM/+y/78LF
	 avugAyC5K7dsQK+cgT1nnS21AcNdtHbfJlW0X8fUrhkqGj1rWMLiSTuaJuvY8TTvW3
	 S7QUbt6jZaW1oI0VimgB/g4kHUpl45td1LFGZAnJCR5E7ydaO1Ktjfw3iBd5TALS5u
	 wHlREEgvfQ1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE18BC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038683369.9234.10274565283259635064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad5811b9013538cea96c4f1eda0e5a68fe168d2755950362f73c1c503c8922d
Date: Sat, 26 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790386833
