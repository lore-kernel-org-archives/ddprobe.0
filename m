Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E8F19CC02
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751552394; cv=none; b=AVlAhLOBLrrRzfoeZBHcZoqlm9J6SyAhEK5N2a14pvdchm62URmR4MS9Qa979khQ/85U+iJfimJQ27ZAhJ3iQB/6DUTlFZTt/PrOWIbu/IZOLHjJh7cu7KzjQS4rN+w2GiFRutJU8B1L90pZIVHDl/KnrkFIi9h5zY/bkb9FK6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751552394; c=relaxed/simple;
	bh=a8I+34docREXsFO3Dh3TgW4lv2C1rstcQ0NYKLa1Jh4=;
	h=To:Subject:From:Message-Id:Date; b=sRknY96m6tLIU5JJOSRKEnHg5Mrt4H4eKI2/pIU7Wse98Z6uNbZHLOLTglFfey0YwcQbCsu+gBHzBmnFp7tS79zEuG9wXkr6bhluyfZB7pSj1w9MGBoZyxAWnbBvoinWTXsEM/oW/T5VstbuFg0HA3Dva86qw+w//djNvL4gsHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bM8XBv3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bM8XBv3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4B4C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751552393;
	bh=a8I+34docREXsFO3Dh3TgW4lv2C1rstcQ0NYKLa1Jh4=;
	h=To:Subject:From:Date:From;
	b=bM8XBv3utOXwLneab1tBNKE5uKjEnj9M8zLOwuKd09PfqnmvDmiU4ZrTrAZXqyqB/
	 9jqvl+qS8zcz+4B6OiUuRbj5IB4aqLlbIx0jCCilDtO16/fU6VVLsOm7Rz3Dhpjsy6
	 0y4MzGGy5BUb/K02WV34x9ATogu43nAc6aXw5bKRHKlHtTjVJJp0twvZF6Wr4rtQwY
	 3X2AhZMMybxsXOfMd44BLwDO54l9jL71SfhQsFo955BjvNhJj72YVi7Ks11sQxefMc
	 8vVWXJcH+rx6e2mucAW5qtzmsLQc4B+7zSa7G3af4Vl29vHIXMzWc1jzDPF17Kx0qu
	 EsHP7WR6sSttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E650C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155239357.10625.12633030990475126320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f71d03789e5e11cc4acf94668c727b2290e4f6bc7e71f50ec720dfddacb77a
Date: Thu, 03 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751552393
