Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C854219E4
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727036754; cv=none; b=NKV6mbFTSIaALxaYZKjx+WBpz8990GcdmIKzDdD9duBkMhyiZbljQi3KowTTr2/UfIBBGWmw5IisZ/J3m22Eah0ms77tsDuX/Rtm/+Kd3OL8KPQbpp6EvToTptzYjDmeotEgG8vIPA5s+IN6BYwyULjEZIOU8xYViP12lSimpLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727036754; c=relaxed/simple;
	bh=/kNvEwGF3NGY5DqHWQPJk8JHiQ/9hwMlBhcutUxSpf0=;
	h=To:Subject:From:Message-Id:Date; b=Y63L7pkfYeoYGcn7OgyeoVbDxvBiKZ8mTkZHtXBwaJ8O41tAaNWblbAKcKG8rpKfU34FAb7PbmUdJbigSfV8L/C/bkgicGvK95sdpzzrIOohf1XgF8U4aVQ28NrDl7JWk2eeHwHXPTWKpzFNMJftmiHabAZf25Cyl0rOn/Fx9wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9owhYlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9owhYlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727036753;
	bh=/kNvEwGF3NGY5DqHWQPJk8JHiQ/9hwMlBhcutUxSpf0=;
	h=To:Subject:From:Date:From;
	b=i9owhYlKVGCufSuK6MnKhWMKrUXGfveAN64zKW/mQFxanPzW025fK5LkOOgX4EZim
	 atfdilAS4TwR8HGxLboYfhcdFWBpLlXA/Z9ITUsvy8Qxz0VudyHXde5hNhy77eqe0F
	 LH3l5vhK0VnjVcheN/7yon6quSVai+rwc65owam0/ax2YHZz0rXSQicLoIxF1liA/l
	 6dOS1dDKkfQozAL8aNrT5/KKF7GLlD+KtSiwFkkwnQuqE1uMF9FHp4wlFbSn8WM9HS
	 RJNj0i8TIFR3SxIaf2KzRqhwapCTDJI1prW3mLaM8LI9GpqZkdGMFRzb6cleqRs74k
	 XtfXfphRoKEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9427CCF9C6D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703675358.13078.14235375310047494733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1935a27a31c8e1989d30f2c19867744f81e3cffb41ad196a41eb4e7c21d42d2c
Date: Sun, 22 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727036753
