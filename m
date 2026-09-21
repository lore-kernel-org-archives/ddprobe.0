Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A7E498922
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790016634; cv=none; b=d9p2og1bITG8pcBI2/zj646uwBpcIRLdKtdxXmkvLqRk7GN56o4jPTn9RZaSykgiiqg35lY2hS5MqsNTkS6MaCjPULqX3EapXmXGXatNjtya7mPXSdHzoUqRm9UVzLNFYkhWBcye4I3edktTsil7covE8FB+JP8knM9sfFeWtuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790016634; c=relaxed/simple;
	bh=T8Cxyb8tKjfYoamFVRz1wuLbTp/vVHBgkF95Y9tyN7U=;
	h=To:Subject:From:Message-Id:Date; b=sq7aMdI5qt2eqk+HSUwQX4SgGvnPSJ6gUpzBu56ukK0ucS/qso1u5nOPkyMzdkAJIfjN++RKa/yWfObQlykUGr4QNu2owgnF1MsrbCRhaaQGGwhtuCvFBYfNXFrf2lXH55V2t4lxIuMsrqUH2suTYPyKekNu4uLvDGuaZSUYPaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNKKJpVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNKKJpVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6945C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790016633;
	bh=T8Cxyb8tKjfYoamFVRz1wuLbTp/vVHBgkF95Y9tyN7U=;
	h=To:Subject:From:Date:From;
	b=gNKKJpVjVgAhQE0g/m7Lh8/d5S01/z51CRGsuWrIOqPNrNz0vqLbjZkd4s+Cwlj7F
	 D1xy559YmcaRNGxL0JYL6sokoGLEKxOgMbzcVzLSC4110pdkS2Y0YYsFRJLWXkSVAi
	 MMtTIShZkaNxLYEELTcfd1fY6EZBuiL2oUHY8I4bOI2B8YUG5ReQAppYMCMosejbLH
	 QMKhx0C3AdHmlxo5eK2PLeUHCKugMMH/jdYjgoXRnmwUneFy2I1YDnl3qTjjjTLLbm
	 TQZIuFpcQlYLW4GVeFtnuaIEFQ65YZgz2Ng3Mz8lkbc4Ph+KSfc47OdFM6MGtTwKn7
	 M8aebNlsWg4Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14EBC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001663371.29164.16953936612931760094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0fda4129ae9409a379548e3ec0e5261913c9a9f3943c6c37c2c1e217fa1acf
Date: Mon, 21 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790016633
