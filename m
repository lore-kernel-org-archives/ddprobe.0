Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CDB27603A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772085294; cv=none; b=etWl2wxfXDZ+S4sJldI0EVB1MhtjIBho3fuOmE9aKT25vC+GkDe/36vV1Pm33Txi/H1poHFkBNdf+AkCKWVuST2H4sVSV5HmBg8GdyP5N6c51unMl+0MKL8Z1+zaI5SvV/6DcnID75th9DMXIxEP21uj78AzTIX348r+5aPh75I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772085294; c=relaxed/simple;
	bh=aL88PdXWBqFRxbcJqLwkGwX6vrhL/i+xPxquFSaG2xc=;
	h=To:Subject:From:Message-Id:Date; b=rB1glP4jopACBF8YAfHkzK2f0W2+Vw0fP+vhrHq9Bzfj6Cts7aDE36lWoSwvSkoQVJYUtMRwyUAwdcKG04zBqkGKGb7+/HK+hoLpKM4D7sJn9VszsTjAKiVG0bkVz4B8axRH8ZMgaAdkmZW0OxWkLZ3X22go0up0+1ouBvQEaN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdsebvBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdsebvBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE28C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772085293;
	bh=aL88PdXWBqFRxbcJqLwkGwX6vrhL/i+xPxquFSaG2xc=;
	h=To:Subject:From:Date:From;
	b=JdsebvBOdADn9K8geWA2YuuoypUOs8OhbuECphfqevRC8jYkHaBtLNdVymB5Ig84l
	 aVntKkJmxt0E/X/aYXxppsNDO4DUvm8ku6P9T2tQhwjRSECbeP/M6JSrVIgotjGE9r
	 2tBSQSFvZzH3kjTdrhkmFKQK5eWuJ/hIjkwux4m54ZOEqqdDjcCRKtbgBt/CN7QKXA
	 G9lXm6aIeDLVXFe03Ii3pQLOob9Kkd+R5uV044pNZgZjeqsDjwAYjOpj6Wypw7OpLr
	 Qo4/hKOCd7yZIodfFKU7JtbiIgfTz3ipopZPPj95VE3f3uSyrulWEiZbtDBmD67LZ4
	 CmMSYJqV5gxMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90668F55450
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208529358.2949.8614758933554190339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223fb9473812681bf224dfbeb673bcd6ad3b99ba7f7272a396ebe2d078de8745
Date: Thu, 26 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772085293
