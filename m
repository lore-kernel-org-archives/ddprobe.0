Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E2A34106D
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770471834; cv=none; b=KLITnH9PrGgO/4nIllx6sqKWYl8Rj7Vuiw/TvskD3D5t3pc8rpijOAfYto/8FbM7oGzkUk0tVC5myyyQamZbMQqoLdMXtwQXEUowall29BBfOzwVaL1n8ABw6/hMDCfMz8YQiHjBow9Mxtca11eHpA0NMKMJbVxV3Zn7gJOeJlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770471834; c=relaxed/simple;
	bh=IZ342Q9KvWBUgV7u14Wdnd3ClaWhl/TUQIPf6pHXmpk=;
	h=To:Subject:From:Message-Id:Date; b=kSL85sFKAJabRlHGIV5Yqp7LAJn7bzjzKhBG8lnX+y0dvcvsyoPbWV+/r+RbKekZLZXe/bFAc+mmVMYJ6RnFvVrgD6yaY/fjRlcIOQYZNj3ECzWkmrUDs/7LgZDOucTeplsiZ96EHwxKTl7YyFwpFGLo+zAp99gdWU3tixlrjsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkGgaBdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkGgaBdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A182AC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770471833;
	bh=IZ342Q9KvWBUgV7u14Wdnd3ClaWhl/TUQIPf6pHXmpk=;
	h=To:Subject:From:Date:From;
	b=VkGgaBdokvRupFrFskQNGcP5nm20NTvccv/k+q5qstwt9Y3wxC5bQngMZf6LJpVak
	 pSCZ2aOierTf1whTnWiVVjQNlmqvCwigv8pnbMo6plBCqVDw4aLgYoX9pxSTeot72I
	 NIKd0uIpA/JpcX5Kch7hIPWUrugtMOhLq8wt+ZZeYj4POmlriQcqCYtVuZIHVoYBqG
	 Tyas324bjCxaAZSqySeX+2w8vaIBlMcz7Lk95uU68ZadPEEIUDhp9EzMzGSG6l1Puu
	 /8HSrjEn6yVnXTCBIuQCiBjntyQN9PjgppvwJRZOBnbi0ZV/BSg3yffAxY5TGg780Q
	 s6AdpZWq1jswg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90863EE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047183358.25092.16245261279425014848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c4ccc98a6402640dc731690fe9d690aeacd855d4d2e3b7783ade6529d9b69e
Date: Sat, 07 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770471833
