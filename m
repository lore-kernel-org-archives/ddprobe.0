Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BED1E511
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711546697; cv=none; b=l4reXfeAnKxW7LtMQl+XY/EnqpdwKPybFiFJ7nB8ThVOQkAqEYvEP44b3u07zo6G/wGZMGWVJMwRpHwyInC0vHH0Es7nHmbQRB1rYUfHGW9QZKVyb5nOwdKnye6h5jhzOrFXZSHJqXtLLf+Dtx2b78gAc5RjtKTks4m6LxerrKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711546697; c=relaxed/simple;
	bh=p0Z8Kn9A74eyryUV/0bZiTtZsrpretSgc7TyvI3vQDk=;
	h=To:Subject:From:Message-Id:Date; b=gqadAWQV9lG/ptTNUyt/NaiYAcaqEG9fmtVeX7oaP8s9DogQDYWqU7q1ldTzHxK+CFgpwSKVuKX/Nz54HtoSawJ/zp5kX1rjvXALBuvIxk1PLj6Tv4lP3m4ufZ9658j4vGwlwrCEW+jslMHEjL8woDrd9zyfB4tFlzz0oBkqiyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3OdDlKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3OdDlKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E84C43399
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711546696;
	bh=p0Z8Kn9A74eyryUV/0bZiTtZsrpretSgc7TyvI3vQDk=;
	h=To:Subject:From:Date:From;
	b=W3OdDlKdr4t1chZGNEJDxD6XM0TyCRY7ZwM9rjH3QZF+g7X5MNmQv4gDzTpG4cWqE
	 qUoGsS2Qapr1/+f/OfvripTvLVC7rJjGOiFiX3qVc7j98omTgWRSh9KtnGoeQsLjGj
	 HsB4Y/XztieKazzzW+SnYHd3NYd2HFRplULvW3ob8FLaQNBobOPV826j9kQL/ynh3m
	 p+PCofZpJmQu+pItWnVwIXACFGyXeOczUO+q9L7jiq/hQg2UTWBTAEOX9M5yn1vYRS
	 h2N/D5PMvUa9GD6fU8sXpTNoasHg6KYAuo+2XVOXBWBU25XrDMUI0+96NW5Je/TwyM
	 SyIeX+vNN4+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7122AC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171154669644.10814.4224809802806858115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee1a4728b593a68df7c11df8ddb6a0a3348d657ba4a2799e3b73182d040ee63
Date: Wed, 27 Mar 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711546696
