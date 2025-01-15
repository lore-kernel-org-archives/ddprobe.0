Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1996878F51
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736953554; cv=none; b=pqmpqE+FkdfgOxnsW3eAKpmqrz3L6mNfas5kinb65RQpkopJ5WEjNpYaLxdAK6oOI8Q5b6xcIsUFC5zOQSgO4lqLAhDuJyZKHBWfyr3+JlEH6yMMJU60asLKUt67AMDB/TSgw/OK9qG4w9uQhCqIQVXTRTfvzTY8WjdSKUKMijE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736953554; c=relaxed/simple;
	bh=0PwXXcbv3stxNUdqDD/YQuzFHerEKd1LZkua6bMwQP0=;
	h=To:Subject:From:Message-Id:Date; b=MM6omJlOthnhRwpz+ZWQ0pZj1zvHCtYURqgnY2zD6J8rlBWlpC2DSS31WwzI2lzfGX42S7kCwHwCMW6rkLWG/ITQtnkbRop3Q9p4Dye0Ulxq8Xy0flbI7//z1V9t3T2GWuiS04QyrOEykZtHYpCZuXKfh/yimP/RMFPajZ1WfTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmYOpYGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmYOpYGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68CFC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736953553;
	bh=0PwXXcbv3stxNUdqDD/YQuzFHerEKd1LZkua6bMwQP0=;
	h=To:Subject:From:Date:From;
	b=cmYOpYGqPvDARkYK1O0alv9jKVyGBwQ3SRe9U0tMlb3zL5XVJeHm6O8iGvBg6SEG+
	 nmygaLjOzzFjh2R5hrfq0KJfPPxxYe7FHtVDByvlOwKfYaxtRCqOLocBl198ZXndUa
	 RwTRbTZF1urpj6RYhdw50u1AkYfkCNVWG5d1DIUChenhwZDqGLwIEmo/5LH/dWYYtL
	 53YlkCk5o8hBbjxaGpNDoaBS9wbYGiyA5uclsktqdH+HOZ7BZJ7CjDxgbY3YlcWx/p
	 1nxNCq+z4inBfhNQLuxxkpki5HaGIHESj0A5y9zaB7zcWS58ijeToD/dv+eXJja14z
	 r7aJgELMHhAQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C2C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695355358.23031.13368159717627686394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0edf6c4d12213bf2714d3c823d233ed54063ba7df29234e6c665e44ac9115e
Date: Wed, 15 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736953553
