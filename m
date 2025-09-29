Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB24157487
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759126794; cv=none; b=gKdOc3cdZw5OTxXgZanXEJ1XW+UjVSDos7ujkY7M0awvW3nF/Y58/hCpkFpkLkucW8A3aDv7SM7x6VLbbBBmz1YxBN2rPO9GOCxJzKHA9vZ1esoC4M0VOd4HI4oQkzViFMezJ//qts4g7tL+jsYXV0qfizgHaQnYmdTkUZtHJW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759126794; c=relaxed/simple;
	bh=dPtKbKL86cditz4tI1bF7m48Xvqw9BWwUdqpueCtFxE=;
	h=To:Subject:From:Message-Id:Date; b=YWwY6uZGDFtzLBrfQmm6RQ8fO8PGc/DYi9g+ekFOEVynVfXkM4AgX/cfvJo8p1rFqYkUk0I5udsoEBJtKrsUq8thi1iSGEWwUa3bR5TcJs2oaJi858yJDfdEoqCbUmMA09T934BqooAedthF85NiCmAgKjsRrQKkQbImhk1LiQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+Cnf0tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+Cnf0tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3037C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759126793;
	bh=dPtKbKL86cditz4tI1bF7m48Xvqw9BWwUdqpueCtFxE=;
	h=To:Subject:From:Date:From;
	b=s+Cnf0tbiNSqaonjVcXc7ma5k8WkItIpO0hNR8GSIjVGqxxpQxGuuoN9RvUe9onoI
	 GW7jm/GRugM8Pyt2/BPRfJBgWxaAG7wBLO9YQBPUnmhD9pOK6526/On+G3MBx6nKeL
	 Amr/qEsGNdeOPsSvv+tsirLZlhhMfBedu479Te9lk1yaJPHXaNMcCYFGy6zTdoOW4R
	 /LlfzU3WufKtoMYD38fFcKLXPdLvJq86WWoNNS2cHTZRvQ3QL2TqElZj4RpjPauhmK
	 TgelnCvw6xKpKzPtMsjH2foWsj4G3ys886tUdvMzwmm5/83d1PYZM7rD4RPUGU290q
	 OxRWBCQ3IhPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913FFCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912679358.6354.690247323045075312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d27c17fccdcce751ba3be913123c03ba98e38d533299ccc95bb803e7639f0de
Date: Mon, 29 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759126793
