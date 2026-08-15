Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBC72248BE
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786763434; cv=none; b=ZZ9ZWu7oXwQnEnlcQgFd2gXEqkQIRpxpJVKChNaIB5HoqmIF5Isjp6WbWJcAFvJToRGLxdeq96FbCqo2/9HPZWCufAnksUrqxDJbkm5yn1wC5mscD0O05lfTfEZbUQFa+/AG/aloIyuE+RmvW6Eu3f/hXQ9/WNdwOXBZREQmvXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786763434; c=relaxed/simple;
	bh=0Ukw9FIQvQDvoLPYVwLDoIDN8MVgLWxOF5HE6wIb2us=;
	h=To:Subject:From:Message-Id:Date; b=b3TX8qGPVharU6uHk5wwP26tcp7BOK5V+8p1IhbkF7CJ6hMcD78EqrmtFaVhgbFPahw70DCT/YMQPvsufKlaAnka7II+u211VzjAbNuMLCKX8OzC9AT24moDb1DbYlopGm+3iWHETi38+jQfitJa7Sy1BukrMsOJSn0m5wJokEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9GMrdbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9GMrdbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D465CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786763433;
	bh=0Ukw9FIQvQDvoLPYVwLDoIDN8MVgLWxOF5HE6wIb2us=;
	h=To:Subject:From:Date:From;
	b=F9GMrdbiRWztvf05X2Siigi30NvwPe8VfxcnHDBrjOPBkVojsM07+DjNpX9OqlkO5
	 WEpZzYqd/3CUKmdM+7DIiXJWt0/8lSffsqIYCZpTGUrhYalak3EYusPCOO6jCKxuz2
	 1ykIW2SY/E/GdOInCyQhO9Yqi6zq217dCyxd5Nr339Q53EmfNVQY/fHgmQwIUVxIjM
	 2qtE59A+ukJZuyR2/l7jFvp0i8Fmkgek5HP5W1/185HoVE4Nh8Updwu9qQnyUK66O/
	 VH1/3HUDnby7u4ZYIujWrNkz3EhhaUSlkirbvWM037AKoLcOkO+qBSUELzQbCwrFo3
	 3TRH4d6e5mrdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EAEC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676343368.1366.2512667290249094131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3168455a3e731aa519ffb3df92d6f2978ca745254eaffb9de5cac185577b31ab
Date: Sat, 15 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786763433
