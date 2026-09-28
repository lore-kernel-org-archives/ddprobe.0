Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253144E4C55
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790608834; cv=none; b=QT5VCWejL2+a5MH5Y5Y1v4yuxLT7uQZnoiyiu3ymhEBfERWBPjp/Nh7nqiA5UqCKEr/6+RB+Q2KEJPlFwbibX8de+dRZ49PVEVsLUk5XoUj+m0No1xgkCPqT+joaczgqjps/Nn5jSGb1hGdL3QE/7HFQo8TSzq2hRcSvBFxGmv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790608834; c=relaxed/simple;
	bh=M8G2CZgXGnN2ARDObcvvXped2pwGJFtr9j7h4SefF50=;
	h=To:Subject:From:Message-Id:Date; b=DE5tHHXJOXWd5hOkkUyrwHs1Rttny/ul9+P8+XW/8fqsMpxXGkbfSY6IHUZO7mQcqNVjRM4qmr42gvIEjYESdjtVvw2YM3h8f5BAYv8K+eHL0OzK60z8MhoEedxO/AvSvkB51y7dnyg7vS3PieIsRoxkYC1+EVs26Hwjwsl9yrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN6GoJ0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN6GoJ0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7CBC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790608833;
	bh=M8G2CZgXGnN2ARDObcvvXped2pwGJFtr9j7h4SefF50=;
	h=To:Subject:From:Date:From;
	b=gN6GoJ0AEUNqRD2kYTFDYjLuLp/vjeQrrseTtx9KX4RRLUNHyaI3eZIIJUbTeviTv
	 l3FbyBTpaOPBE+G/uWCEG8w9vYfJL2MoY8JLnFNyclKYU5todEg3pN15KhVsZSzz34
	 z5l2dXI0j9TIgL3rJYbt1JBtGnu9p4MJz5Z/fjmWkNiEj8+si8iCUbRC0J1Yyqn8eO
	 aYzawgsyVmtUNqYZvw/XN1n/3VV0uW4ji0etUJa0JnEXHvGpFIMECe7noTaEeVSmtZ
	 iAZVoEudCMUbe9oj6Gu4kkHLjN2ECJD5LvhPUFD+cZYNy94cPtXfqmS/onqlaN92Am
	 iiH6AxmBz/Agw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEBCCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060883369.25226.14848737919017738922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a124d9932c6e30e86c7bdf2f9042dd918f3ae6471b5bfb1ccc3655ac91c7533a
Date: Mon, 28 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790608833
