Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5259941C6A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785034234; cv=none; b=pdqkMsLFOW14BS325PvlitEnF4jE6X1pGJm92vTaeMRjBiwDzMvLrIfQhk8zY1ssblWDGM0lPcd5TcLrA7cUp60XPq96YibSc0jxmdIWbHYRZEdcKuOv7URdFUMaZfNQooODYRqQO9SPjPOAJ9nhOw9h206Ud/ZSlzOAOqdSa0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785034234; c=relaxed/simple;
	bh=lri2+tLw101lK072wSslnuW7lFjPlNf3RpD0K5sw/FU=;
	h=To:Subject:From:Message-Id:Date; b=DN3IgWw+PMQUC4wwkmkKEH78H/SspZin8DgyYqCUfD3fhteC6y/nyD4cdQve53OxnywYdjNmyma3Q0ZC3oqC2FCF7z1KnK/Sq1fRDyZHKpBtINqFX2sIZFE1IfwCMnpgteV5nDrxXAeUQDkyGK0ZhoK39uZ/4SK4eFUclBh2Oz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnrJS9iU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnrJS9iU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1590C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785034233;
	bh=lri2+tLw101lK072wSslnuW7lFjPlNf3RpD0K5sw/FU=;
	h=To:Subject:From:Date:From;
	b=YnrJS9iUqBogzCPcV7K4YR8YtmuHhPLQJSPDR7jwLTw3pBPf/DFmd9WqURfkR3Ceg
	 yoWJbAeDKyakzsA9a4lE9C0IP04KzLo9HvrI0zySVc5MjPDlh3hk8agWUZVsnkcmf1
	 ni0Mh20VH3pJkEBqdnQ61nwcvIFC9Bd/CiXDxiX87Zd4LarmuPKm29jf8b8Xxu4olv
	 SE69AOidchMlDO86ajjHMrrhaoMFxRFGhTGiIqiIDLb3+Q88dlStKTbcZuqUE2F6Tp
	 v5BQblRlhewnEqE/zQdEjg1J+PiWraf0e8iJNbyWNj8eMjLHAk1fBAAoWLEeoiAqq/
	 EJ0FKFjD4zz9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0FCC531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503423368.18198.2334508331152281114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03689a4b034924ad4618f6a73522dbd2070cb9232f5a57edab9b3d6903e9f7e
Date: Sun, 26 Jul 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785034233
