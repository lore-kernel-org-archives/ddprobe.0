Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F04815990C
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754956194; cv=none; b=fZZGTS7Law1H/Ct/JskbP03hNG8z14Xi7YzztkulanFfitSYI5hWCgMtIHDEnArFz7rjxvQD1/ZLmBDgk+U4EZTJZBWIl9BJrs61jP7CFQDGqIPQm1De6XonK8oL+xfljIJifKJw20LO23FNItwy7iQkMnQcS1lXKPsUzpLrO8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754956194; c=relaxed/simple;
	bh=U/5t6g6um9YyFwS9klM6nK0fiQZ/1Yk4ZRPIrOfSa1s=;
	h=To:Subject:From:Message-Id:Date; b=gpwx/jCxjIlN3vN/B8TX5vwWrFqYbiZWa5Vx+xT5h6kFyHt8tEd6w7WdDE9YMN/OSleJuXxdaJNz2JEDM9EXNHHQKLCYcYzwyvpjF5Q+tH55kK+AEXSc5DrsoMxZM1C16eGdKT3NDXkO/25hn2tSlINUL5d6xy8Oi2bDXINbFrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7tcDYKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7tcDYKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B12AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754956193;
	bh=U/5t6g6um9YyFwS9klM6nK0fiQZ/1Yk4ZRPIrOfSa1s=;
	h=To:Subject:From:Date:From;
	b=L7tcDYKuJ+Ndic0uhALZadPxK9MYOVqibnPdhP3lBlVgw5FykTq/iTHPAQX1KMXyJ
	 Cifzoa+wWyDYVfnKRLNZyavjXVIpGUQ8/uaELWpCddK8XYGvUvOx4ybKjy7I+mwPBB
	 ga/WPn9ngLXRuoYnYfrbsl+j0Tj91YTR+VcZGXkHdaVxk/1eSz3pcCzG+5ejtUGvNV
	 fpe+QFldT9yOj/lW0oHIo43BZmNNzX56Dr6wvd0AHPgYNfnc3oFVkjz6q3irw+npAf
	 /04wEZ7ilUPjv+oJ98LNEZIvqktTMEVvhNWaac1jEK1Ki0oOEGoT/QrgckSsqMIDth
	 /SLK6SUInTMZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCDBCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495619357.3745.13663975580789044917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a2761b702bae46905cda3c8d10713aa98aafff630f1d6b9ff80d715a6bafa5
Date: Mon, 11 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754956193
