Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCD829AB1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761797994; cv=none; b=pUe6bV4t4+AlCGxQkUmppiQcW4V8b3ZzjT9kFJ0P91ZQZqt7pJ3lTLYtqT2VXbS89UZuB+8g2uLBYlRSeePYqHqSK4fLoaZu6OoodcqzJiToF4qw33byzoIX7xy8C5jfCSflL3NbFz1ADRMcD7DilOycTkG6OzVskeZOkSCJM7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761797994; c=relaxed/simple;
	bh=YEab//N8nIkQzWtEW5tswkJgqBjhq+QAdax4lJfz8zc=;
	h=To:Subject:From:Message-Id:Date; b=Y3/Y3XSCASZmxHspStYNijZMnojUJ4Mlf6KHz8mbNJsvlDIgRnIXrY/fjUvJXa91Pe3ma7BkkEVNqnFA5OEasxz2k60ZUr+20BLtR9wZ1q3IVjMyDEwYfO6QC5alwCjlMoAh8gFaVWWFjB8YRjcRXuGZVKv0t1t6Au6/Gd3M014=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjbvalG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjbvalG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B506FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761797993;
	bh=YEab//N8nIkQzWtEW5tswkJgqBjhq+QAdax4lJfz8zc=;
	h=To:Subject:From:Date:From;
	b=DjbvalG371eMk+g4yxy9pw+v4g13VJb5c6HKXutB3mPXoBzbCMbUGL8siIODINJok
	 CHz/kzH4Ghgzswyjc2PaktM71MFP25B3A3gznEPfUT0DnG1ornGatGpvtkA/uakC4p
	 HzEFlcmcprFzKfMNVJDdyZaN2BeOJHqOF5A4TV9cNMuK4RiIiaRps2afE9mFKeAmUr
	 zcbguCtGFTCYZtlwidbFHw2k/nzQqg9CkFXJD40+tf/2Cj28bl+/UGL8BvkhaSrx2h
	 xWiHThuTgS+csE/PBLCJIyBdD4/XtlX9Ff5febonoHM4GpzbHtCacY024HP325psNu
	 ZCGHbcsz3ukrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0418CCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179799363.1675.12169189708773148410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541f671399263e1566ec86369e160c2937dc02f0d0cc6478e24b278c5787d4c5
Date: Thu, 30 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761797993
