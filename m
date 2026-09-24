Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7174078EB
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790290834; cv=none; b=AEVmIWiGdUIjiwp9275taP7TRwsr5jWme6Z+O+HfyS9zNMMB44qnMLw4dfvRoHsC11tns6CQvOPdgCRUbre07avc7PinEs9qrnwA/EfSc2aN8m38UFXdBFZPu9J8b/dVJ3jncwvy/blNAWpcw001qHtRALeiSUix2pqjOsivEFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790290834; c=relaxed/simple;
	bh=p1+Xg677wBQ1Jjxvze1gA0IL5WmDE52qQfKjbi0eS9w=;
	h=To:Subject:From:Message-Id:Date; b=lFWVPZe2tPNJrGPTE1yqJhE3da3bBRaIX7BnkDgdo+7dCIG7Cbt3KA0mIIa/SFHsUq7iNquD6tI5AvCTt5ktH81CMLyKFoEsCvNMwEK+T8rlRUxvf+sEFOGNqnHPXdtldZHPZXXYMBTRlsM8W6u8U1djmVxiEnk2rW/eiObTk5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHy7v2Jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHy7v2Jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81DFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790290833;
	bh=p1+Xg677wBQ1Jjxvze1gA0IL5WmDE52qQfKjbi0eS9w=;
	h=To:Subject:From:Date:From;
	b=nHy7v2JgLQxCKEmfJ2CfWaM55vVk8Z1L8DoXOMKTrslJb6P+VfuyoexvI7QXgXhto
	 fki93Ez+y169AugH2uxokWuzfynTIiP18tCc5vmB5PoW32NsAnJpstnB9wmKn8WM5X
	 HHAI/YuPxGRJc6+cpFOt6JD74AwT25WeBdZ9llBHvpXZEl+6wn7/7xzKJBfOY/lB0y
	 QLbbB1ifElp4eRa6Hf4xrsQ6I3q94F7XwzoBmF68WaFiyIo994yhf/Ezd2wwTuMEkD
	 yIv0FMk3Yjqu7R9wdTNEWvwn5e38N5nV4OHUS9Onw9mb9l0cPhEA/KHSPYkuuox6Ng
	 NNtPCSJ/Kr7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF8AC9831E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029083373.11094.16280435770481283527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b7480bf485a4d9239191a770631cfe3540f63b1608ffb34c40c044045d73be
Date: Thu, 24 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790290833
