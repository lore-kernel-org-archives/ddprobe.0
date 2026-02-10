Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C5F31619A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770765834; cv=none; b=K4G7O7GkHymw6t4wmjiDYiQJlnbYHKXoORLmwZ57GUJMZnEnrekp2Ytfgp3e+xs1m7d9miHFaVSWc+qCBUL1nHEXg2bmh7Bi7wXU4DTFTw8D6tdAFVmJ+nCwSlpyieZ1T8YYMrRwUmKH/iobbCAG0JaV7+FYeEWD1SjmvrsHud8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770765834; c=relaxed/simple;
	bh=/JMf6woWdW8MNU66e5YvEhZnPz6aDnpwQgK2rcovm7s=;
	h=To:Subject:From:Message-Id:Date; b=UP2R/iTJCkK2Ho14AEsEoFzFgSkV8uCNKhFBeAAZ8h3gZ7RqyOrvprwPg9mw0JKn/gfTK40Fulnnzrx/bRrV10lrQRpFkKWNlkv4CchtLc8mDN4lG3zad0zev3ezYLLtgAPebHnRxQdsFMzh8ZmsJXV5VGt0tWB6+zCnnQNsPiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AasxP0kS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AasxP0kS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7096C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770765833;
	bh=/JMf6woWdW8MNU66e5YvEhZnPz6aDnpwQgK2rcovm7s=;
	h=To:Subject:From:Date:From;
	b=AasxP0kSmyCV8tk1A4ikMAad9p2ftAS8FsZ56RAeLo2mBn1qF24PJIeSgJsUnFwrU
	 050SkKPVGu59ST2K/gZbdwdJ4Np5BhZ+JC8NrgLlBYlTOlkcttr5MEQ1lAvh1Ds74o
	 wHaqt7ym6bL0IZC2PEqnrozaE7dsrTlacgiBcrX7GVdIXzfOLuzsudV7uBaBOSajj6
	 A9peEr9AYT7lTW6fY+YwjdYNMIZyqVo7yPBCNTGb865KuWAvV7AP5MNqdCODSu/Par
	 JrqUWM9EtJqe5hFnz9O3PxE7rh9WgNwrfabjK9r0ktDuvB4V48UYSlOqnqIUYn4bKW
	 aWxJoiUTOgQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C97EB271F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076583360.27552.17552940154566355836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb48d922c7b5fcdd33742c5cd8e3963d7181b08696782c7b1de80d20a3e5c152
Date: Tue, 10 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770765833
