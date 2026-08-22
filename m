Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6147A303A0D
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787397034; cv=none; b=pBkameQhodyZLkJnp2Hv1ytZvZYGSwGToPJudZZZ2+FMNBmHRgBhU3VUE/gNa0PCay4J4Vap9JuAixcm9clzuoXy/yuLWYU11y5Dt68LMkMtPG/qBYqxp8AqN8z4RcJsknwvCTdYh5I2mztCfGMkKHrpqfD4eb4Bgjcz3CusmEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787397034; c=relaxed/simple;
	bh=T16pQhpBOmuaZh4ZRP45TaoUfagVwjnMYBYwrN05L6Q=;
	h=To:Subject:From:Message-Id:Date; b=AFyhiI6LDTQFulB+oweP8VILDNarJmsSVKGIoM4izB5TA1k1sEAF7MMo7vzkRSXdH0alcz6YVq0nm8bk7lMQfWdou61u0PgBeRplPH7xK/tril/P+BuPyc47r64xrOAy4df8XM8GoaPBeNbXDbnbfbis339P8cAjJKW78Qd6ZYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od+n9ztS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od+n9ztS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B16C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787397033;
	bh=T16pQhpBOmuaZh4ZRP45TaoUfagVwjnMYBYwrN05L6Q=;
	h=To:Subject:From:Date:From;
	b=Od+n9ztSKtuuCnFz6VkFZ6DKpDHehkFhDsZ2rmVaUOFSfZS1kEDdGgrtShwSGwbPg
	 +M71T2Krn2NB4rhhoEdz1m/rzBpOb0VAoWzNnGp28ko3L37XOEU6TOCfKMGHuYfOb7
	 JQqX053hi4VmBqVgSHxkQG6INvG4ojaxiJWkMFOn53mGwOdUr8fA70ubvVEnNWcXjO
	 mhHJJ1nd3Aru7NuVGwQ9oHU0F/Lu3TbiUDdR/Xg8pKLTtU+1nnIwzMC7VPK7dvD7Gr
	 R68rEnUGfiVJBR1ebfcsRn3xXH66K7FNltmr+3waa12GQO5FJ2eeJQtWEd2SciAsWb
	 Q9/NQvt+pnAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0014C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739703368.18715.9723030403632048201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8a00a6704ab911ee3f5a4b077c37fc9e075e3a73c64d356222a2a3e94290d3
Date: Sat, 22 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787397033
