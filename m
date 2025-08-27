Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1805321146C
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756325994; cv=none; b=H3sHbEgfOZFmnU8QYxhQ06mqp2vhOoGBupTCsOmK8CQ46cGg4ft4YKYFv2+wfSxNAD7CrbsppmYCILgmhLO7f+Q2CVjK47hvOgkMZYV8KUpR5kpt6LbTZuzDTWDguxVrBRpPeqMxnP1UbxoejLQKu2NOwwMsf6l+V9ikDmxSMd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756325994; c=relaxed/simple;
	bh=yYl3NtbPtTj2VT3pKSh7WWFo4Um3K68HD1T/6kOsWDI=;
	h=To:Subject:From:Message-Id:Date; b=TykumMUvqkIPcA2PH8E+ZS7HL8Da9Ocx4Lur5/gE+uCNAs/oYuhI/J0bWPgmjwgvnDCC/d2z7da0dQDavxhW/YhNYpdceaQyDP4tuQIT+o7CPSy4PPR63m9Se9pRe9QI5bryMAcLL+qWIMon4OgnqmbwxOY3V2HQld6rTeg7Q5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSsqpO8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSsqpO8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DAC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756325993;
	bh=yYl3NtbPtTj2VT3pKSh7WWFo4Um3K68HD1T/6kOsWDI=;
	h=To:Subject:From:Date:From;
	b=ZSsqpO8Xjl8ifkOSu61OsFXH37+kygeAMNJqthz3LH/W8WWKzvocChMzHZmXN6diG
	 twZskTGDqvg6OfaZ7ifoSp/NU4XBghRCEDj7VAUMdij/tmGZDEywq/fQJybzawtdMl
	 Mv1JZnkkixngh7Qmm3XU3rsOHTYUJo9ej10psXLvwig91ZE+OnQhzI8snS1oXpHx75
	 SvV7Ucs0PkA8ioAmghxcVh7Yfuf5e49TI3lT1BYwak8tv8I/HXOO50//YanS4tPxl/
	 SByE4VJzn0LEYkixZvA7+ZVA5tGlrukg8xBRsPWQdjtwumYAdAXVyH5YV9CKs0HPXA
	 O7Qd6lGf6UB4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632599358.13182.8058333251036158399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec29ac1a90da6c0b6410f6b580339d8f032cc47439cfd8f2bfa229e80f6db004
Date: Wed, 27 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756325993
