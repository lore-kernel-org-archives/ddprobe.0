Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364A0653
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734185754; cv=none; b=CvOwfkO72YKpJ1qmheERIZ5acEW82H1/ShQTM4JpSQIWOwqbbl+RA1eSqqSxhmlNVOOnlIHp8SnPIH9uYtzRBPBq/J1oTslj3k245mbKOxpPYfRKl3hzo9hr0gwkbg6SK8ak21fGV5HW8cdbz4vQPm7LhJg6H3svY0bvyw9PPjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734185754; c=relaxed/simple;
	bh=ZtR5vqIpWNUL/ccACC3FpRTxZtE7NrdGXv/56DAieAs=;
	h=To:Subject:From:Message-Id:Date; b=KiaO2Z42ElukvPGucPkfm3Aa48905satnsFjM/NXrHiACHkcXuMgnpY72xxDBcHC5weSz8pbikAzENjzbDDqKwkOfuc1x2JUKRbjrAuZ59QqQrV97MeDdspVmWgjMSTt4usWs0XGNg84X1mPG/cK8d2AI3sWOnVLqXcowwoj5Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A702YRfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A702YRfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE69DC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734185753;
	bh=ZtR5vqIpWNUL/ccACC3FpRTxZtE7NrdGXv/56DAieAs=;
	h=To:Subject:From:Date:From;
	b=A702YRfIbNsmXM/qh/jA7ja5OPkeo8rG6YF7xpCZHnZ+0uJ4KTXwpo63WDCQwolI2
	 KcR6lZN1kEuSXtLzwJx33CxBtVMIj/qe0uEumYloSNXCJ3uFwqipSGTc31kizsGKon
	 PX4i5B/jsqEXUfpDN3x76bZzRVoIrmy9+CxsLo1hVw1Itb/MxlRcyFGmTNU4FyGXzO
	 yVdBm1a3hMzEJGd5JaRlyrClMDYjaGK9q6dZc/lZqowjRjej0D2Ks344tEQKR1GJpr
	 Hy/5dfTa9PNw5B/dhKqf595NuNTLQ2x78Jrs+8RIrp8xQ6I1p4ZkrrTvgkoewKcpTb
	 xexhZmJg0kjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93005E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173418575358.386.4156104552215574491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9da4c6377e33f64f5dc386e67ac6bdb9d3de5bcd1f5dd8cf2d195c8f80e27e
Date: Sat, 14 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734185753
