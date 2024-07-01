Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6503716EC06
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719861323; cv=none; b=qyYWv5ycMQGCqn3Y7XwZ7t0cFfAEziPZGvCF8TEjVM+18lJF911O/S79dUSfIbd51Biw6g+MU3hBwr7UWrU+7xs7MSK5Grwi2Q+o2xaCxp9BFOKQ4Dmc2CjwvH3CfcyX6kIACIr/t6UZzcYvqLMO7K9kI5mxhRtRfA68h9crtgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719861323; c=relaxed/simple;
	bh=1r4fHCUFR6g4AE1ZtCuntslM5ZjDJACCxW6S/hvcsqk=;
	h=To:Subject:From:Message-Id:Date; b=EzV75sP8FOXvArSQZPZcADBYVGNEaLCb3o+gd7gfGUJwDe65rm0FvU3EKZOZNQuUQMPIJFWiV5Me308WULuxoo6omNlnJGw/STdq1SNJ9AhqAshEcS8wBYiwRHsB3az4fRn008ys6XH/+qtcRKRHH0GCOPb36i3Q6UmLdHTVpp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDixrtwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDixrtwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5C6C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719861322;
	bh=1r4fHCUFR6g4AE1ZtCuntslM5ZjDJACCxW6S/hvcsqk=;
	h=To:Subject:From:Date:From;
	b=ZDixrtwc/YqVDT94a1RlWladOL6l5g5o/Xth5aDGyEjZrBQrLzQTSkedHl7HA6nfj
	 tgjMeAIzmhzuNYkfr61+TEY+GicS+cZg7Nh5KEWndeaoxKIIUpavA1v+IwzSYGpnFZ
	 jzrDc+lG4Pl54pwSxcK5usRBRfvbGuvLz1UBqk1xT2OSv4FfLv3JSxD1xV6bzrBirB
	 lPF5gCOHUPTDfi1uZLZ/PUmqb5Wla1ECKzcT/K5eTvfS+moMPpuym/LwlvxNdH0GM3
	 g8rHamE8gOG/ECtLUUzXqHiD07PLz83li9n/0Gmqv1g/OuoucRgjaanVjOhnV0yfQy
	 Om9AfiQU10IFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2ED8C3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986132284.14291.17208343903048245589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b787cd1a73ab62a8ecbfb9164e90afe5985287eff334b23f041577fa9c9155c3
Date: Mon, 01 Jul 2024 19:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719861322
