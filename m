Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C3B3446C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781112394; cv=none; b=J5w2emmGtxWz5CiR+ZHp+V1s8U1ZVYsOh/g7B9hJbKQSYjKEQ5KtTcSUDUC1fTPrJNjMNfNkJBvDfmdWJfyJ2rWybpJB6zCCIJc/w+wXvGw6TYOP5BJJG+FBADB57vcw8xmfi+zJCW/eXrR6DTa/6xlRd9JK4ExWL6fXi9LInuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781112394; c=relaxed/simple;
	bh=3amz/poOYKzLRaa/BpcYQ+U/xdgW8ENvt2gkk1ie/+k=;
	h=To:Subject:From:Message-Id:Date; b=r3AWDUYCE53x3rkTm8XXigZ2upldg2yM7kXtZIzFYSLinO7CBD/Q38lti0/ta7W+2H2QffppCWIGDYVR7f1sFppMHhsjcjf+Nk0c8lB9kivQd19FrBSrE+qxQ49ZjuViL04Ks/sj2D4G0GUun4Gw14ZdGdC9/gujqaI549xfJEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAzsFxPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAzsFxPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D55C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781112393;
	bh=3amz/poOYKzLRaa/BpcYQ+U/xdgW8ENvt2gkk1ie/+k=;
	h=To:Subject:From:Date:From;
	b=vAzsFxPNRHRmQ1o+hO0ltn5jaYxxmBdohtTjEyvztnWHpWpeil47zFnM7MbHZoYT/
	 DPuvxDfmhtPsqjcOWg/mPj8uaxEzDrdSZbPWZ59bD9GKdi5jXJSEoo0kRv0vPdhgvw
	 gh3F1M9kYZve3WsT5i6zA1qFKwNBpPpJlj3NGWlE3q1KHYwhr1WWadD5v+2V/7wkyQ
	 fD5KkkoUYbZcaN06yYKPueej9knJ4YKYXbmXMi1yx+XB6J3BrwieM+Z8pWAbDuvWgj
	 uFGVUaBSjk9b89r/oGRWaUdJQ7PhT/mQm/RgiUwGdxkFAgYaWgLvfxaEc0ohZwdZSg
	 97zNx8BbeMcXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC45DCD8C90
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111239369.7184.18136991360115008822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2781cce8b23d450dc40f86a25d45b3ee940eb7c37559c6ad78e8b398c00f97
Date: Wed, 10 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781112393
