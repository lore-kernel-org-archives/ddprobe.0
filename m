Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFB13939CE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779921154; cv=none; b=oj4ZW3tiWjEJe5LG4wLbb5qX0HgnIMKPGXLoJ/+5VzMTXtzapH3Eaf5OL/iqnfytwmIO3tMQgzw/jKb88PygzwYzDisNXB6pANmy4yo1JiEvO++mND5bqRh/LZbysAEBDxBLz7X5MAjorvddaL1hfazxKChSutkaXsd1+2IPmVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779921154; c=relaxed/simple;
	bh=MSfAZJwz2523zpQFaZzjGTEbWZVHfoOufvUsLHKqYbY=;
	h=To:Subject:From:Message-Id:Date; b=hPBa09v9GqlkOs78ABXrZC5irzuN65pojnzjGMPTWRUYfl2yOUFOz5pNua5NZmgXfjz8iuU9lyRv0E9/cRnbZoHqElcJMTYqi8LVXPTK4zHOKN8Urd4mTwtSA1D/ejqI/FlKXCjL/yhQIqzcz2ecLbMlsry1TDLCvqzMf4gbJns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4904cvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4904cvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF4AC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779921153;
	bh=MSfAZJwz2523zpQFaZzjGTEbWZVHfoOufvUsLHKqYbY=;
	h=To:Subject:From:Date:From;
	b=e4904cvslffc3LRnotdyfpI5oeAKHVIvvOPfj5wWGgyhHRc+tH7nYEElCtulDQ4Bl
	 8bq6BHpFe3knHPieZC3KB4MO5ayhFkVnZb7b67zuBwrkM92WdpiVaqdoY0maqO3Bkb
	 RjuwnxKsGnY7a2U3WQJ1KxjHtssbw0PFhi0XKqsXXqdxTuUxOSQgAintwfMO2LuFWg
	 qH97JA1wD5sYcrSO7Ma8keg+isr8deSlRp8cpIffAPpjEjnxACNkhel3/X9BX/0sfJ
	 dlGD4Ru0D6IEyjOulo9aw7u4cThM7z67KK6fdxE89G4VcKVr9qOuWfcZE5oGvrk9xc
	 8Rxx/U3OSU1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CCCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992115368.23318.2196341514676927955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf459d686e310a42f5575da4cc87052e96d83a4b77f95b542c0fdd163740cb7
Date: Wed, 27 May 2026 22:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779921153
