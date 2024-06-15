Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86546171CD
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718480903; cv=none; b=FfDtFzjKNplg+ge1JsHOMTsyEnhBwp5VOsLblKhdIUBfw6H9qK4t72vS7wt373zlLCgKjDPN78oOvEsQbU13LzHIL2wyvaBUxGXTwMK1vLQRDJbcEG1lpklT7yIWpXIMv3jjlijy6RbtLez8bgLxAp1uLdc7ClVvQ/hFGBE6PaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718480903; c=relaxed/simple;
	bh=1zUEiLSH+Mey7GujFNf2EYo+eqki5p8rAtwuqSvu1Lo=;
	h=To:Subject:From:Message-Id:Date; b=t+HCsVE6lPcjw2WQptspWHp4bgtSWzl1QdRy3/RRfBIG5ZoovN4lS/6+FTE7/66jyO9EdLnLEoJiURRlxYmrLL8xt+W65JTwymnsrN8TkqDGEaNPp0QrozVoNYQ8swZ8ZfSPHqqBWF41PTQyog2WKFX2RznKrqAbD8cyVQoVnnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/JIMzH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/JIMzH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9CFC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718480903;
	bh=1zUEiLSH+Mey7GujFNf2EYo+eqki5p8rAtwuqSvu1Lo=;
	h=To:Subject:From:Date:From;
	b=s/JIMzH8raJ+MCkSUyhyemjx8y3U1T9ObZlVSeb6QPcCpPDY7iDOVfQwUVZ72YF49
	 zL2ifUiqsTH8H0btiY2TsxlQ54RA0+jCeihr3PEY4zlivGYEHS11AyWK7KJu8YBNOx
	 aO7KBCPZkAklTupgzUcjUV3PCyj9YJKUh2fmD6yK68eavZEAq7SrJMp/5xs9OmVmC/
	 lbwQ1Z/bRmlThac5lTCMpEJBQME0GK3kJ18eDDxh6xbRT0IgsECb6ECvHI6I/Qf53e
	 937dnH2ubj+gk7IWML9M6PJnTKgBCEZG9ru5KXxVjDX8qqVbfB+64Q4Tmg9FpOKMEJ
	 KU3lguCmG6bxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF851C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848090281.1239.13666730000071574439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45da9f0ed0e5efc5b8776393fa23b29d6b7a67b277acb953825446894da6f0f0
Date: Sat, 15 Jun 2024 19:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718480902
