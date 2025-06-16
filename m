Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE3486338
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750036194; cv=none; b=kJ/PuWXnj0Kfgl5ZfEIcMp/nDIGg4N7CBa2OPEDbSOS0jvr8d9dD3j9uRPz0oLpKVCOqF8igLxGnDF/Sl11GHXGX9XGv8wGsddL+8k36LhmbX2EGp1Hn7vQI5K3IRMNLFxCPPv25wPZ9gWZtby+OeIpt4/6V60v8GZHkj5Cir/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750036194; c=relaxed/simple;
	bh=R6il5TsC2WgdNCIl1bS+JivL9bspcRLySM0aCY7OoXc=;
	h=To:Subject:From:Message-Id:Date; b=H5YJvYtBvlQl7LFmolpnBP+4PyqOTOcdAbXtyXFKFCtRp6+OpEzizX4021OWgkvlrRnvwKTgbqPmnyxnshV4Ei/NSE2MaV2rIF59oNPyXliWHODEjRIpYmaA+Eop8WFB79QeGbCNqXntM0fspCgK4QQ5qKX8XUBRas1zjR2AA6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAlDGsRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAlDGsRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD768C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750036193;
	bh=R6il5TsC2WgdNCIl1bS+JivL9bspcRLySM0aCY7OoXc=;
	h=To:Subject:From:Date:From;
	b=IAlDGsRgd9ISP24OG48Xp60Lb7JDvwI+ro+BHO1Wd2m2Tiowz+tki6B/SuXr+iUyD
	 TC/0jRRaaC4wPtr1wFnFa8PZudLdkjje+9TMWMEyLArJVPM349dZr2/UmVovY4D22k
	 yeVKnPbt7OWBV9CPCb3pmI45AN6K7umfb/pjoX0iZ3RL4CghUSBWR3c81L3uHlUZjp
	 dEqy7o93KcwWBhL51Fh4WN6V47SB8NVpaFJw5lRPvG1Ml4xTi9fhqAdrN5TCNzBKEB
	 6NEQuuzgutNZuqnpjsILWRp6p5yxVRUNGR1g9+fssuR66Hmf3OTo1sArE9I1pxQ7Td
	 HZRGUvZGH6rpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C4AC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003619359.14759.4182805137866235334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db62ac804c9d34105341ae6fc85face2d4c658313f2c963e4e85578801f2b69d
Date: Mon, 16 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750036193
