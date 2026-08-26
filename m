Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD63C1F54
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787736634; cv=none; b=TixrgkTfNPsH2ORNfKc17ZHxlLUuikTgT1NYlyFZlmP+jwyQiGXE0TYwxevRhGdbZQj5VqGYFz8U3UzwfzfWNvgrP0utE4/GpahBthwON/PFR4+KxZEmF+WgKXpMpoiAYc/k03++qtLpE9biZWNTEqaz2KX7cORsgTmBKBOU6XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787736634; c=relaxed/simple;
	bh=sgJUc7Ti3QWMJGKgSLUNx7kSyIUUZQc2G1UwKJyXxKQ=;
	h=To:Subject:From:Message-Id:Date; b=MsHlMwTHsM7scZ2oSIR+9pu+BxQf+TRKTz4kfExNGJsaAr+B/umEJwJeSUY34J6qyHXsZwDqdeb2ePRgh9HBSQbbb+eUSZ/0LSQocOxpPhIxdNnaB0iCmLl8yGitjt4ZufZL9ykQ98rq3s12JYKAWzDZUPxsyPIEoIY1oBRq9c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQ6JWEl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQ6JWEl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D812EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787736633;
	bh=sgJUc7Ti3QWMJGKgSLUNx7kSyIUUZQc2G1UwKJyXxKQ=;
	h=To:Subject:From:Date:From;
	b=gQ6JWEl+7TM2CAFyLmnOgDXqyGbQY003lXmue9nkoO/DdOgEkG3OoYRj4XhGTGCgC
	 DTUlz6bEAqv0honYNUr2pILV8qhQv8BjrvC0hnhkY/BrXBMEaN1FddiPrAYT3gYvql
	 hIMfAax1XSCQ16sE3eJG3Ki2WsHZgAElLPTci3vN/dzIMz0Ajqtyjz9sL8rJ6b9+do
	 YUFtE6zrEmWZ9bW1f3SK990seRJuBGhCPMwDjrEfMojooM6W0I2NGlsa7obyUH/DXb
	 VwwePC/acDypLYHKbEUUHIi5t6RhNcSgz9wU7w1w8IQgGWb4mIAzKeQagf1u+V1V1O
	 9uccP8wXTJjJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A77C61DC4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773663373.10113.5306612134361886071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acea7e613ee4233026139a550a987eaac0c366d49b3cd7c6bb8f757a825aac4e
Date: Wed, 26 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787736633
