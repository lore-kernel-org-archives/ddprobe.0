Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823577F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714354943; cv=none; b=n+yFE5Ml13XtKt4T+AYeb10V/1eE0SGUOeceTNSYHskdcBdoj46OCLuHvBvGYtZCnrziKZAzrtatMbqSJIs28k3U0jS/fiBSfMEW8USUyv0Ar7J9ATskeoPx8k/O0nHJKGMgMPuf/njisBfnnFFQvE+4J1KxN5QIDEz9YUC/ClQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714354943; c=relaxed/simple;
	bh=ShiqegdcPt1mQ9KD3Eg8Jup3dx7RqZaPD2OGaxYSwR4=;
	h=To:Subject:From:Message-Id:Date; b=RmjbhfvbSf2D0gd0sS0aIwhNoEfWjvyQGoFdjFiP7j7yUYjpplHQGmG2J3WXcODG3Lyv1Wie7gmkYxvwVw9avmClChp5NR/dnBpUiAaHW04I/Zi/UYzD3K3FFzUjejl9uePW1PQ/573xYWi1/oQ4kwSlkP93nkWsmq+MvZg42u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd8i8FCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd8i8FCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3D34C113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714354943;
	bh=ShiqegdcPt1mQ9KD3Eg8Jup3dx7RqZaPD2OGaxYSwR4=;
	h=To:Subject:From:Date:From;
	b=bd8i8FCtUb++JvWPaMpgrxppjrNR05RBV+qx9spmcISJGquHlMRRk0q8MB+3G8qBO
	 g7xXk835U9yO3y6SNwlAddn1VK8scdhTf90h0rhSHgPXtuHrVOpXVA+iHUJp9Copb6
	 vWYU8ziE5FjWfZrCxeSsHNFwhy8Iym9RmoXNtWWb4VeqJRebkx4XaWFSTLfzd3fGXN
	 cIw5uDvIL4aiQyXKRcZ9CVoNsQk8mH3pWrgTuVAzfJLPtPMKKtkbcn/Z7hRXAoDZyk
	 vjUwUdg/WFo2U7uqPgEYHSd1M6vLuscgTVwCa1lBtbWK4PNDZxFn0xgmFAcfC5kYtC
	 AuTqOY+gYzCew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D503BC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435494284.8781.17795321967893975214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87a43663016f213b2ea2606450e80fac93338f82d97ea158e752b168a20c9e1
Date: Mon, 29 Apr 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714354942
