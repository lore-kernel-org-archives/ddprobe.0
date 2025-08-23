Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308B01F8725
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755914994; cv=none; b=fZmQ5eqx4lfjP8+ZgKftxa2ilbPAVZOhI9xgoMLdPI4wuRYDnviWfoZorQbH/RrJBoQFYgawUO0mj5+XenvpoovFOe7ZNa/Q0V+jldE7WbD9JMsRU/80kwK+s/dg225T/m+aQ9o3GNqq8djXbt0qriLlmBX10W9xwHUBejcqEhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755914994; c=relaxed/simple;
	bh=JrHl5mbSou6hNWRgkpibr3+yCMQ1rSr7j0F6q2LAYmc=;
	h=To:Subject:From:Message-Id:Date; b=D5md7xhBwBcRFLdVEzzWhWBXXQiY255eyJQew0MCErLNTYndxW7ff90F596ji2E/s0o/q4sMV0FWHLG26okcm8tb36I1EPYwRPB4a93nR5ZgWfxi78KGjab6GsyO29ghbSO9MXkw9hSLXTeEwbQiUaDwwoVvGJYlixCuo+Xm+ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNmLcVJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNmLcVJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53E8C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755914993;
	bh=JrHl5mbSou6hNWRgkpibr3+yCMQ1rSr7j0F6q2LAYmc=;
	h=To:Subject:From:Date:From;
	b=NNmLcVJCr3U4Mx18XKDoBumveKpYHpVmRCkMWAtHpRaix7epWmywZ5HNV+PP3VJdB
	 1tJ7tJE62NYAMW+9iMaOdBKr/Sn7NsQNGLSwEAcP8kNiYnjqPy6uF/U5N2EEVAnKfW
	 S54zFdHWgGEN+WrdImY4WoKod4k04tCsZgVvndY3BPepLyu1qlC2fk2AWH58hH7uk5
	 MtCibBWf5ejyY6pMBQoygarSjj1+ymcY45Y2u1+Ms/jQGgQMtbPVTG5ifSA25QTHPS
	 5gEhDoYqBKluxp78OrQHlcbxzQTGSOKuOwPZpt+INKyn+uQAFN/ypa6e63LtnRYgi6
	 1qyV7KsLGpzAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4CCA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591499357.22977.13105856498017029355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8799ad287d5d8b82983def9854b37b3a812286e72e152ced7b9da0771b412cd2
Date: Sat, 23 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755914993
