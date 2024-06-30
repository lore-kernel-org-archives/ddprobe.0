Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7502312DD90
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719754463; cv=none; b=Lv4lIJWmk9jvWIfzuGzimnXc4yKeadM4BtLpHxpvt4A94TOQl0FAeUr4eS4RYFx56jR01PBbW9SRNRak2pevbpMFy3GF5etLn7n+LBQZ2nglkH1h2BtxOaxFBsIrVvfFtSKJjC+vPNu+thYBUHES0XY+SpNECu31OZKaaW5j/Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719754463; c=relaxed/simple;
	bh=SnhxL9sD94f4CeU7rz66fenoqCSv/x01kZsSmApOfPM=;
	h=To:Subject:From:Message-Id:Date; b=ZhnpSOE/tc7rxJzNKc419N463LE2G/MAZSKUjHxxZ4gxJ/+h/gERFqTrc3k0Rz+lNZeLTJVWsMQDxW/rRN69T6LNvRy1pN45sO9skFADUF2M+FzDpilixSkO1OI+MBrdk0A5HuoKH8Gee8foo/WncKmTEIL/7yub/LKGbtJ2X1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyre0DPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyre0DPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E305BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719754462;
	bh=SnhxL9sD94f4CeU7rz66fenoqCSv/x01kZsSmApOfPM=;
	h=To:Subject:From:Date:From;
	b=iyre0DPjbAkObj3ZAG1wt1UC9iorj/1B1C19Q4v23TRa4C+vdpYfuLCCXDGpOIpLY
	 D/0785IE+mpcfFf8g0XL1XHsrk9nClLPNgznTj4rQEOtli9CsNPN02s6IjzfqndTr3
	 Y5VnL4WzpyZ1sg230XO/17Tp7ew/povJdUtuOJgfotHjlSE6r6vs2e7ohHSrzpEjyA
	 XAhgkXTnrRytrubWG7iiAO5tm9eHInEg1je224QF7Yf5tclHGsYuODCA0LZylQahM3
	 igXmmMSv/U09x/HzschhtRC7pfCPwKEQnJt9r6XgzYhDbp5aauYsYchw6xB2DhA+4P
	 Uh0ENgadEnCtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD237C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975446280.10794.1078654106645982075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c618b3e45b96aae59dbf772ff3b07914729520a32460044298f0bb05f5f72904
Date: Sun, 30 Jun 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719754462
