Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4197B2AEE3
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742368794; cv=none; b=IWKGr+gKZ5Ot62PlDUEDUYGLIu/aqSnGwrdEc/4A90rh1a8QMQ9gBCZhvn4I2uk3ENiUIiYWdlK/TU+FqroU3bx5Seg/z/lQ2SXNK30Ntxhs1r4g8JrflkXLnUKBhZqFaxTJrjMW0hLB7sUH/J2aCBpPglA0HNs5Ng2F7Wj2w9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742368794; c=relaxed/simple;
	bh=7mK66WMCzIai6pwQGo1YjIhXtJv/HuH07Uwdks2jD9Y=;
	h=To:Subject:From:Message-Id:Date; b=ixp3mtk0Vq256D0v1Iy1PEpqV1m8jHt14Y9pQSMUVO0G/6/U/tiZ2TEmkfNewvi0Fz7Ppy9LWzFTP7FAHEZUeUXGLNHA2uTnKWGEXkrIY9F/PSl43oizR9yerGDtfcb5FB0V+Rr30o2RgG5ehSxIQXZUfwcFCeE5UK7TqDgZ7E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOhtbBja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOhtbBja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E8C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742368793;
	bh=7mK66WMCzIai6pwQGo1YjIhXtJv/HuH07Uwdks2jD9Y=;
	h=To:Subject:From:Date:From;
	b=rOhtbBjaM31OEZ+6GcIAVHzai9icmIO2pChtMBtCQrC12XvJEjhFtoxeADYUuVIkX
	 ZwnFYj4i7ratRHFupUoq2db5KAxQ8btoMx+e2vx06ro/Wt7+1xv+3bXsNGYKjc9Xzr
	 wdv5Tv8BtCTGpUAZCf9O0OcOqQcIKSLaNA2Nf74PbdQTxemuBlBwsu9tJOxbB+sDZI
	 W1CkRhdy/kxXVO1AW0WHeyrQpRcaARfbPEsni+8gwgKLJI9JhYCtEjLfe8/4ZcMX8U
	 ZoCv4+qFaOGRL++lrecQNmJZZ+6dQOGTVh5x8aG/5qpzZuIraOx2mFZL0ATPjLVYax
	 da1KXi2RFRl3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92630C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236879358.31454.3599167483917263078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1ae132f9affa92c7f25f9e557fdbbdb1dc73f71125620597b9485610f98aac
Date: Wed, 19 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742368793
