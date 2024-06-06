Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEA8364
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717632443; cv=none; b=n7Bxwg7Zjh1syRTDGRmtOdCt5Q+7Rk0LG3CeGOh/8cgbftbyaVnTuetrKKUDTf1QJYMq/qTfNdRKVEylzhnF2IoFcV0SFHJhCzo9QRy3lcp94XzmVcwQBZYgzm3xHXMnmFHJkNe948FR6iREuRt0GFTGZpbAtIV1gOv9Zd1gWvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717632443; c=relaxed/simple;
	bh=5pbLy2J9jhE5hbwzP2NGn5ZmWARs66wsAM15aaBi0NQ=;
	h=To:Subject:From:Message-Id:Date; b=uZyQLTmoyRmlmbJLBqSj41qdEZ0aHy2bW5xkN7AESq3yHCl5/CphREWz/NFj/u3FZ/isIpRahYzYnnQfO4DNPBgx4PYfqDx3gFUMRbIz5gWlmiHAKDB8Qqcp2u3SFCC5EU9bG2FMFpJ2JC8wDWRnxwit7pHaOugDrFeiEVxn2VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGZfKWjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGZfKWjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E019FC2BD11
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717632442;
	bh=5pbLy2J9jhE5hbwzP2NGn5ZmWARs66wsAM15aaBi0NQ=;
	h=To:Subject:From:Date:From;
	b=aGZfKWjtTNNH710KE0MpQQY4VJ223GXUYk1ksWEzaaIWvKqaQ7IRXYQOX+ve3O8p0
	 Q8ujw507oJBujyKZnxrPIKrSqCkhuupL2xbX1czyMi31a7/EWl3j17KjEHV/l2bDvo
	 IESmLK34H3fVfK7DC6ye2/dZur5aZXzYoChLv0TwBK4dN/6JttV+bWijMuxiQKeQ46
	 hH1uditA9+P8hvfOynhZuMGMbFamDdya5gEWvooMMRYlwNNWVEK6r7bneJkdu3bDDD
	 W8QrsofKTjcghWr9WxQR37AMnaN3x5JrLYtX5w57r6okBBEeMseSwNSLzruARnxstd
	 UZlErracdcLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB531C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763244282.9108.6747242063595073421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83aefac7d5651c170d89b394a5a4607e4e7c4e10afff68319cec18aa7a7932cc
Date: Thu, 06 Jun 2024 00:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717632442
