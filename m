Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A5B37CD31
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781642194; cv=none; b=nT7bYle0zU/sLZt8Pt5U9JHDuAI/hALMoEFJnvT1ZTbDfaBBrJzZV4/vP1Qrw6/WLaoiMgKpF5d4EHdZEfnysQHGbZB0BgGn02JIjp7BR9W8MwDgaePTkx20jXZguDGuyov0n9Vm6xvIcn4Z0/qi7KDQb9jhXECbTA53kPHpeT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781642194; c=relaxed/simple;
	bh=rQqnTk8HtDd5zA1FcUBErLnCD1enI4bsJOpizVb9Rb4=;
	h=To:Subject:From:Message-Id:Date; b=EuGh1WPD/iHYiYR0TOKwf7IL5I86EYdEC3ZRogYBHE/z1f8YJtme9pOzD3PVN5GnIVJR79j/HunesxQgmTuug1mP6jVt2uBrqKOKXsOqR3Y+Xq8+3KEzqW0aq7X6kjECCE5gBkcyl4vFaNDuyQGwftIpovXb6cWKkP48BmrNLFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tD8DfApR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tD8DfApR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FCAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781642193;
	bh=rQqnTk8HtDd5zA1FcUBErLnCD1enI4bsJOpizVb9Rb4=;
	h=To:Subject:From:Date:From;
	b=tD8DfApRqfxiIVyQFUzxKUjLpzfaBezNur6DZg2B3N1RxJMd7gtOqyJ92WMbPS9rZ
	 l9139PVIAnIrj6PyDc6JtfrZio8eZUqgU9DHRov7nxIdXwTKG7gZBifdGFlqWAZOqb
	 8zIAaAn+5n9IRZfUh1UXymw+vG2E9ni77wT5jp+9QZr8M37il+yo47vLelZ3V3w9lp
	 UZcTfq2yL7Pq9YJuskqxHDufsIB9if316zqcYlYSHOS2sYfEcjXAoHjifwIzl+tlWS
	 JCLPaepCxUENLLDdpazCM3YJO5602fLYKxnmtWRvsZZl5ByIb2pzMgi8fID1opXnSN
	 eQlpWZT8Xg++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B3CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164219368.30889.9191794457332477912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0627a8bb7161a7c6ddd53c02e68f603b8e7a5388098dfe0cdf951ce5ce8c319b
Date: Tue, 16 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781642193
