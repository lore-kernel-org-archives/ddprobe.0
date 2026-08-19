Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25527481AA6
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787161234; cv=none; b=CVuASmzkOoVXTxeDdTDPrIKSsZEAVi5dmpUwoSJWh1Ofm1bCZGFnjT4twOgWxe1YTTfMhA5XDfRl9qshYjRFcofJJqh1bY18OewdAG/b/6QUi9Ip1xbTMB2/AdtTIT2+pO/ux6+yrj1RBbkbZFwan52qhX4tGXlSU2lmq6SNvjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787161234; c=relaxed/simple;
	bh=xYjTJNnjCS6nXKRcHTG49kZOGuv61evaL1vFwOO1P7s=;
	h=To:Subject:From:Message-Id:Date; b=VzblkaOiw10DME55L1qD5/d70AJRN2IHCvgTzsvQ+7TNCatBw/hTL65FvSKbz+GH4CfLPoIKfzu5/pErhFd9jjQByNZSRg+juFsi/8P7v3HU9z2utwQ8jZtioosKhUUaRpNkC/BEvao47sW305WiD6nTwMDk5yO5y99HVbo5YP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGdEMIGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGdEMIGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8C9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787161233;
	bh=xYjTJNnjCS6nXKRcHTG49kZOGuv61evaL1vFwOO1P7s=;
	h=To:Subject:From:Date:From;
	b=TGdEMIGRNxtztsHKNUfyPyQS04rCiX8iiJtTPsma7wxs9CjpTQPSrOaaopY/vOWj5
	 7MsYqdlw1OQnIwoSdiTydRRYucPDfQCs2Y9v2JfrxNxdOi17tE7R2teAVn66hnFbP/
	 Xo2SuoUaDfrVtsSRfV2dSDDZnL8pgRVxvL/QdYv0ONwXiCyTCad+egElTu/bJykC4f
	 Pv8gGAU6qJQyizfMTm3EzG1dUWP2Wp4YdPvLj/EKFhIOtcdEj4iZcRE1CumS9uRFkG
	 +Q3d6XneI39qcKxMrWe/UfAsbIPbeTc1t0sZ9l/ILHSImtep+3cC3o5D8seGx0GkXE
	 1YCFQwwbb7mUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8D0C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716123368.30637.13453645895552871839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76fac91a2b9d490b568dd9adeb9c0b3fa6698293b92727eb70ae6c397051e3e
Date: Wed, 19 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787161233
