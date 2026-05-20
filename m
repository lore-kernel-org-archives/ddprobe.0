Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076053DCD8F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779282635; cv=none; b=N9TmiWeadydRJfzR8oHiDF3IlT/X3jHcBttWjm/kwADYRviHUDAkEC+wn8O8A7aI6T6EKl48zQ3Z1cUHyigsuZyRwwFDuvWBdM2hqXNCTXnL8fsg5hBJRRcU+v0ozomvUA06jie4RMJcq2FeKB+wgr/0OuA59tPJHp0hhZqa7eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779282635; c=relaxed/simple;
	bh=FfeYjcwac2qkQ2hVC4y4tP9fWfZ2Qzj8/r/TCauGTkg=;
	h=To:Subject:From:Message-Id:Date; b=lZQQkv0Et200E97IanriKivWCQ+FZ05RuJRKRJ2nizeqFt1lfDdRZT/XRRboJ6/LedxwQpAnanFrdwUFxIBxXGa2vNKdZ6H/PJHs6UyvoacrV88uTKTLhv7MkMaJeSi9nanA4DpkE6QYhrKEfxQlBAjZAPSrXS3gQ1mUr6P51dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juY4K5nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juY4K5nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6235C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779282633;
	bh=FfeYjcwac2qkQ2hVC4y4tP9fWfZ2Qzj8/r/TCauGTkg=;
	h=To:Subject:From:Date:From;
	b=juY4K5nzZVDO4poideOMb+pYc47OZyynjeRBgE8ceZWdZ11j1sXOxQeh4bWABtNZC
	 ESrg8Ahv9OOPgItB0GPa1UcQH8lHCQCdyer177DihwGS5ZMESDIC/fuk3gb6VDGeJf
	 6KNI9ByY1n+NzOlS8S1MAger1EfJRpF42klTHjjKo9QTNTSh2vsG0+J0R0OYf6aLJL
	 iQKHxksKy482+5kks+W2kyjvGYSf9NnRoOvBADACaO0nZDKLFjo8QMLa3wiTc6kHKF
	 5j5o7roHbQRy7TeN7piulDfoVgp0nkJULfnr0cJuw1nTTuOwv1y3TGL8GMnShUTqOi
	 faB46JiXSUZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE58CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928263368.1104.12550071664938658482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae72076b8fa90a11e452d3f028e1bcc9122675898ec5c28c9fd819864b2f585
Date: Wed, 20 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779282633
