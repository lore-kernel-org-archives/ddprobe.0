Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299C21F30C3
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771120494; cv=none; b=Gjol9+DK2YpCzmAOXPwBBhafbTz57VzfFigLCmFsb/9DnUy1ABlkez8T1faTglyS2dkFAVBMvPixmNOq1ZeZZOjXPznune2vv7Lb0nzibO5y89vqpitXH6kiUjquJFa0P9yNHigrvVAfmG9qeeD7z/SU6N3DnR7IfszbSUOMBXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771120494; c=relaxed/simple;
	bh=xGlepsLZIxeJXV/o6ztdg5MJ8M9octctcHr2xsAssNA=;
	h=To:Subject:From:Message-Id:Date; b=A/ZpUGZQPVwTgkYSqFxKJ86/zCtLO4PwHxAY2ewyFLhOXppzKh7+716aDtKLrWj2Bo9nORnMX0shJvd3kP9qnTL0pAY5Qd2pvRDryzpVTH0DK7TTDua5EhXVcAZtqZ30l5PJlAEp8zR1UOfhomeOALB4j+pF7uuOJv+Of6YURTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjB9HUCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjB9HUCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19A0C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771120493;
	bh=xGlepsLZIxeJXV/o6ztdg5MJ8M9octctcHr2xsAssNA=;
	h=To:Subject:From:Date:From;
	b=YjB9HUCKm0fvfsPOwpomI9OO/xRGRXOCsYNy1VveRqZtf4TZtrFMPTSyGlzSVU7Ko
	 qU6ZAuCqEEysfpr3axyre4KAujcidOfJz8MgiGLakagDG+frKfBeV5ardHAdPdXyX8
	 XkGp6AAoTDoqkVbNAYp2LvHbEe0dD54CQljlynxxth0faHyaPvZNXhqZo6YpxXxyDa
	 CkLUZRRi3rwc7InUJyLsFwmS2SrdiSZVw0m92rwLHX+gttvQY0RhIUMeBz2cuyMj3C
	 vkfhAZEmAFxnbt7W1tWIufCAxuiyolvJx9VTqw5rV9Kvjk50mjSlD2abG4hPMc9EDw
	 hJ4Gqv4Ra92bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0613EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112049361.31256.2001944035474200361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267fc51034a6d6b63c0c65189d64cdde40cfa7586d8a0517b24a14bb99f7e45c
Date: Sun, 15 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771120493
