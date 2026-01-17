Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C4476025
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768631034; cv=none; b=be4fOkPpZlUfInJ1SuAbszWh/S6IdpNS/LXIeW9GB7BfZ7JLjqluqXZlSUzeK8Qu0a9eGgJAtW86JH3MiC2rz2Zf7LQcdpmpITEjYqcjZm94ZsfYHAj2AY+cJ660Y9GRAWdZbdAccIHOJvJwt+TAO9I8eZQCga66uscSoZgvxZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768631034; c=relaxed/simple;
	bh=mIU/0ra6jsbf1AKvFSCyXg+xNxuu4skh7Tm476y6Fxo=;
	h=To:Subject:From:Message-Id:Date; b=f8YLfTxtWSQX1tPzV4ZVSDtNCXQWaVwpWh/QKaeZ1YTWLyNwLBpt1/BrnesCjZErBnXrfWVWtNW/BNBifolPbdkeBvZp5oPiryEZxELEzktP7Y8NIpiQjWz0AgYV1UTG/RHAZSqCh6S82nsYNYj8jP1bqA7Md9UsNHo/bSwl430=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loom1k+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loom1k+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6922C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768631033;
	bh=mIU/0ra6jsbf1AKvFSCyXg+xNxuu4skh7Tm476y6Fxo=;
	h=To:Subject:From:Date:From;
	b=loom1k+xztSGi7aFP+kXL47LRrP1D25bYBtt0xWx1lauYj9aVBDkPGtWf/E1AZJ8/
	 LTQmRvftBq1onGiH9goTUmrdJfYZOdIA6jIheGitda3+e32zKRyp8NcVfe0ljehaRV
	 hln6JPRx2NTLEQJ1oIVfMSKtShyTB7LN+yqBCBHie696jGeRsXlJJ/p57vRc2kGNNI
	 ZCRj1xHdZD5q+3iq8OyeDQJ8Gzwl0xPqzneaDDj1rMCfvpkkDHiiKjzlPYjrWjLqyd
	 +ax6jR5ixuIlF4SyzSwQCe8Nu6MochMDwVI5hveTn9VaJPa2k7tTTjDrOX8CvNxMqE
	 zwNqBP/9yT55g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EAC98311
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863103357.7755.7145335077056082317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a66ca9cfe7675864adfee03cbbe17433b0a3678d188247e8cd5969aa0a9fda8
Date: Sat, 17 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768631033
