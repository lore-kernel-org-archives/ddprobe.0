Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CC08F4A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776733654; cv=none; b=WlqQAI7nSg3wh9Qg9MccWk6syFVIs4RIziXOPQ2RZnvaCA26HJt459GkVOHN9mfvoUrmxMWDjx87UKO51KeP9IeQ6drCtpN1h51WYxScMwqMr24dpRkNkjvEc0A+Mtdz7Dc/eegHSfGu1tc4YY4AmoA6lnRPjFmzpL28onHw7uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776733654; c=relaxed/simple;
	bh=NBmYT8ohm3tMss9MmIV4wRKerWckBgEERL4vVeyMMGE=;
	h=To:Subject:From:Message-Id:Date; b=FGpqXssTXOog2EqmtjpMRcha6ubc9SrVXRbmfUCj8HM45CJlfdIPDQ1yBVjpUoZyNesUAY/Vx4kCnMKxCKCEvJ8ynYexpe75GVI0BlKtrDHytWOc8cn7N9tnDmhNk5wK0wpoyVwqOBZfhRB9wOQmWN8dGFwU6CKxbmgEXvQYH14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvhwZT6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvhwZT6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2ACC19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776733653;
	bh=NBmYT8ohm3tMss9MmIV4wRKerWckBgEERL4vVeyMMGE=;
	h=To:Subject:From:Date:From;
	b=hvhwZT6lNnvNYcilZqdfiZcykE883HLSfaKZqOPnj09gVSTpAN+XXSAg3Br8ngaXJ
	 0Zw8ORDdJs5H9iBUjuo3M3ZgX4VXZALM/AmygaZs8iy74tYUhSYX0t7glqXxU7bv1u
	 FYAV3KsACaqlUAC47QZBvVXCklQs+t+tl/1czoZwVxIOx3Og31jXqkzddVKSO4p1XM
	 dFcmJb104VoZh9NdaPb+SAA/JgZ/LKVsAl61ghVpMWKwfM7Zi/h/w4EExuq3573uGj
	 l83Impl62Qz/Uz2aLaQJyRedynQ2EA0COHZ00RxEAef7tSQzCOdGw6shDR3knrQERo
	 gZnxWqsxVBF7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCE1F5A8CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673365368.23904.10850808367439776227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0c53d98923a14d0903ad2534e2ead2b88690305322dc9e2123cfa7ddfa8744
Date: Tue, 21 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776733653
