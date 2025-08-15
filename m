Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C20D16CD33
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755235194; cv=none; b=U5p0UNMLCKzAtb2D/tTU24/S4kSGLROQMy33uDoLvwaEzIom0P9Um6Gvs0yrrTlB9oopmLRBRMWvSFeLI4Oa90BCKWjsjeKUYN96hqTERX3sHtVnW98s6YhuAAymielcaY4V8OvHpf+JpHdASvN6JLHIac8wJ7Rm6i0toCGnsgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755235194; c=relaxed/simple;
	bh=y/kh6Rx4Jz6bUSSAHoBzI1h42QujM2AL5BR/obLpTUM=;
	h=To:Subject:From:Message-Id:Date; b=YWC9hz5FsXaATYuNyTIm4yqvYmVXjePAmA41t9UF7bBf87hBJrOcw9RYMBB95zkQLHQ6tKplpjaPW8VGjYK37+6Xco0JdGTyH5kJ7Y1LQ78Oy8s5UbJ2NFbKjGI5NWfbUfqjPhq6IfVi6zJdGQUAjb+TSMRQ4RRiu7AzpNLx0iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgsnK14T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgsnK14T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA13C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755235193;
	bh=y/kh6Rx4Jz6bUSSAHoBzI1h42QujM2AL5BR/obLpTUM=;
	h=To:Subject:From:Date:From;
	b=GgsnK14TeWaW5c7pOetfLVTyiSXcrigReFXpg8lehsnOkL42Fp+YE9F9JHr/8JDaI
	 plEq1Ywz5g0RNBhAOdsZFrQGVuMPkB6900sXOyaZamCoV90LKeDUVwnu41IDzKzCex
	 CTf8m+HMvmX9fSdE7aFP2br8DtjlpBLz0uGi8TXa7ZypASYpGXiIJRC6U90RjvD0XH
	 ubrWUXsPh3o3eRe9JxNcQVQBLFJFSTIslqCPy8K7488/G/BZGVrlzpvpT+6KrATn3y
	 ZMAgyiH8E1qXr4jwgz2QQPJAACWdg6ujO4JKLDahUzsIz+EWLgo76ULAPXI7+GTz3a
	 Vd8Fa+JipMqEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E380CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523519357.3877.13152057005452995655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758570cf65fc8114d65c19b03247832ce5695f4a717d8d585d11425ca1e57383
Date: Fri, 15 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755235193
