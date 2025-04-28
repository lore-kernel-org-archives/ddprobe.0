Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3211C156677
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745849395; cv=none; b=bOdsLWX2J7nGixBSQdxF9sg+c5Gvkln2oz21Ngcc0xMK2J/obHPATV9HMt+6T0xv7uyLhMxuIrIuwVgMlZHPywzFWMlGRoy660sniQ4hANtn254bQeULdTL4mtmdVFTbb9ny25BbaQZASQ6sof/memOHMTeqdpC9jDvGslr/buI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745849395; c=relaxed/simple;
	bh=b+5ayXYpUrjeg++eY2a4TjB9IvmQfDTaeChE9t1DcNs=;
	h=To:Subject:From:Message-Id:Date; b=EjZQmzLFOg0/xHzrhgomm+xW/8VzNHvBGIO9lmvgD1BYwSCglWJPekN+k7k/xhnVjY6NQiacblIi4YIMSyNZ2eUDBzXBx1OUOCTe7FO+f5ny0tTpBRT4hf7gLp7JBoZ9QsgqaKr9DvQM2lYpPPpd+g0TATeMu7hJ2ZZxbGScTtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QynRFNGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QynRFNGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3111C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745849393;
	bh=b+5ayXYpUrjeg++eY2a4TjB9IvmQfDTaeChE9t1DcNs=;
	h=To:Subject:From:Date:From;
	b=QynRFNGm8VTtUACgcjbgzZThBwzaeaw43d+vmgv03xqzRzLYoO/y+CtaJwoecy833
	 cNdTVDlIXz+Qc+ChOLJuPXjfDjMcalPunNzwuOktvh3XIT9EH6td4+1lwsRKc6+kT7
	 dyY4t8DT9lCeO1KPeN1vyLLgyPUZEjCBe+hMlxEuD49LKU4UxR6lSS/vRrlivdBcaq
	 yRUBVWCBCCZRtuCzQ5HUUTOIjovY2DSR6zwqAzwek15o3kdP12ZE+jb2uCbqIXhnUp
	 +RGrrc7FWllUBVLjTJyHa7dI9MTgjOK/lPvG9MVhqAOlp6Z9+Zr4uVr1xgy4RH3DKI
	 SZNGxEXAMD09g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11CC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584939357.14602.11518287338806038645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e048313ffae0db2cfbfa4ef0c0a1e89f8a18be3d969f8189bd3f3fdced9992
Date: Mon, 28 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745849393
