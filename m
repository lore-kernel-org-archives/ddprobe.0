Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67684176FAC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714492943; cv=none; b=uxnP4dqwySarKPATC8mXBM8Cv6UHZ4xhHxyJoMX/+ys8vZby9kiND6QyFj3bEDRm44FnBpZuHVUqlG1fUiEi2w/UtOsF6yVXK8VmkylRqH5Z6DHNleaEka9gvOFazh7k0fPXZ577/kiWi2xdLuH+9yMTCIYVdP/Y1VR6kdzZ/sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714492943; c=relaxed/simple;
	bh=fy7lEMW9vNPu8rAiAOvhqK/tHPv9vSWr/8yqOUp+Cdk=;
	h=To:Subject:From:Message-Id:Date; b=XwO5tvDrSoNCRPv3uWCl+In5puz9ck/stY0S+8MKotkOXOjV5krb/h+AGt6yHaw4yCADANrBi2+7TyKTtezm3uRLxkaVxTnFgbRMBxKOGeZ8mvNnP0AK6kYjxGLR7q8ZT4nqERRv3TbvzZErtiyI+7JAvX2SMTu8m6OBCVixI1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTvZib/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTvZib/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8EFBC4AF18
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714492942;
	bh=fy7lEMW9vNPu8rAiAOvhqK/tHPv9vSWr/8yqOUp+Cdk=;
	h=To:Subject:From:Date:From;
	b=PTvZib/iZSbHu0PCum0xzIz57hAEviu/XxCr0ZJZOqQk8/j7R/sBXEPYTSMTlvtcQ
	 76NpvUdkvw5YFzIUFxsYgPfTFMf61IrPTlRz6CS0SqKEgN2CVW9BhgwaIpEyaqGX4k
	 ZJ4MQlWBFn6LyajzS4kk0zrAkvEd3rZIz0EzsMClXJjWr+JLkNnt54ypuRl3YtVGjB
	 IsSmAIJzwwW7VmBB0cUtJ1NNKBdlQQnQ+S4L874rUo4E6djHI6POJnuc4Yb2/Pj11+
	 TllpQRfxwYoxc4cw8ZaJXksS0jN9DfYakeaqDZht8++ecDiox22mSZybS0/VLzKkb2
	 S+13ZLGFGk5fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1C0C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449294282.30256.7744050291489423551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c91017158f0e420a345a0c794cfa036d26a9f3fbcdb97e992bcc43aabc98fa5
Date: Tue, 30 Apr 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714492942
