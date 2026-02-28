Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC55133AD9B
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772303094; cv=none; b=HUmAOt8znNpN5zGyq7Pp2sL0faKywPctM0mphm3ZHEWqN6VljK8oXjwx+TbyictnnmAuLNreHlvs2lNNV7sflJzogC7MGrEIUu5nMmJeJZQ3ZOk21LE+XYYLFJxJhf/+uVl1D/ehGiFKZiSt3TwtsDwDGUPaPqgaWyshHZI5QZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772303094; c=relaxed/simple;
	bh=feaNn5m7WouESIhb2xx0vx68JuYsRw8cIJBah6dEElY=;
	h=To:Subject:From:Message-Id:Date; b=FAjOBWSTY1BV/nIaEaI+BPsfzaB3IzUduaWDw/qHkZvRwscjiejb5ka6fqQK+xue55Y8w3UInhXkSU6Uom9ijOQQsStcmyww+o3XTPeOdkxOS98jiZTCiK7HY+608cHOGqKBuslvkv0RhBKtM4cvNZZHczVqu+P/ucaVrffIsvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrxyDQXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrxyDQXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC77C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772303093;
	bh=feaNn5m7WouESIhb2xx0vx68JuYsRw8cIJBah6dEElY=;
	h=To:Subject:From:Date:From;
	b=BrxyDQXONd4ZaXsDx3OYM+ZznwZ5ge0O2QXuMo53cql96ihv0OE0rwYotLc7aaXYH
	 bt+4Cyogcyr4zbyxIHeC0qJDXpUXq/k6VcPI+qVootmZ+yzJS7i3rPa0EtAVrm9O2v
	 591zi55WOHP54X7Ml7H1JWr25mjgRsh942BOzk5R7K+Oi1yjsgr0+/ndeT/eK9sN06
	 kKTapQ3FfciddBH8e/+7ZaPM1E5Oq4EHO2DjBK6cfSVs9++igEMAxwh+IyOxLS+RFi
	 C0mqc0rvprHv36y1/rZ/FxYKTXSsQM+LmzrgTBKJnuQf0Zijs41kltTtjVh2/is02L
	 caNiBPPdtTZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1FEE4EE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230309358.14205.2724947971579815676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29515c951abf9622897c7bea0aeb9c864be5bdad6ecfeab6ba6d88dfba21d23d
Date: Sat, 28 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772303093
