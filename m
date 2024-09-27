Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3F91C0DDC
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727448954; cv=none; b=Dw5GiZk7JOu7ia7sX1aavZLBByBT7WQEM3/6WLekVwtIz46ncUhNhTi1/Jhg42z6z9egLEbqkhZL8WXIuSk6MugHrz0XBSjKCR4aIFnpgfkz7a7EwJ0xJP5H6cO3odVMv8adJag0aVXJuzDuwfOm51fF3iZv6shxMvDM3El1rX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727448954; c=relaxed/simple;
	bh=b8auQPQ6nXXFdoSu+5EkA6hKyqJieTnFBwGYuGWEwBo=;
	h=To:Subject:From:Message-Id:Date; b=MgoNrD8xXoaleyKR1ZHT4hiolqEs9u94nuc2lBF1ACrwwQvdh/as2N64m4QeKOgxsvsh4Y/fWeziY59WiVX9gWNo4/WnWf7pYaSMwo78qOGMENwNmLshlerh6JlBH8hF8ImyNiOrnkXkaHQ1gp/xfZdhn/iGvz3PFk5njNqnZjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzOGiPyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzOGiPyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B181FC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727448953;
	bh=b8auQPQ6nXXFdoSu+5EkA6hKyqJieTnFBwGYuGWEwBo=;
	h=To:Subject:From:Date:From;
	b=EzOGiPyUnoJDIKBSzbffcBUyWknHhQYYSjzhjHiD0ZCxR9h1eo7fZLtuvDc9Cudq6
	 pmVR2Swh8Q708AyqBD2R+gzEpWWg6B5P+whjKl9L2l/Vp14R52jEH/rdhLUNkFjXFT
	 CfpkReRIwXM467cwhKQUZxKUMmfh8F86AhS2ta6/x+nMwq0Pb/mtNctlFjbH4aaNNQ
	 6I2acJozC+Q/p+xT99WK1e5BT0trfo0UbXYSN7jjd3xPVpr2AjpkHwHfcLhs4+Zqmk
	 iMWZpGxdsw8BX5s7ndexg6NR/ntb1I2uyxk5PBX5OYlxR3gc2TQ4kkPCzO5dWMJ7IU
	 E+9iD2YaWlZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C92ACDD1BA
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744895362.20606.11315756832702748464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e756d3ded65c066669516f46e1bbf18553e5d100e802bb8c19f821ae0d20ea1
Date: Fri, 27 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727448953
