Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253382F3C02
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762385394; cv=none; b=nMMV68jyMyaTitea8TPET+XnTN3em/XmukDAWDFB09CdrB0d84nbb6K1idZRSRGMXELumidIPvAKSO4v0Q+LlrTMRvammyUL5KhsGeBQEI92epQHR8PLT1JAtoUTrvV5nYZ065rW2oD5Lhkzn0mN3ZQA+gUa5FTTOd/KgGZKeGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762385394; c=relaxed/simple;
	bh=ps+E0aNp9TuyEybtm5IsG6CmA97HH4tWsF4XE6l65xw=;
	h=To:Subject:From:Message-Id:Date; b=j7gSd/J484u9FtPF6CKaFVH3HGocs2SEEzfvDgD4E4aUu3yVVOt1AFkTRq00U09HGuwIY5fl7nSi1sP3ZGHxo1mdt5JoefNvzQl3FlxzJW3l4ICV3gt9eV+OR36PmzEkgwhdUU91kQOubvL35/gjI0PSH7vhhpCYu6tN7XSRsgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feUG7YDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feUG7YDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F907C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762385393;
	bh=ps+E0aNp9TuyEybtm5IsG6CmA97HH4tWsF4XE6l65xw=;
	h=To:Subject:From:Date:From;
	b=feUG7YDLmJr7hRMj9rMDcGv1qCjHGj7zWgJQPmetFWHOi9Hesc/GSUsTsLbmoMPyb
	 ZDxWmO4V5qcmq2w2NeWXc7jPTtKBc6N5Pa0uyNhxcVYLEaWpGKxy2f5gK7agEU3ZCY
	 sAdf36J9vd20rhJr0tKekQ0NeZ5H5eqkZy2YRSiIiA2hak+J48q3qWqM5Z9HZz1s3h
	 SR0E7Hr3NLmsLXQ3usae73+tGtowRpZqPvsIxPlhsQtEDo+d8mB/W2EH60loOuMMtd
	 2siIAyUbKLm9cjURB1QNi5RXWGox3/0Rf9+HCLAhj9bVB2i5aFQjgtQdcmxro8rz4c
	 jMSFcygkxO6uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907EBCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238539358.28850.4627812195513112631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d423304fb4bca4757778772502950f6aa07f715ac6b174f15f252f2cdd43ee5
Date: Wed, 05 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762385393
