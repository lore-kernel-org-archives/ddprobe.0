Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3369863D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734929154; cv=none; b=oljVb2KNShy39cAOeH9bl6x0boLLzwvQd2GnzaPl0I+vJGFCM5hpyJp/mRKT5g3VcjjpdGQcDO/sPef0F7ldv+xOp1iLeAFlCg0mb85Q7ZCVqYWB97WVbcqw1QEQUonp24EPq++aEL3j7UBxK7NHONOpIptXFR7RJJ1X/XPgbfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734929154; c=relaxed/simple;
	bh=/RfX9eJUT+wA4RwrO87asXgifai3EYjNNG1cVpD06Xk=;
	h=To:Subject:From:Message-Id:Date; b=udEPNqO36rBRvuSoNt5+e2c+2tTx496KK+DADw7LLTgoH7uOunftRucYsn94LYxUSNGNusKtV0KATOqa//QfAvktkt5iJzlJ8wv5ykN1qzeQLlEY3NLdGbSMLxJZDD+6f6n+ztxjCveE696+xNmdOwdpKqm4lAb+RoA7idj9l90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZbt43C7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZbt43C7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC67BC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734929153;
	bh=/RfX9eJUT+wA4RwrO87asXgifai3EYjNNG1cVpD06Xk=;
	h=To:Subject:From:Date:From;
	b=YZbt43C75QuIdxewg7eTl7joj9CORozLcJP+nkOLx8HZ03PIOhwWgwTq5VARRzWy4
	 dNe/+spwl3igCE0cG0MhsMf+99Xp+rJ8iZVVvOYSTDUxrdWHXyQNd+9UTBnobta27a
	 kmrAs0VOCZiYqYp16DICYNABQ1blDOmMQyUM8jE21+nFTRjut4qs+x9wYvaZFH0og4
	 WdgvmR2D5ybp8xbdw2/q8ssNjq0M+vaKcZL/XU23Q+XDIZ//9ToCz3JJNPq+2GRrgu
	 DOFPY/H0KZ6D9E6FyzaLetIy0F+uZ8RhScMKV8a+FH8x8i4iYV4GE6J5OHdirXsflO
	 fr++iYR184x2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C88E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173492915361.18889.7511835785823033989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb95c7d23d38104e09fe921ccda8c191944be55aa5905aa57eee9e0ff1028db
Date: Mon, 23 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734929153
