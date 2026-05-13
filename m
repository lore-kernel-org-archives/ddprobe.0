Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBD1367296
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778638234; cv=none; b=QnSNELrQhdLDoGriM0ov68Kxj/yT+kuiQYYzeCrrCwAbd38T4FSXVa5Wk4+P5O2jx8HDvvucgYGqP2XcBjHDYRIjIWT4rYOi4u/kQFp+ZsMqhefSw+/b+Jh6S6ml3j7+5Vn9eJ2nSnXM1nO4cjMAaBqv1jF77zczcgiiDefrdyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778638234; c=relaxed/simple;
	bh=b6lhsoobaiRZ82aMgiv3Kbc8zwrfYX3fzcfq9mgzyIU=;
	h=To:Subject:From:Message-Id:Date; b=A3/LxXXcur22rrDHfCJN4gdiqPC2nm5kR+XZJfJsdn32NBWlG7aOjf2eChSB4Y1u1cRcsc5PFsgMIIwevFRzittOdwE4lI7G27EhlIbU5B0qJpMxf4K3KyO66kgcO50bIIFonhXZvmJwk/GOKMPvwrmwL6SReW4xQUm2Rq71EY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+TEs5XZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+TEs5XZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBADFC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778638233;
	bh=b6lhsoobaiRZ82aMgiv3Kbc8zwrfYX3fzcfq9mgzyIU=;
	h=To:Subject:From:Date:From;
	b=X+TEs5XZKW4x8dwDBBk/tOs80FaWAIVyVfqfXvx8+nzLCVGIARO+Y58hpAL3MWSM+
	 4Kfkoa9iW8FcIaAOy9kSZA3cT9qUZmo+TnrjgzPbON0wmfTEVXpDVgMdNOZRexATNN
	 5o79awUKWXKp5BbRvPcnOx2w75gulS3tjbAZVCLqvxcIQLngAvfET96sHU6EEiB3bA
	 LU913j0R6KQ5nfyKbLHLQhxKnRFVTYbsrpyaJoCdF3junsNo/lnHNE7s76Y2a/nA8l
	 DNJqhBgZ0jUze6VCUrGtV3Z/4YunU7xoqaUFJkYBrjAAAHhJjRoI+YZChVBk1iQcrX
	 ENtbXMiuqnfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB56BCD343F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863823375.11178.16802554104708699492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619475270b48810941239131669734f5f0870a08634c342bc593d9f8a08588e9
Date: Wed, 13 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778638233
