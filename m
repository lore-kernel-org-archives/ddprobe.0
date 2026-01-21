Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD1532824D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768965833; cv=none; b=fjd7fhPQXGhd63OBeEFXE1matPkhHPuGNc+GHaSN81fw9OZ2uyzimxcUXfUXTEoG8Qkpf72Ay6539hoRldtGZzwIxpT1jRdize0acUKS/44YpOlQ1mBu/RN6QUsI0rbeVwfjFnOP3yidTaBgGSj21d9sStRBPUXUsGd0gYu81O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768965833; c=relaxed/simple;
	bh=5PDJN5Z/439dDfDMk0NMDKiW7wjZ6q7ofmnKUcQvcoY=;
	h=To:Subject:From:Message-Id:Date; b=SypIV1wulyRjqEsPWovcqYD9Y520MuwLpBLufkfmPlNPYBSiPUBF6w8Hz1PpC8d1brkBv4XG9j33/rjiibk8xRkE5PDcCPfoJQbVNOybiMbQseHeKTxUa4oB2f9iMuF+5FqwtvtV5CmLYH2n84jkuKZB2/lid3BQbNAjkyMPFc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZE1i1Q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZE1i1Q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08E6C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768965833;
	bh=5PDJN5Z/439dDfDMk0NMDKiW7wjZ6q7ofmnKUcQvcoY=;
	h=To:Subject:From:Date:From;
	b=aZE1i1Q5blMq6YZGIR6yQJQlccywkWT/fETCbnBoGmqwJlIVEp0O0J0JYxDgDlJE7
	 4mNHEuVctxq6rqoZ3NRXBZjno8CJVPYxZlSf1NiQIXuGarWuKsQuEYHksw7orcMO07
	 N2AUffdWHGQY1ByINPXMogr8awHdFKUY9zff+XXZrVSwW7Db4dTSFgkItx7UZMLj3o
	 2ay0YS7TLt+L/SghEFkYGgw7RxMNsCcTfMrvND7MDpfzKwtxnHqGqmCyuEgSw6h/Ff
	 qPJJpvS9OKHYRDnbyAUzIcwseMVQXWUfOViV8dAFNESPMSUb8QAjk7FtZrqXwJ3fAu
	 cfYau3zXcqX3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B30D262BE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896583358.20346.14555446139162391191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45cd881dd4518d34bd063cc457ab03802fab91dcfcdfd751a97f985826e7450f
Date: Wed, 21 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768965833
