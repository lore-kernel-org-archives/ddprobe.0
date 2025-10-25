Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345FE221FCF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761391194; cv=none; b=LmaJ79HEn5DSxYQt0v0UCpo7CqJHG4KxjwtmWYNqWJzhHFYIFQcqiUNF0k1/qZofAfyrm9jH2KLd5aNOVRMjWD918o05q+R96xpK7v1+RmFn1Jod6aJ9QHOxrStCGUZXQeQP3wpvAu2ZRMaLTsHSNICDiM+9wMur9xHe6CDOiB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761391194; c=relaxed/simple;
	bh=zGcKzJ5Hr+Qd5bwq4DsQYb82onS+IDRSXkndNzE9d+o=;
	h=To:Subject:From:Message-Id:Date; b=S3kp/c3cMmPK1cMtDVfskS/lCpFP7qDEKvtkVMCU/lxivaH49qHK93VktwTRHd68pbxMbqfl3rOni5umsYUw3zH5lgV+6OYMfeqoe7pQ6JUR2VIoiaAqo7zjNztpcdBFL6U9XMeJ+NnAEYHtUwFk/vVx6NuLH3h0tK/yy3sEsKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj4BJzSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj4BJzSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761391193;
	bh=zGcKzJ5Hr+Qd5bwq4DsQYb82onS+IDRSXkndNzE9d+o=;
	h=To:Subject:From:Date:From;
	b=tj4BJzSm+5BfpzmaFHsOeTTBTq31RQVboHbx8zoRL7gO5ZY21J9movc71EfAc/taR
	 d5/OCoO20avxm+QHzCbrm5ipeo6mjMTAH0i+HIiPQS09lRpGlhFUo3ebO+15KpDxCp
	 xGsG2Maf5uxSuS0ZL4klMsMzZlp5jjk83Ohh78eD3iy1dXySEcuT07r2CrWcYqtNj5
	 syBEUfq9a+rGiUEwp99IMM0UWl5Umsl61wKO59AuHdxXRpfCd3J+AV/rJfzzatzoGu
	 ngi9oqc5NwOoZumPPSLGg8WXRJaEsp/xGkJP1Acvnl+o4f6HNH1f4TeuFMcijOWLzg
	 fJY618BJsiwqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96610CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139119358.18923.4830726403305675092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca5c14bd042c721e3cd750a1975a2712a2a2e5e3b46f991936db1e6aaa32bec
Date: Sat, 25 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761391193
