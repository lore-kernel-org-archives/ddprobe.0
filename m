Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BC1267B89
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765902234; cv=none; b=IMCRmU0gjzEZVpVz786ZyBcHkzT0MRIHdK/CpK328DgXN3xkju+hgAhPu+MIZvkIypH8iUbpw+zxCeb3Gc3xF8Y8vYh5sdo7hVbhouL9JD1oTaZ2TWVYMCrECWkq1YawDOiYr2WqektJ5x5LrRhY7XTSyyJx3gxqNCYKIAkCk+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765902234; c=relaxed/simple;
	bh=AeQzYX4LMfo70px0V7DYnQ5Y7YYFR7zA2svlsmIbz8U=;
	h=To:Subject:From:Message-Id:Date; b=Gp+Dr2u4nfGK721iv7SKra0yYwRwmnR5qBenjR5SBImAxqvoFsQG5hlLo/XCL7uNgBCD3XL6Izj47jCYAvI0rIfNYprmKSRnZ6zmAKlx0nRS3UpGL5+lIhaGeT1Q2fn99lHvBEpBXw/leIv82d3IXHy6cb7EAFJc0R6Za70c2dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBL6Ph1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBL6Ph1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6E3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765902233;
	bh=AeQzYX4LMfo70px0V7DYnQ5Y7YYFR7zA2svlsmIbz8U=;
	h=To:Subject:From:Date:From;
	b=RBL6Ph1CnWwIdFa7dGEYpvAXLJ5rjOEkOuMga1Ri3gwmAsmhogfAKxCK80rCttXmz
	 ECgVW2wG+I73fCd66wAKwwseVI80cbEYtG+dUHw/oVNkkJ0pUAzs1FdnkSgvU5RBoi
	 bpamZiAqr1TzZ5se7kwasUVGYK6+U9Gyzyli/dQX2IvhAqD3tk5HYYFZKe2d4QU2NN
	 8/Ocq7X3m4a5Hr2O4F9o7t13fABkBU6FsuIYKjbOeSaTFJ1PUPiHFe7LEN4uNq84Ay
	 uGr6ZUV6FPtifEfz6aXAhhThCcMYKdwOdlalCRAPB8kg5jHCSjiiAVBmrTbpuFybzU
	 bo0mUYWUyxU3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9624CD609C2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590223360.19002.16017492336595812447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e406cfe96a29e32fae0a20e9f1d374485312daa49bdab3b9558de958068ff836
Date: Tue, 16 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765902233
