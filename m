Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2344F288D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760316594; cv=none; b=C5mxyF+qq5nGbW6FIhzR6eNcGq10jwxYbHgRnVR4h9LyQIaAvtCptEE7Dp3Ev1rdK46j94bjuVk3DAVhVHOUiMQ1WVMaDLWWHw+eTwiqmqS+xxWwyANYFYDCWikAKYxvUzVXnR9RfuCM5u88mCJz8AdJIh9kn8Y3PQEFhOKGG4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760316594; c=relaxed/simple;
	bh=deeDGCQzzv3On3E9IlmCZCc2jtl0+4GWVLV4DEevWk0=;
	h=To:Subject:From:Message-Id:Date; b=dNX7d8+vVLX08kBRsfJ3ubKKVkYHaE9tZXFASGdBM71mNBMrQGYehP/I+BP/Fv4wXDGwloTiGPvTFiLs6zXi43AZOikMsU9tcEAVfJN6btbVwpBxrS+PgyuQ1VIjsfkxhRBwXVdbul14WCWpyGlTsNMg8UVL2wOqP4npeme7RwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NceEK1QY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NceEK1QY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85BEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760316593;
	bh=deeDGCQzzv3On3E9IlmCZCc2jtl0+4GWVLV4DEevWk0=;
	h=To:Subject:From:Date:From;
	b=NceEK1QY4xm6bVoBeGQJH00YHoWh08z4i2x4lpbv0Sgpr1BPnmSLCIfrcWAt498fX
	 P42XEKSVOz9ikPMzu5c+hyR/kI2TeJFjkdpR7X/0sBR1s9zw+bwMtRacTO1MOkX/UD
	 nXizqNikUNyqFEFE2AO4RBPbJqkj1GL8Ul7Xef4c7Npnrjsh+qNT6DjM50VpfrX15z
	 IPDo1G0rg+lEh5LQiWdnmsFv9iaX9Za6miSAc1kw6MfIS87Ms5csOa9uBfhPMN6rQ4
	 3UImbDG0cPqdsr82RELLvuf607zVAE8LyzTqvX98U14wBRNIQJpkENKqJzCDwULuMT
	 yITjcMcDU0PCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE1CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031659358.27299.12183420951023072814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29e470509426b8b46886c089484b445bc8cefdaf129e183a5d7f12f17cd5fb8
Date: Mon, 13 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760316593
