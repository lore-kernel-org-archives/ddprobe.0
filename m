Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E41422A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719761663; cv=none; b=eHXlfBdr7pHX0Szf31fTfiPQNui3InXO/hSqylQX2BFpfkjVTCnCpuLNltfCsPw6/TlOuoek4LypYIWc+MaqnwYcit5BpABEp/gOeyQqaQb5qzxUGJjhhU/KRxHKs8Bo4qXg684DKR1q6e2yoSP+HhWqK43yTyfn9Q1c3P07TY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719761663; c=relaxed/simple;
	bh=ehwC/Zhd1//lvHN2xdJwKN9DZzoI65VoBHYULdgkjL0=;
	h=To:Subject:From:Message-Id:Date; b=JOmb8CuQb4EL7lPlxVyx/r/lci7u/qxnalkkGhHEg3XgFRtBLzchSxkALU9VAYMHyaXuPrzWC0m+jfoeQfB00WDC5vqL9ttrpcJKi+JQoBd+MNzCr1utyHluLJa7g9hqdKEXK8yRiGKk2LobcyaZZjYpy33Ko0MsfYp1fJOGSYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEdHSUAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEdHSUAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DFCC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719761662;
	bh=ehwC/Zhd1//lvHN2xdJwKN9DZzoI65VoBHYULdgkjL0=;
	h=To:Subject:From:Date:From;
	b=JEdHSUAs+0RlOR3ENf8PHoNxZAcNk4DhnffK6YoyztvOYVaRPkWHvkUO7emZpG5Xt
	 rOjxn7jh09KliBJzrRuSAk6ncIu6UQaP1JAh9K0x143aAKJ3nvolaiQgd5jJ6YuWQo
	 CeKe7jRmylWPQ83EXYv9hjwyjVZluJ4p1tuum9sgHSnhwi4Fd3O3kjDLtueBqZJFxS
	 dbEa2GB2Ykse7XanAM5YMJiZZp5Og2VpV5USZJu4UCNA3NHpvfbo/xn40FqfoCDDH+
	 0XbM4JMR0+RXMZOujFn5kfJ7Bmu54oaQ1WF5JM4mfn/ev1nXA2ZkXviEfPBgRpGyPM
	 4Jxz0UUS4CRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C125CC3064D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976166276.20544.18243474156370606641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03ab8706a3668cdc873d0b8771e865c9b8530cadd6dadd02f1afafe4412735f
Date: Sun, 30 Jun 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719761662
