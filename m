Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CDE220F2A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761120594; cv=none; b=QlePJPNVBasvyV52l+52YN5JQ1ffJU5L/ZMey4XluQQ0OiXnhpC+s0jkojHkcgpz0NHxdNcBZMu9HtGyOjdTxwpNNjCCdsRNH8iyBZUKdOrZJ6TXOiyYx6sC+Oy0mFbOcv/zbSicpYTriDoxw7GdVE4JCCaUYWj7Ibv/tlAeOO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761120594; c=relaxed/simple;
	bh=rHRlzbQk9txG1Yn+0aP4xqSYFHbO3QCQ7xk+Fo/aMyc=;
	h=To:Subject:From:Message-Id:Date; b=Ee7m65/BXj1/1EmXqV607Iv6dfqrVv/rYhFCjStM1EQFuLSLLHFAp1WNSV+PNOdUJgJsuAGHH+MVv3JDi9InjAWSGPFzV/SfOduDd/oGY7FOgAY/MUhEejrCaHq3/sUc6P/If3eIxbrZMmHWgNjV99MZJaFdPUDxopLoeOpe3Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhD8d3Aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhD8d3Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2501C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761120593;
	bh=rHRlzbQk9txG1Yn+0aP4xqSYFHbO3QCQ7xk+Fo/aMyc=;
	h=To:Subject:From:Date:From;
	b=KhD8d3AaLlG6d5qcWS/q1+jLbu48gkjciXLcDxpfeliIyBSf0Q4ChZipiFZTzPVU9
	 7UY1lB2Wv5eHM/2Q5DgBwY881UZ5flMi+dWGX6RiLMMqkQT12UjTPZSPpjGhSilos/
	 XJ5a8ZwDWH8Xp3dmHStRdafD/xWZzZF3VAKZ233lMSwJAWdFonjftdKrhd1YpKR/JY
	 D+OgSabeMul7Nf+DCDAAjxUiPc2N1JF8TFELrNJFyc5Aeg0j+Gz15dn/aF83P8OS+1
	 SH/v65NF98OAgZraSD3QbMFc5ft8cdxkD7olxGgIM7YsAJgqNt/uYhTyh2Jq4+lKaR
	 SbH/427S5Qt2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9149FCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112059358.2889.13777709509859548680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f55cd13b0fb26106c77f090faa983660bf4c6b50b1dd13198f7c39670bb47f
Date: Wed, 22 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761120593
