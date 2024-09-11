Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327C1282F7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726025754; cv=none; b=XAL8o9tdn9+2K3bVJsYaaOJKRjsRjAm69J7Jdx0mhBmTFHwPW0Rra2TbzuHaA5aldtf6zh/9G5kFKMm36QGRpqLKre0QogL0dVvmlJfFGAysyphjOBiiCmiIUExxq6Tc643nCmhWCFGloNo+BZpICO+BvTuxOTK+KMY/sTtiOIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726025754; c=relaxed/simple;
	bh=RGl+EFkEJUcaZ+CCaEx9mgGuaR7dVf5aCx7aPc6OZTA=;
	h=To:Subject:From:Message-Id:Date; b=XrnjZ261Z5ILA8IGkBGHnzi92p3K7ctbApQ7OYeAMIpL4ljGe4VxQlJgCjBz0E1KlsPzf36xMsqY8zj0ixjvqouXBzELA3SMydCkx67HWWZ72Dpk7yWGa0YeoqGmTJktM9zw4oQD9ybheD2vetAy8mX8HwZ1/mp8GG3pHMQxlmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEQlCWxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEQlCWxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76D1C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726025753;
	bh=RGl+EFkEJUcaZ+CCaEx9mgGuaR7dVf5aCx7aPc6OZTA=;
	h=To:Subject:From:Date:From;
	b=EEQlCWxucYly3QKpo+tqBBVH1ne3QQCnGOXtyl7a8M9TEvjcok57OZUR8RYuVXT/s
	 tLAmXrfmfrIQtJcsP3yjhCjG/IqAO7SvDKqclGaTLOL1/BNxX/1GOe+T+eMDaWOo21
	 lNIl1Qd7KToRwYAymDnQxWryxDV75oWySLcu2hKKfZ77amjDLKNOjg3xkcvNoxw7sE
	 OC5j1ZeFN06MAC3qd09WLCd1PJ0x5nkBx/Pyd8Zw3EQWcmtz94NyJsQ6drK5c1p0dD
	 GTNwEk5GILDzrAumXccOJF5Rw34w4ZmANdflSJMUUTk57S2FBWske310UAb+RXt37Z
	 cPgt8Ogi86gJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE7EE0204
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602575360.19320.11515724510274285110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7ed0db08cca73ba733d31a6ed1176a9c0568daf8d6a30416d82b82a628a566
Date: Wed, 11 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726025753
