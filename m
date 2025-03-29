Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4EBEEAA
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743224394; cv=none; b=kgh8JvXyhTySi7VTwvGiM+eTVRoN9I3TrhNrv/Vu59/aroK0aa5ibAgZ1xVL3Da9lVfLlsLqrcfK/xeuqREYCDgnV8CP/aYFtBkbvoEDRO6+g8tDtXx6aET8ppPIw3ApJha46fOk7PO6p78OXbdzFKXWsp6KFvPjjWwHvo74OHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743224394; c=relaxed/simple;
	bh=TqGmERrY/7mMU3fqM1XXQUvv5/dT97TB8GuU586BKzU=;
	h=To:Subject:From:Message-Id:Date; b=D5xST9lbItZx3v+gQdYb0NC9BncRiChl4XYsu67z4aQWosUANaHXU6MPeSt8wIC8UXWiDmENqpOZJXtLOPvthpY+IWtvRUm/95ZdXob3js16hLTwLGbCBPNZS7Y4OjOEjzwCt0sZxYwZovRGcjwMnVwDT7Tn6aAFv8voHg5BWhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvRcXDqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvRcXDqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B017EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743224393;
	bh=TqGmERrY/7mMU3fqM1XXQUvv5/dT97TB8GuU586BKzU=;
	h=To:Subject:From:Date:From;
	b=mvRcXDqVcbrvsp7vz7IYg1uzrmdqfLADvrl8S8EXRzBDi1ULrI/z6+9cEwVFUfeDH
	 F1SPIso8FgCfi/LyGsQhlznj3lH0weHq+badyNMoko2kZUuPGcO8fTRrQ526t4ZCtF
	 juTyMeNbm0lKSwoAytT7Ab0DwSnjL5RfDn7+XTo8sznFlSqN+VsfMsftdeJbfjX1Yp
	 eX0KcAuc4uuXBwSBotLFf0DoqiKRv88YT0VKBGi5SyYgcGKrXP1JLvYG5+O7ZQhoFQ
	 2hARH6E2dM3OQ2DS+6ZmcjQUkPWEGWEnLu88l+HhCAQOpvBkai89m8zVDHtewTQgrn
	 Z6/rjqLpfP+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3FEC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322439362.24658.6833156841954570898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037b797d0040db1697b82e15e3391c23290423fc2667a7359fa2dde5cd445c58
Date: Sat, 29 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743224393
