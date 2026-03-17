Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1912615C158
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773707094; cv=none; b=cTfzLZ8Goc1ab+p/KywkNCj7/cVvO7DmFjAxJAQSYCLB44D0SiC9073Sk380xWgYM0RmeCXWBuQP0j027YDPBXlQDSVguayHMso/zpr8AGxzL/K2EPscO2Y31COM4eaCRcs8YvcPDveXDWspN+5Zuwl8A/bioEzpksv0maQlN3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773707094; c=relaxed/simple;
	bh=PZW+kkMuiFB9hdK9+sBtOIPb5hDVFr0VRkFbAinhiEg=;
	h=To:Subject:From:Message-Id:Date; b=i4YXlfC9s5iO3acpVn3ulTJqheC0AnX7fjYRpu+oFAAN5+UsWGVDvdyG6DKQ3MduLjjSPfPogNTSXl/T3LP106aUPqiSVd68u2hysFAiTA+7Y/HI6GcmYpHtlV+Q0SLx2ZFsTFS6xWfoGfWXDkpiaNwVpGH+n0mSSUgy3IVDl3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVtX7iF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVtX7iF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5728C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773707093;
	bh=PZW+kkMuiFB9hdK9+sBtOIPb5hDVFr0VRkFbAinhiEg=;
	h=To:Subject:From:Date:From;
	b=JVtX7iF6QmUtkVbq9zEK+8Y4a6101yKvywfVlzjkr+eqI3nPHtC3MSKJv5VgB9XJ7
	 VnnrM9yBRIzrgC6yVCMdQI+JxevLkR+ixtZWU3qzXCqtHLIaf05sf5M812ZLtoPmCG
	 Ecy+tp9O6NzACqczuYJBpATF8jkP2yj4+HjNbpgd27IDiFLDnFd2X/xZAQWHQMHPla
	 JQQn4NmnGdoZ+P+iTVeinz6LXQ/wQ469Pf8U7VfqE/Us9ciDl4t9jZAzd0DnEXKs4g
	 3AXA6IoeHq4UF3GpyO5ni2asi6jNyZx5/EiCWQdpYEWfBWuQ2uONZnaXhsFAsF0vsY
	 vJR8rqnYxnSfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C5CFB5E90
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370709358.22213.4674564935606001065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3e33b3fcabfbbd6bc89f4fcb8bd7c15fba04d2a35272a1873e8546f3d906a6
Date: Tue, 17 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773707093
