Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9981F95C
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753595394; cv=none; b=aJ/0sxCbe9IySxtvXEVX6qig8IY9mg67qweZCHxe+G9g/OsbbCTQMgtHYGzrbF4FzgDQtNxGBAuBQrs6yrfue9DjQdAzEeLKkPllX5wq2jLDm2O9D0EZh5GA71ro0l1fRv7P9fP7Ou+li5iNriTMbWyYFHArCYO4qF7Fm/ZZG04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753595394; c=relaxed/simple;
	bh=vAnjMo7p8W7GZ6o22XouQB7kxMV+tdMcmuWwCS+sVlc=;
	h=To:Subject:From:Message-Id:Date; b=Hp6W/68az+3NGfrTd1IxEfIsc+okB4sWpFQfHh68sgRs/WnmIISx1isxMSbEaUJJcwbEjh9QcXt7fQfq1SGx1pgc+P02FoEtmJWc6ZUvAEC4/qS0su2KbqCGJM0s4z3HA5a8lQ0y+8BzUMHeBY8pBC8IkuLCss4gkXmc0zre+hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abRy+yJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abRy+yJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0017C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753595393;
	bh=vAnjMo7p8W7GZ6o22XouQB7kxMV+tdMcmuWwCS+sVlc=;
	h=To:Subject:From:Date:From;
	b=abRy+yJ1b235LwH+iYXqStsO2XkMKO3M9dFaszLnV8rlWbaUiA+WjNEbtlGWReJv3
	 Md7oxktXtbdMl4bgOjtJlSxRWOYJKCaY3UZbXda77Yx8djrIq2aYSWclF57SpgS/3B
	 6yrz4+8c3JK7mezH96QWfFIUnd5SwuFJJYsoOEigASB+4OYcnp3FTCmjK6tJIaXJWP
	 pcqVa89a2u3Hb5acTxuNaghGW6QJE2Zxfn75vHfQ/OhyEhCEIdL7SLxwh4rzzIHcTa
	 HZ/TC2NobHy+SSaUbz4rbjis0K/zfs9bPQtnabG0o/jWgzJMySTRVN1N7R33oUUxmD
	 k0EMyvKTMD9VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B1C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359539357.17737.1990882845133655638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19da83b46c53afa100173c2944eb5aec9fbd413215d8de8c6734315e531c0760
Date: Sun, 27 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753595393
