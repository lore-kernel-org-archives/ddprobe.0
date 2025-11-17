Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575D42550BA
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763378514; cv=none; b=SKmgI/2pOvjPlS/CHXKSIHspXz8+FHQGmWOY1CQWnxtYebSApvU+4OgPxj4YvHngJgC7slGTnVkXDXa0gvbnVpmszhR6q77eHJKOKmKq6Du/Uh+V4ixVmWTAl6Vx/3tl0OWyXSwCrR3S7F6UXO7cjf4PoScyZMMhX48LmIljzFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763378514; c=relaxed/simple;
	bh=1xuxEc/UIF7C3hpxA9KCYdpa62CHQVsnWxNYnCY18SU=;
	h=To:Subject:From:Message-Id:Date; b=PqigzUeRuKgu2DmqIqNAYUdhxuI2ooM83Nu7TzK5elqj5h0cCZO2ru0AfitLD1RB+FXzEs3gyv//kWsEoLSzPoUgQ3krvz2s4OtF36XesXHfxod1LwCLpF5lnSr5kPw+1ibsVgPnhlqGX//D1YNiu0baBV5MpBL+2km9F5vAORU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJ44V5tF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJ44V5tF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A876EC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763378513;
	bh=1xuxEc/UIF7C3hpxA9KCYdpa62CHQVsnWxNYnCY18SU=;
	h=To:Subject:From:Date:From;
	b=DJ44V5tFL+pYkk4+J8p8dvlq5Bjy9dMEQAHlpUlhUCLyfkXunBPweYJMZl+qm7v53
	 RX6sgnVhRtDs8h9J4vSaH2JU8RvmuVbo6oT96aHchvUYDVFEGuVcvmNmTOFLC+Z+ig
	 QEJUdRtGugavyoRfmdVGW4Sotw8Z3zjPuTQG7XohRIlWv7/s/oDsDOx/5c14PY8/7F
	 gIl+5pVjVduveIWPKkG6+iCvAXXUblsg1KpVSlZrADIz+ZvaXK3/xWeG1lG1Ah9KBn
	 yyzQOcuXw/nvGyBqGFMc34FXw6+X4OgF+zKStbygTU3QmN1Khhe5ZHVNArfVjh9iVG
	 Hwd0dr5q2EDmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9421ACE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337851359.12167.12876186394260238634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df773285133268012ddc8fee765275b18a8b457e1e033ce8a80a8fb0d5cd6332
Date: Mon, 17 Nov 2025 11:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763378513
