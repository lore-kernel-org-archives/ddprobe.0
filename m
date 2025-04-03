Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8EB253F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743708594; cv=none; b=IvCwd7tXR22maMjRAJmPtQUw8RYOvBRWE7WifZp2zpv5eYRXeS1OTvYNY+Er1Qr74n06UEeBMXqvc3t1xfjV183xhknSkx1GLfNxkFEQaXmeZH8lujlUTd9BUxMSXnsOb9KXXlM4d473XDf6BQjJU5IOENrB0jJ3xSsdHrVMxR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743708594; c=relaxed/simple;
	bh=zyXGKSMU55geEA2JPB92c7xIz9l1Ucg7m/X8yV2Mt64=;
	h=To:Subject:From:Message-Id:Date; b=PDncKAaTpcVK9y91onNDkaAQgBsAOw7qblyKB6340bFBF4k8FUbAJXmS4em5gZ4gYp5Dw3AU+ubwt1JL7s/dVUN6voBE3H5ZWHxwoYRVfOJUGfF+Qj04XryeU/U+sl19RJNYz8HJTOo+nW5ybhRbKFbmsGOBA9q1ZsOARTCaWXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYh+X9Nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYh+X9Nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743708593;
	bh=zyXGKSMU55geEA2JPB92c7xIz9l1Ucg7m/X8yV2Mt64=;
	h=To:Subject:From:Date:From;
	b=YYh+X9NzC8Cj++WC8tL1DiP3xC5SH8ygq6B/GIk6VbpEdtI+G723/wjQrFST56AzT
	 C2YpprRKNFdm83GlTopNxQ4UkKPXStw5UfyIXcMV/muFj62rvrwdDEBsbxqexub7Qb
	 Og4KSvOEPhGdz9pb9nXm+mR1TvOp1hIFNNyHwRlYpJu4g7cRyjsS4+RbpxhztoY3wP
	 844KYjMEGh4ahInAuYHD+X0vZLdsgPL23qG48jmDT/IzPRLFh879XwOx2QT6+UW6dx
	 5CYb8kHk5wgKojOXTey6fM6BnfqOjiHH5sLZisulcYBnGBURbg4PqmcsdhecqiUYcs
	 YVh8lQxn+8Apw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9482DC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370859359.16238.18079903051298432349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7cc3b8923b4d1c7ff1f09cf0615d158a1753af5cac0cd19fd860d48aaf21f0e
Date: Thu, 03 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743708593
