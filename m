Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2099178C9C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777090054; cv=none; b=qI+TjW6MRT1S51i1MzoXlN2yHKom0BJDPJ0IHofJfIsR3t8z/d/EPRzrNswr9Fn3W6PAbkS7p1zpUQl0EoGQkhEDaX3D08ViHuftp6MRFrELOj06iIvwzvXlw1aCb66UwnwXT3jvcHsUJjWOk5pmmvDfM+8UWqAuOjCg2I9yAwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777090054; c=relaxed/simple;
	bh=wf1tzLHHKak8hIlI9XOCsjXB7cdSoOZ/dLlwUP+0P88=;
	h=To:Subject:From:Message-Id:Date; b=ByBdBzDoF3aUzGuygk+RBb63XqMLj4pB4uJhebQTunoPwA8yBKhN9852q6xaaFxSGIYOf8fnGrZlnOogw5qP55W0EvxILVWOOt2qLqGSsAPPnuU9UYNPTFHdHVZ0g0SiSJZeGUtrlngCz3nl5zsv8YD5G6pfWTrf11UhnG9dgFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeXr49Gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeXr49Gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FCDC2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777090053;
	bh=wf1tzLHHKak8hIlI9XOCsjXB7cdSoOZ/dLlwUP+0P88=;
	h=To:Subject:From:Date:From;
	b=BeXr49GcSGf27VIxiv82uGPWRFvwsbAtfYO5uAIMcZwsKe/ZKbrduV/2Zr5xD7hMg
	 sktx71WBbcivNlUgyA9a2ufkQLqaCGvOXmdtVRKkfCs2tFfiPkKrQ01G0r5WOKHzLL
	 C5pmYFYA6EuKW4hFrStq1t3StkoVNCF7I5LLEI9HsUz+kbmBSVTyxhEbD1mKT6Q2vJ
	 UsYW9F/UQS56Z4lt9SzjYPcjGiPGqW/PFpLjYf1wUu8ZMMAryr2EKKozM8s5HtKLxI
	 9meE0k5WlXmxIYY7u1YvAwyKcV7/bERHIaf05wmfAEjY0OFtlW4cnIOmsAcf/YgkC5
	 fj4AAi8fqFjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B94FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709005368.21464.1580288244994471734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618295c76f9d3b12bbd98371f0cc15d608f2575dccd0f44b37c22c899d3992c2
Date: Sat, 25 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777090053
