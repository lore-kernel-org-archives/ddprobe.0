Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403FD1386D7
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732137354; cv=none; b=fNu7x1yKEoREFiyuuJbHRtaOOVMtfQbC7oHr7+IznWg/wUpdKi5KH9sj+Sy5BqznmyK8ILubY575ZBjQmpt71DGLcuLj7FVVjzD+YWf2M9wdI+MpnVZa2IDownXAQHgJgggtFtkC9s+ugEjS++3rSJZs0gCS3+UAbYn+w3P6TIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732137354; c=relaxed/simple;
	bh=tKRmJO0moVbkqYaTEWBB9Pz2G5w87e6bvlkB+BhBK/A=;
	h=To:Subject:From:Message-Id:Date; b=Y6K+Mv5NN0mFHXYodR24h7fmO1E7oFVtzWtQKKoamhXZEYr8xUxVpgtl9kycYXBQpEY/KSfRqtRKrYfa1nti7yu/7O7IqEB3k6GcHfmMbMBZ+fFsPnBhKSXMNOQQ9nXylmeMIzC8Lja9zodoLco61EtWdPZKzSr40hfY/HmmhiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMXg88HD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMXg88HD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC55C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732137353;
	bh=tKRmJO0moVbkqYaTEWBB9Pz2G5w87e6bvlkB+BhBK/A=;
	h=To:Subject:From:Date:From;
	b=AMXg88HDd93iAwD/A09na676ToAGFEb70qkIlBeK0hAfigYAHMOWTrqd+1fh53csf
	 IzGVxmFEqFvlUFyyTR4RRZQS71FGslUv1H6Cyxoptw7UZg2jckZSLwLHP5BeHkIvKS
	 VPdRBQSN7c8WZYe78TYK+y3iO20iJr6R25PEdKUWt+zFcCAU0bBpeHjWSfSWj2W92B
	 HB7mPr4ix5k8fRZfhgJgF2y6cjBdOcb2lh2KJjV1x+V5grv4nYx6ymu71YRsU2UPU+
	 Sg2jbg4G6uxvHqgBzFzP0i7mzbe8rWa1M1OK/7tw0I3sW1ybKkc8bh82xAOp/TXwJN
	 +gvUhEkwAgtHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7364D743D9
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213735366.27095.15251707812996704905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27953d2999697a35c893a7ca24b6b62837f23de6f89d2574f4a119b73e6b5f17
Date: Wed, 20 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732137353
