Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22117136672
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757672396; cv=none; b=oD5OeVDbCOGtDMRdSNQGGPNjSxnebL51nCno2BbWJPNpa/CKH+jk4MzlE939w49ewhIfeF2yoqCDLwTd99ykW1tsmLjjE/x5CybEfBuRNVXteSTmmd06BrXj9fbR5SylTLSnTXWujD3NZ6rCRIkhfvs4zl35wrjGSx37UlSZNYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757672396; c=relaxed/simple;
	bh=Jaf53386WnXOeFhp49QebxbKMYui0sTWzHgetqcUcPk=;
	h=To:Subject:From:Message-Id:Date; b=s5rSUFvtbF6CrEP5rzUzbaxM4RfFcY4vbDAGWfvKgCo8BbKhaP+ypVqE7ulvxhEXnEGBc84OuYpJCMU89X5+Vs+F+yyQRhZbkUxjg5/QkgboUgnkE8Z6pj1SAsCS9l7ylCO5BGku4oqTkdAD0FCDADXjMyHWv5PDnJGYpfTMoUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0iiH467; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0iiH467"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757672393;
	bh=Jaf53386WnXOeFhp49QebxbKMYui0sTWzHgetqcUcPk=;
	h=To:Subject:From:Date:From;
	b=p0iiH4672MYKx8zVi7LVSXT72IPf0zsNZn+rGfqynFDSZoQgicFgn6fYJ/FLlBU6X
	 4kGH+Bk7h0040JNjIet4HPhRf4Eys+W2HDqoElIqjaQL+wM073wV+dAbHEx4qfmMP4
	 z3E1b7Y8VXgGLobGtQaWw3SLrr5+wajI2RRk+3V2IPXKVAiMGn8DUcCiidvL1ZRyAU
	 hW7WXa5zNDkFUk23Fs4q4HVhXLrJ9THQHPZ0cIjBK49PNe/Xpraq4iDKtF6A7GvhJC
	 T5ivKLf6zdNMmW5/izKpbSNPwMZM9LWYXWInNMbfvT0pgSQ1zfb2g2m9tMb+n6S5OK
	 ftvdm0kXKWIkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8FCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767239358.18787.10063366608105880434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f04d03b5bb167592fcfab5fb4ded71f519e7e1ab1ca7cc3e6a5ae7c419ef227
Date: Fri, 12 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757672393
