Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC5614A601
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717534583; cv=none; b=UAxoEpr1+T5lbQl8bXJnWntJl47MoZsG4mRFnpv8gjFqLCHcsOkfHOh5fbDcMxGo5qMn3JNwQGn7rsJWMyuvPuzMRAj8AJyCppiHHyVupkYOW7CpoNH4uzld05/ty3Phr29sAQMV2smwoZgdQxBpoLFJuHZdgPKNsUEl4aHF96Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717534583; c=relaxed/simple;
	bh=yenQM2gcvLoJRZeOP4TXies1/41M0gmMEnbmJLyMOPQ=;
	h=To:Subject:From:Message-Id:Date; b=S6/j+30mLby13Ul1zI8GtT1fekyCeVVpU7PyFE1pyWWPXg8kP64FEFyqIu1ktKmNEK721RyY8UeZOT1Sx1zvdMVyIYaO9DUw9r+FFI8yYUgGkEWLavQDl/aJQOfDutpKJQ6puP3hi9xAsRkDcWokClH6+5gy1aEP/ewX+fy6dRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeRnYW3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeRnYW3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6620C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717534582;
	bh=yenQM2gcvLoJRZeOP4TXies1/41M0gmMEnbmJLyMOPQ=;
	h=To:Subject:From:Date:From;
	b=EeRnYW3aOMLPEe+2tPOaAX3IC+5UB9uQ5MAVoEjeoC6Ys4YzlxrfKv8UyLNi8o7vN
	 XBbkWLryNHSSuyktpxC8d5IMkS3hWyt20l2Dr7+eWMXwa5QoRcFbOgdN8GQVo1Oxj0
	 PmsqU0iT4qQC/cnI8wueuYOea61fAdVkX5B10n6eNja0PzMhZI0iY9ixniP63WW1R2
	 euS7nCbPho+lVrOzewtIuFERxoRkvmCYqxtvLTsCQAeCBQcqvqJlhBCKcUbZKQe5rJ
	 h9RKpi7EQ7N7tGNVOG5FhpBJfmhkBkiWNY3pLr7YtmzGXKa0LmnLzp/OC/IlvvYqEt
	 gGTkx/FyY16ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20EAC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753458278.17290.146750520713570737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05333c27bf324f9a844f194e4105507b2d40d1919eb59bc69081cdfdaa66d7ce
Date: Tue, 04 Jun 2024 20:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717534582
