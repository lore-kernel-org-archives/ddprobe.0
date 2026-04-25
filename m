Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243B31096F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777080454; cv=none; b=bF+9/y/7xFnBriBYWyF8iZ2vPprjkOKvDw6FGCbuOPvdXjA3e1zGtEa9NV6qndBFw6cyljw1OqNWIFAtxjvPOHPXmA96mUClCBYqiUdwNoSGGGvnNtETlJhaLahlDg2h2NVsc7/9d+tzBAIWUnXVrkICPMnNQzz4Tyjq5NUHLfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777080454; c=relaxed/simple;
	bh=l4l0hXOts5lFGrHDq4RlMrF351t4xwI5vbGJ1lh/EjU=;
	h=To:Subject:From:Message-Id:Date; b=kgVHniVEVTbp7hgkbmh1rk9DEpHK7lblHvsub9K7y63zEa5YdG4NqVVnWs61pBGVZlBWFh+d91nmUifc53ZdKrbzso8BbIC7l0kjJLEYjfxgSFQSZI5nXqJWr79edPdBYPxfgewZYamb39N0BrNVG2X6RxGfa04WE3LFUuumr9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iB9dIDix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iB9dIDix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9FEC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777080453;
	bh=l4l0hXOts5lFGrHDq4RlMrF351t4xwI5vbGJ1lh/EjU=;
	h=To:Subject:From:Date:From;
	b=iB9dIDix/1dO++xqdEGxZgXVUSKw0HFxYusgT8u83ePhXWlTotMRt+VoXywLzUyQ2
	 CBkjzRndEEetE8NbYth82D9J1EJUcoEztFLPAlIOgQ9ZBAEgnjMrVluQUx9oCDsQcs
	 j5eyahi/VDEwTLS/s+gZXvklPsZo7YLg6CEjy5VNvt9oADzU38rlHwOcE/59bltbf+
	 Fdm4yezIrrIDawd80J5lHJQg6JwUfxMO0fCX3ziJpNyKxT/kSr6Kj51RjNPRuNdUtx
	 NIsJLiwTk0Lsfa+SbuYQ2pR1qoNEH78W1n2sSBH+zxvoD1pv/qA0Qt5nx3ZtHXG/pf
	 m8a/R5IWbyYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC998FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708045368.20973.5015063410532977917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b627ef65eb921fbc06689143bef24acee71315fbdb9f1e18ed32c1da91e880b3
Date: Sat, 25 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777080453
