Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E451D2BE621
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773123294; cv=none; b=PwatM5WheTvSwMm7yI8noZ7mouaze2IdlvRRCSC99HBmhoq85+NYfQU9yGajJ3sUsfkkr80t1OcKKLmd/7BKaIt2HRzQt3O9/L1oL57aXkRJmxHujRg1PpukPL57gI+mDwrla+2jHIEBncQcdyR1N9BsspT46J9+HLpYL+w9ebY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773123294; c=relaxed/simple;
	bh=558mi851bBJoiFx80ncv9A4A2zfyZWIy2msYJSMZhqg=;
	h=To:Subject:From:Message-Id:Date; b=NP1AaUJbaoVl6+HbG1WBbCav0h+1eW7UEAHqAC3XBiHdlDcdyMKjJZaM2NwGoGbQ8/4j3Qntu2Z5np43eaWPOYoV/nwyAZnBxhQTk2KtKCTbS2XhMcjakzqt6TZ0gxzo8l5SoCr5rLXDLNue5Tep3+m4EfPAnGuX0f6XuWdtElE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryzIwZsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryzIwZsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A029EC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773123293;
	bh=558mi851bBJoiFx80ncv9A4A2zfyZWIy2msYJSMZhqg=;
	h=To:Subject:From:Date:From;
	b=ryzIwZsTnyqb8VhMk22J3hdOGVQQY6l/XUlJZG/wt2fH7anSVmVeSiczxWfCRCYb3
	 9XcVb/P2JPYGKfVhOudDnfK5Rr4TmStl42lYy4jAOJduajXBf8aDXvUHfChexm7TYh
	 FjMiRTcC1aGCX+0rRadyuvD/Yb5QauCPupA5SGBuRM97VkeeC3blLHn55gtDydC8iC
	 tkfLhWd10Z15HsUTyv792PZV/RAjAReIhd1JMSpLZw/Acm6yQHe6lvqOy2kCgiyZUt
	 FINm9jNo9+ozxT1PjcfuPWm+3ZokNSm/F2RNWh9ASEd0qiKWHySk99NRQHZze1qwUg
	 cUxDG5Wg0UTLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F308FCC9CC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312329357.24094.11178516097789452130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6832f6da255597c502affd316bdc2fbaf07eaade9cf2aa44470cf0c12e4a94
Date: Tue, 10 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773123293
