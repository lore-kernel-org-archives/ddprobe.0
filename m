Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E351CB528
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727805954; cv=none; b=YnBTh/OXquSMNJA4g05pTo16EFSGWPYFSeMwXIWzKGWJAceAHv1KVQZq5DOAIhAGy8bPt2p0aNsPRqTNB/WK1R4RmpW+ighh4J1PlbnvwMprZUqEFGa17vZaccr8EGPf/OVACSXJPkVoSphryUpZxsnkhEkorUzYW08GPUe/icA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727805954; c=relaxed/simple;
	bh=xGrL2Op/ryzdsbp6m8xe/jtglgAqONghH05ElbF36nQ=;
	h=To:Subject:From:Message-Id:Date; b=ZUvm//ZW45k3957nnyE3LJwy8Tab2qlu5J4pNbxcMWW1LQTE4GCkkblhFdi3Jb8EENlae1qRFkPZpjCwesKv+SQurIWFoVeYmSvZSWcX3Zbkls4s6kZ0UDVsR94jdehDQhZfaVMMLUyv1zKbIOM48+dICx5E304S+qjVn20tpEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2ZWZsFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2ZWZsFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A96C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727805953;
	bh=xGrL2Op/ryzdsbp6m8xe/jtglgAqONghH05ElbF36nQ=;
	h=To:Subject:From:Date:From;
	b=t2ZWZsFkh3Ep0nXiIRBDyiUtpwYaFfqZdLx//WWWaJJMI50Sr3CGEQuN2I17SVGeR
	 2Qu8xK7rxIfRjkFN6Qkzv90G6OBKF6X3IYbFTJ+SlL7Mx/sTNbzcSegmSdBRgBexmF
	 Vfloxum+yRRL/A4aoKYyhjzGd77UBqOqGH4Wl+GeY0nOpa2ccui0JCM1awI9w0fHuP
	 HitQNpixKtmIL+I3TJnc3CqPXxNYKpkKb8jenfMeFM8dWVH1huMtoqYISqtPb6jwjL
	 Ekd68kaS3x9Wv4WbCKMj8/iiYkEwlR/AFPpQyL99OY1TGISztPKoKXP7+TG2XYPor3
	 Erd/alLlJQB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993FCCEACF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780595362.29133.5066943414203122945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36888ca976d08c31af6408203d3acbc1a7e97bdba2d6c001604c09225f528446
Date: Tue, 01 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727805953
