Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405BF1C8619
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744717194; cv=none; b=aZOoE+yYmlyPopKGwsFkvv6sKnk3MzcyoJdyoiytg+M3enIXJ5BcaQ49uOOzAi162lo6F0BrwjnVM3soRT8ugFxoDcBN/Ktm3Jy5WS6AWsviwpMzttBL4iy4cABRWRoX9EsE+wv1PIIQOPnt2WxIVTJDnQ9kunZ1aDKajNUqAnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744717194; c=relaxed/simple;
	bh=diXU4KHScBA1wQShM+qSpB2KT7Wp3r01tXgdypG2UP8=;
	h=To:Subject:From:Message-Id:Date; b=ROTpyFPgUPmCups7JavFXcF6q2HWmd5bhRboV2wmRshbczPbFRFUhFWiTVgWsdkCDqfW+yYjaBK4J61zuhDtIbYAECHmiYyvEugbIexDhzsZZMLixwnPFkdzYLQuH5kSTtzUDD8ZWWT+2LmRdWMMO4e4X1Fog7xSNvMKWo0jTVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrb91UXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrb91UXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9998C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744717193;
	bh=diXU4KHScBA1wQShM+qSpB2KT7Wp3r01tXgdypG2UP8=;
	h=To:Subject:From:Date:From;
	b=rrb91UXU6TKANBvaiH/scRLpmc5YzWntRLl+wdh4TQSYxBru3fkeadk14jUDSrG6H
	 4tItqPrulEiTSz6MP97DirVxuk9a/ASXecg86oChT69Ce4aXOjSABIdlPAiiUaU1j1
	 lf6+8sPnZ+XSJwWBzvSlFVgIQBCsvPOffbhXKfb50lyxHDsgf1PINzo4REwqX5fN7D
	 f7OYEZwhTAz4HHF+xV2APQx3fIYUcz0x0SXgwY+Q8ASYfNIo1bZ2sMLbGuPIeJNIkm
	 ueNrb5I/ATeQ6ksXBI0Qvt0KX8xTUjNZ4vC6s3LJ/bN7xu7hbJhhIYm4AXdzTkQFvl
	 O8RRZPkD7L2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97317C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471719360.22815.17165181965025667446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c2b0e5f8e1d6e543872b57bc35707f2d342d7688a13e2f20213b0e5cea2e8c
Date: Tue, 15 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744717193
