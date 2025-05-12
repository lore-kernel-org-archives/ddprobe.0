Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B0364D
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747027794; cv=none; b=pLhWGtG03TyOAA+BM+7GH3xn9Z7dxLDDW2oZyLUYqEWKPMZPqgLOAzKW0lqeR49D9JDRk0PayJasfYMjCIYlW3SjerP+dabdGFWZ8+1479HRDi9FhWVI3ABgRHQ1HFjEH5b6LgXjcI755IuHpNXuv8YC1u/m1SAAEsdMc+mJS8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747027794; c=relaxed/simple;
	bh=jv9QgDXxsoTd4dSehb9+0QUM0uWIx+IdKCE6stfuKhg=;
	h=To:Subject:From:Message-Id:Date; b=r9yDIhNZ26QQ2bq0BVJNPxNvGtNzRZ6eIfG2SmV2n1lsUNiuamQC9ECzjJCngcXVFCONfVUUujl7zufpzaVqiTn6f+Tk3Yd06nP/RMd+UwuPO+IgNWIjAkLgk2XSr1qIJxLh/C8bolCAPRMgbiOk9TMqNoM3LFW/dejYa+bIQyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrrqOjgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrrqOjgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747027793;
	bh=jv9QgDXxsoTd4dSehb9+0QUM0uWIx+IdKCE6stfuKhg=;
	h=To:Subject:From:Date:From;
	b=CrrqOjgzWaM6JAVC2XP/zIRCu70z/+dmJxB5ghHXtN73jxGbA4I9MXc1Y9Y4BgR/l
	 Ccei4C2Ep3tdomob8wZK8vUbsUvMw3iGuY7sIfkg+Lwp+wS+fsUqYMxzCBrZmWAjJh
	 QgGi7rfqDq3ha2zZCuXIOLNnUr1y9xqaXvJAmoAa/aXMzdM7mzZFMx1JqdREPAlPvs
	 axT6NegFHhQPcBO74ySwweSbmSDaCZxwutxf3tWruTH1Sh5G8GBH6MFGrHydGJnw+K
	 BgiLKTYcdHMxNESXznm6mtHmhbqSQG+7WHd97mSVk+QNMGgy5sdBHew5GAqWOvX0Ss
	 jD9F8AHA/sJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B7C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702779358.11307.6355987657402854782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a54c5bc86737c78fd37e4eb010265324a8e7d80e7f7189fc0b94d3d86c3c798
Date: Mon, 12 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747027793
