Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7E62874F8
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761085194; cv=none; b=cZ51Umg0VJpEJiUAXKGu5eTI2LjOtSE4MOjqq9CsFLC69+irNu+tEP7IOz1Rv7LcVlPtOtQh7oR+5f97U1HKMrWGAR8p/UHNZ850Z55CQ4RsMXg4evvgcVDnGnIzqvoMjOA8jH9ye+WYtlrxWldzBeb1V+kPeEw7SfkqeRkZPI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761085194; c=relaxed/simple;
	bh=e3ayQKI+VHOABGt+6fM/7w54qUH8YxY0OylRBtsjSPQ=;
	h=To:Subject:From:Message-Id:Date; b=GZyBSi9Sqa9GbqmnB+6N2WFFkq8EpNmFtBrMaqJ2BJKWqUT0Wb1oZBHlpTRNQb4fF1XATndo4U/zGTDaFdTx3+2vOVYJvjGYcvbgdDk4EYzLoujiEe5oqBoFxkdoVGN9s1CcRnAe6TACy/ksTlMrGfN+0XPj0oFBcGZNdtvyD8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shgVYAKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shgVYAKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5A9C4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761085193;
	bh=e3ayQKI+VHOABGt+6fM/7w54qUH8YxY0OylRBtsjSPQ=;
	h=To:Subject:From:Date:From;
	b=shgVYAKd9NH1gHJwloNuD1LVAgWfQh199trmso3XE+EcVm50Ep077+9g3cKoeKSCF
	 L/dT4o62v77B2jA5S/ydU7yHzT8h7OYW7J9wpx6bmKZAaHZgtKO1NNYYwNmReSxVJW
	 4bpIy0FbIzh4/43Eiv9eDFO5YZom52VyENvXO7dU1aK2aNPqxsY3dU7nFgpUlRfFlJ
	 ldgGOvv+IdcFVPg0aUoGKn8MXQ/yqqaBhpALEKMVv90YqmTRujSnXpdglDVP/o3Caf
	 QipTEdvzVE9X7HJfi7B4NSD+J3BKGLqAdMVJcyLoFJXjTJluYhkHVJKOP3GJ2glgQH
	 9/xl2PPI0D4Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9552CCCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108519358.20783.1486709141405753464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f09d5320c1e080ea2200edfb07d8e188bc61f2214e6b680792207d4e273cda4
Date: Tue, 21 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761085193
