Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142392E6CB6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756754394; cv=none; b=OhA4cJnM06KFaJc8UQhhRDtXGATlO+hjyoaWc/QdQspeAOYCbHNhyRSSadw1Dx9mIVcrXG9AbjSDT7bvbCEQLlDYz3nZ4MoHLyPEJNTuCiM6viIhBbDG1Oz4z55Ql6JgDMSV1P3IGG0OgZdK1Em9n+dAOJqAobV1iKSg9/UdJaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756754394; c=relaxed/simple;
	bh=dSGADldjhrsqDZPnJPnlBAiu31ziL2pTti59mXzJq+Q=;
	h=To:Subject:From:Message-Id:Date; b=ZrRjuJJI/0G31GolqRpwMsCrluU4Q//1Aoh5fgx5MKkm0ugmq2Q0Egfw18tLjeX3tfiL9uJHLZZG+1auPifVVUtOD/J2HfO9oOFxUd+wG6G8WHqmXJplwKF9TScdbN0eh15Ha6q6ZwkumseKULPWcga3PtxrCiZQqOe5xJMouSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMyLa33D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMyLa33D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756754393;
	bh=dSGADldjhrsqDZPnJPnlBAiu31ziL2pTti59mXzJq+Q=;
	h=To:Subject:From:Date:From;
	b=ZMyLa33DdxV2HCSyn4JYtJfJD2i06i9PpXfoITV7hCrkgj1BYjPxnK0cjiLnq3K9z
	 R2KDzak/Qvq4xmHPjtIuFwnl1tyc+EJPohsTNuk8aI6CWNf1GclaT8RBwkJ8q0/We8
	 Gna3gLxuZu5nCb60ZQe2FRzPMhdW4ZAVRxZ3QcfZQv3NkOl73eueaS4ZjXFBsozt7R
	 nVy92aNrHOo4UGdidhvzg0H4mHl6AOKfNLLlSixmW/h20wOvhma3Ivrhzxr0UDJROI
	 V45JaiNQgt8ZEThZ3v3swiY2O6THeUE5aIwLNQvQGLCLhVBoG1iKjkIKaOIa/R9OcH
	 sXlr3XWzqSocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92596CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675439357.3158.15180944434596124120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45f40297dcac0aacf1d58b6fa3c13bbb89f1396cabc24f2af9dd88b1a35eb82
Date: Mon, 01 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756754393
