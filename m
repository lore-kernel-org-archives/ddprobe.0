Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6630E85B
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780117414; cv=none; b=pntbMnIGkNtC3B/9durUXLdsIqO6SPPhHjKgS3MGSGoYEbGnmGyG1GFt+ptDTQdPYpGix3KuL6vW8YnY5dUpsn4aT0UTo6Bib1AVNbMVMQgBhB0BKVsm3y23m3JHfF9GDEaxJnxDd7GwxN81Nj9VlT8ihbi/x3DIaREgqCfd4Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780117414; c=relaxed/simple;
	bh=A6ThZzIFI+CQsbD8ccA5wSn4Yca7BgagA3pWy4s52bY=;
	h=To:Subject:From:Message-Id:Date; b=r/y2hH1Ridc84W40GHwC4b5C4tcPZWm9S3I5KULEZ/tojhI6GvDiWPRtB73JytxXJgXtys+YwHoNF2tiHw7gJ3hQYxsp932Y+x+QQcTF0i2rP36eNUBWDmkF30bhmuF9e1ZHfnUEFiA14vKbdZj9//f2eePYaWwrH4U+51Fua+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mChOXObB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mChOXObB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CB9C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780117413;
	bh=A6ThZzIFI+CQsbD8ccA5wSn4Yca7BgagA3pWy4s52bY=;
	h=To:Subject:From:Date:From;
	b=mChOXObBtOohbS0+84cEvdEeruhcdcf3ZlNN3Msf787l/NsHw029seXUnh2pO+iAk
	 A6hLhtKv8AF0RKFr9TpR/0I46z35GaX8WJL23GZ69b59h+ULmPSkQTTvrCiIW+JKG5
	 2xsKzAnR1iGZz1pjJitSdjACRjovJmytScKmdkgtXqcKANtocaSctDy6lxtHwrWvLQ
	 7TNVpHpsfl+wZgWdTjk/vyFMeeRVDT43jNuHNLFl3z5UuVFNVyxjsyYRarllECfA60
	 eycwXPrcTp0NhLY73gt5LuxDviz36KxvKJPgHA0KDnMflGx3trihLnFe8Em6cd3oeu
	 YG63ObQJ8+ZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB1CCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011741368.4415.18043702612908751908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df49e6ecc456249bd596bf6c8b638c9a9f7a879107cc4a62a7006420ae77ab80
Date: Sat, 30 May 2026 05:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780117413
