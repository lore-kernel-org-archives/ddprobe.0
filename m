Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FB2278E53
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761922794; cv=none; b=tOvCf79ZTT/lcsJKgT9YTdGhw0dKA98SeMQZNoDd6ghhm8zV7biyuCQ9J3qEZKUr0I5mfCyhFUfX9J7hQBVDyRW6CCAKbzUsHZjhyHzr7iDScFIzFu7779Bx+Av9yAsM1ysrpUFw+swXEDoFQIrGhCW4vtVC75eivvb/PzALbHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761922794; c=relaxed/simple;
	bh=gojn0KgXJ9spwpBbbsmLabZMRY3YiszFOQ5YrMWCHrQ=;
	h=To:Subject:From:Message-Id:Date; b=NPMTJi2n9bp3hQf76WlHmB6WcH61Lxa/CvfZ+eMtGzfjHxHfhZ2nqqx0s3/bW0PO1ESkvKX1/x8uwgXTKWYyR6NU6W2TaCckT4tuB7r4vCtMjlcDMjhupiyWGBeZidLwaDPUswP0umaTZpjRt1xol9Aw25dvpQlk/WePvCgLSl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoVm3jvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoVm3jvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7721C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761922793;
	bh=gojn0KgXJ9spwpBbbsmLabZMRY3YiszFOQ5YrMWCHrQ=;
	h=To:Subject:From:Date:From;
	b=LoVm3jvS+xQDXmFVIFl+XwsrFwDV/tibF/8+vQmc9+wRYFFzanQP/MunnCy8CB0sk
	 MgVyOYjfp4bhXZuOlOhTqy4y6eXdlAXGKk8i+k6sz0H6E8cOx5HNnP8PBIb3vIw6ax
	 FtipsloTmNbHrxKB+NqpYmmmAkOFAsi0TchIG8Q834ye3rIfGvNatwCr6Qq9H3ckmU
	 lluga0IxB4IPqgECTzn9uzKw75xBN4C3snSMv5paw+DxRBw7s5K3Yf7XzpPMtzTq15
	 cYeSmc9MQgJgxglspjZpxmf+CoOnpinZbC9WDV2I8tR41J/J/li5DjWarIzLsP57wh
	 Lk3uW59l1KV6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D04CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192279358.5201.13810243879943435230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9994a4ca1188e578ae6bbaee4b0e366d1978e6be6e4131f0422562f21917c0e6
Date: Fri, 31 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761922793
