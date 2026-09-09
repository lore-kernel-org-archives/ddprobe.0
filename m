Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397E12472A6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788912034; cv=none; b=uWN/DQg0tfZpBMABUF2UyCD0qOIWuFvpQ6EhyonGeEavmjPIxa0n1u1NbskR8jONWq6IioW66mu1H6vnQG8fMd17zwPz5ZDzG0aRO9wWl3ZHFw3lMZXt0E+u1+R3WVMRYYevKcUJhoYbtl1Pv85uqJDAkW8edo+r0TxPedG3Ahg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788912034; c=relaxed/simple;
	bh=2liX1nSuIes/6jmoq7TcYurhnGjily1rtz05KZqrKqg=;
	h=To:Subject:From:Message-Id:Date; b=X6TKkaJ9LVozomR3ptHcu9eX6QpEEeWvvMMinzHHYx8H3Ddd1T1x6lO7T10tTBJV6AgrNAKiMbFounbuLTLK3oU9pt0gfDvFq16b0LwO3RZ5IgLVoRK+MebIR3CJFRg2HDuy8kR1s5/EfzPMX5h4N/tgXkgNpt7EbC8KccjxGck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGopy55t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGopy55t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1E47C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788912034;
	bh=2liX1nSuIes/6jmoq7TcYurhnGjily1rtz05KZqrKqg=;
	h=To:Subject:From:Date:From;
	b=HGopy55tLiC1r/vev0bajxIgO8MSsmnG9C1yUmeHrHMI5CsgmfKr1BN5aPaOqm4g3
	 YQYbarVPbrrikJbi276IYdYAjtM5+DVwy0/+rU6AAD+pJdpBbaShtUas2ILj+xIWkF
	 YA8YKJ6hCxlyka3QQZEy6yFXB7fRQz8CoPzsclD4wbFBSsSgL0n72gdpyPj9UpiCyA
	 dR7u5oqWpfzx8//cD11fGxF2pnjHY6jgvs0ry4olUiWN5/Y5Ipuv6TFZa/AC7XeyFg
	 Ref/cUrxuCWMAo70lzvU6A8zxORt01og5ey2E8s36j+NyWWSR1LEI/l+C1umCLN4wi
	 MukN5wlp2MLiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE40C79FA1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891203374.4576.17298804506949016235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944b677e69c7604d9f15e127dc77a16f284c407ce58638f7058a2a7befcc0e73
Date: Wed, 09 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788912033
