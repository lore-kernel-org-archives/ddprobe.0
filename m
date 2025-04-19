Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4483A2AE95
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745080194; cv=none; b=QyKbUiDURBV/dpqlKAMpvFqpAUS/Jc/aN+NXa8NExMaqen7qEycQWpioYijbnPhSlyMLw7qNaSjulLW+q/BBvOwJMxKRWfsIZNp5nX85cl0LX6SooFU8+gVeNuwDXRJGITHv73UmUX386wR/t5saPSRK57If5J/8SS5JMmDINqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745080194; c=relaxed/simple;
	bh=ssgnZEaOYdMDpTut5tvRt+8oVJCH7SRh/iS1PZJkOTk=;
	h=To:Subject:From:Message-Id:Date; b=nWjwFReLG3cA2dY9YrGRsxYZ4VSAKVmzQ6pVb6b9NWiv6mC+3wRmhcgj5kC0gTxdJoMsj7sRKEa0UxDsuyr8n91/OGXRlLGjwjKbbnpKgsYBZ5IzuglkXXpAFwipsyIfA2hyRrC5eukuo4y1UIi1ujUmhfGIYv0zxSNeaR1IrAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZE+Q+KF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZE+Q+KF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1916C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745080193;
	bh=ssgnZEaOYdMDpTut5tvRt+8oVJCH7SRh/iS1PZJkOTk=;
	h=To:Subject:From:Date:From;
	b=pZE+Q+KF7YHPwOXdmiGohR/9LPtVIDzyD2QxbIAFf+FZL8pnM1mEYpz4AY17ZptfA
	 JCWV4A9gvalGhbVRIeUbKMHTMFypajyJrNkIjfMNbE2SweoK+j/WwYJXYpIwgFp+cV
	 wTV73lqrj1N4Zwv+SVWrMSQNbW5T3waW//zG7R3JkB0+6FhdM0XCdrpq992576FEJV
	 svzbykKnvUvQpbJge09SEsR4dd2pScg5XsayuA4h55oF+vXqVoJ9PA8pUaPuAIfiCs
	 MVECnhRgiRc8K8D3aEzsY/octek0A92zQSb92HI3ZkDbzOgyLiINIAkip2SUVFHooI
	 eM6dWn3JXKRqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBACC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508019360.17713.410195985150964609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5c0ad16808d9be44bae1e7025a3a8751bd593d297b59faf6587e06b918d80f
Date: Sat, 19 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745080193
