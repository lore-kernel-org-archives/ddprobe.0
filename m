Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4161870
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719344003; cv=none; b=N9yZ7I2Ga8Cn2SpFQ6vftJ45Y9dwjNDOjfMgPb1wCSnk4YlL4mEuXUQLmDKhNxt3vipkqbKydp93kJMUHLhbHRMOjhErb9jmez1i/LskdZB/6/XGjNtfkNYEy6hZU29BT4mc7W8JddNNpMyFE2T7vG/mqZvKod8gYwDrlXCBPgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719344003; c=relaxed/simple;
	bh=lD5fKkKvKo9xX96023oYIfULqyj8VStzrJs5FzfwrzY=;
	h=To:Subject:From:Message-Id:Date; b=GA29cQL4qPK7xk76nRuPAX24z8prD6I3t3DeRhGyVKLpf5Y6qwN9h64K8PembtlUGriy1EKhk0mIgj5zW3lQjqpL6UVghsMLR1/XAFivOz4Kn7pNI63C7kDNjbLflUI0QptF+lowoyCzcvCeDJbZGU42xHD/jOUgTEl/6ytysq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd9kEsIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd9kEsIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4029C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719344002;
	bh=lD5fKkKvKo9xX96023oYIfULqyj8VStzrJs5FzfwrzY=;
	h=To:Subject:From:Date:From;
	b=Rd9kEsIyttYi0ik6z5drnhI9X3mXgyEVpWXWrgmJ1Z+opnyxk2PSgAxtwQKeqxRZS
	 16RFnVMFlqNDo0TClY3nDWwDA9ZwaU+5ATs7MGS0Oot55nQyNQkcx4yfSUg25fYSnH
	 7PSA+iNdqwtqJYOr5YyRnMXJMhM+N7s6BZJhhBUodCvInZOVe8KmUger3dECbqybNi
	 nynj9gF7bhQhXnUyGm6RF6NAH8i+Krxdvd+RCBnkL9qLKtGsonazo0CLJt9KeOpE/i
	 9Y9GGDasd2XG+DO70ZRWoXI1rm/3R90H6Scg+Xq5S7trnBraLfGEXNJ+1883ufy0Uv
	 xOpRztp25HSeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAA7C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934400276.21748.14899339629075454554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9ab1ad3ba9b9647203abdded111a6d2fce5bf16486b804def0aabf93776947
Date: Tue, 25 Jun 2024 19:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719344002
