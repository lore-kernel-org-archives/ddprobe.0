Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A63C3EDAC1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781045734; cv=none; b=RztRnmqvZptyP6w/ymZ2uacctFBGbFFRjxYhueVgXkRIW1UtXuAJlItmpMgyzhn6F0PsQSCqs9lXY3vZspSkVXjp4PU3z2kgSLBE8o0bIZjvPFP3cBO0UewrE1n0v2pnrGQf+bb6vbzf8b0/Xx+NxjyNHZiizsttGWADlhwM/yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781045734; c=relaxed/simple;
	bh=rT6huhYUujKC+jV9gLlkrp1hR6cn51v0/EGrJSMXK5s=;
	h=To:Subject:From:Message-Id:Date; b=oY4iSPIjPFqGIHUYOx8Ip5z3kkNWC5VPvpdnavVdfzu0940+wZOkNMShZBQfIXExGGV1tuRt9pv/0TIdlgqOfWaZqk6h6xCJ1JiGsjRgVw/WoMOlVDtdnJaholk3YT0bbH/KcvHBQAqkGVFWRtgFygkp8GP6UhRe2RXrljLr27E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqaKXCL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqaKXCL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EF5C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781045733;
	bh=rT6huhYUujKC+jV9gLlkrp1hR6cn51v0/EGrJSMXK5s=;
	h=To:Subject:From:Date:From;
	b=qqaKXCL7HzsyliWOiOXaNmawYxijfV8LSDBjvhji+1D7TwJkrazjzXFSvpxqIOE2T
	 N1mtxc1yE7BkjnqxfC//2JQVL6FG4xH9WbAhKAmTQYEYzov+GxK9i6qDwUIBbBPwq/
	 achdOGRSyD2YJCff+mW1rxX26KevcycG8ynhvzR8LxJ4clJE3N89057MfWWbK9tj/d
	 ZSgDqzTUMwcxxWdzDBaAUOc5W3vQgdrGZJ1GtyfEI+OjCpSZmARFxvEjryRoImhlt7
	 MTYoFPG4t8Mw7Vk6jVgUjnLLEj1cdLtsJjBpB6TZm0vy3UaB+L64mj7MMPnKbGXba/
	 z2piXL5ZRasTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E28CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104573373.32191.13016846075185711386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fc013d551c7b4ec228755aafd6a8724a33ce35e1387c213c355f4afa546bca
Date: Tue, 09 Jun 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781045733
