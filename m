Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EC31CF7C1
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732037154; cv=none; b=lPJ46QLJ8JeNbj1b5kRt7SyDZNaExhr45OtXiHzn/bVPt3PqqIFkADexXE426++Rf14segueEpavMh9ENJj2hNMbEdv8/cMlcT3VyQndkZ+jPAqNMRQmuOi2K1+9ICDUWXpmjfeVQqv7+ApDtzo8L70ewtiFVZVm2qfWZJET7tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732037154; c=relaxed/simple;
	bh=UK2LUJ9VAfYk8DFGdb4Aj8i9ef52MuMwZPcxIbUBUcM=;
	h=To:Subject:From:Message-Id:Date; b=Z+uQj5O7yoA7dlrj16cMkFC9BwJjMLl4bvfY9Jp1p3z5azJJ0hgIyO8leRNaBhABDdGZ+ImmSV0fQnTVW0JS7JwlzbQ4iFhFQ88WwHZKWjbpRs8vBJq9GOZBmifMbAgBf7qrQYZiBWar9cVqor5PWrwQZzJ9oioReYrxl8WaocM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCiWN5W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCiWN5W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E8C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732037153;
	bh=UK2LUJ9VAfYk8DFGdb4Aj8i9ef52MuMwZPcxIbUBUcM=;
	h=To:Subject:From:Date:From;
	b=qCiWN5W1PeT2ga+6eAbMzozvnf8JUZNsUGKi1tABDrkq9twR8KoJkUBpK/MZsNa8C
	 PcXkWVgjcCnpE0QX15rcz39AQiF02dc0mXV4/+c4RgyKi87fGsg0jkoKxwm3sq23Xu
	 kvZRN0I4HBppWex3DAU7vVe3iqOenV99k005Uq0AkuWfhJHXf6bWYcQz6mdkjRR4yS
	 6Z6K05A5byw9ERgnv0Hr3IAWTA6B96X1BGHahnfiHOiWzrx/smjrAXN/3nQNd8/CCj
	 9pDFlV4TpzgHRgDgHXDqPuVtCK9cjhJFNUra6iGmgL3RJ2TKGwCsypKpcFMiY6FCAd
	 kn1sHl+BFFEyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACF7D591A5
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173203715359.31756.13477625619303248074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbf2030dd067b60959885842c6683eb7269f1903b1c78eb8d548ae66f0db9de
Date: Tue, 19 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732037153
