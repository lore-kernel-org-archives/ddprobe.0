Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D921798C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724893553; cv=none; b=r8noaeugUSpCX6a0cj8ym6RLYxIc1VK3Bbw3CiuT29jkS9QYF1LF20VKhpQjS7pqzhjdZu8WafFF8FhtVicWW1GDJabiFAzajj8zrL4oDIslsMKePhBamadQ9JL0fFgu27xpXmlP0Bp7qYVUi0/PjfbfkzG//4u3Yij7eyhy16A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724893553; c=relaxed/simple;
	bh=kRRtxIxKD9fJ+w1G7uKThFeOOHeT8LV9fvYWQKocHY4=;
	h=To:Subject:From:Message-Id:Date; b=ckkvioQxKoRFD2JHJPi+Zcy5HEpJDYygZyRgjDAEzvhDCZiwLgTu/fdq2o7hDkqfLYvXRPZEqqv54Lj7U9wHijLFqiPjhF4IShSS1LoDydXyoG57xxaYzhcRL+9gySZ5CuJ1U2KwULUpQCeHpD1iS6yv3DjHq0fgW/rrqnsk1WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOxHOgmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOxHOgmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C8EC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724893553;
	bh=kRRtxIxKD9fJ+w1G7uKThFeOOHeT8LV9fvYWQKocHY4=;
	h=To:Subject:From:Date:From;
	b=kOxHOgmLxo7fWOICXGhfI5LtpLJ0pWTjqJrNsH6JkZxBbmhnaijMu6QollUXieWuJ
	 7XIuPI7Y2SZJnuPxJHaP0+OUtvcnf9yYGXnUlk8SeCcCuxCIiGqlWioMeyG+OOqEt5
	 uYpB4jOHwafZOH+0dITyNWPD2DhtxGNtIrPMDBuOYpCZhuxwVQMqIBTI/wFkMLe3k2
	 hqWLUVnrk8klCz6oYdnJ2DT67rm/dBPIcmHeftMDEUeUPW59/Bvm+gLZgg5GAnGZl9
	 YB3txhGJ+9HU59ofLdsx/7Rqv5Ma40tLML7WaqFkZjSwylvmKckkqSmGtUJ2YR3Iu7
	 TXpzT4bXXkxsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D90C71159
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172489355358.9167.5356790898586698358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39058303f5caae844c10d9e017bdc9c84c936940b1579d0cfb3567318b6aa5e2
Date: Thu, 29 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724893553
