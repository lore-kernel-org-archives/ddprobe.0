Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156FE309DA0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758281994; cv=none; b=IVUHg29xNvJv+WzEDhSLgbCkDISBSgJtopeu6k0T8kM0QTREwIDIN9P3bC3E4/9CK2x1otnlNls46rfyw1cozSDFquSYtMt463rAO2G+QCPwOGsAYBTkq30o29RTNN0v8L2BF03Aw7ERHUgoZ0K1fA/Fp89rc6hykfgLXruCXw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758281994; c=relaxed/simple;
	bh=MGD4KJkTzCth/7GFvWPKIo7d7QYM4tp2oKD4KjZ/rQE=;
	h=To:Subject:From:Message-Id:Date; b=kduj59/RxxJfFbIWWKeHyAZZfk7LKk38Cr9i3mtps0pc2WYTXAHQBgzj/SDzh37vR3Gg3czULLZxVHbVwx5TrKOXZZxDtZ1heq1ZJ/XI2NXM7GxH/CNKXOTQPH8HkCo+JJOxp/V0QIZWSeM0YG9eCFx70si8XDk3QvPWHXsmgEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpJ+TB/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpJ+TB/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A008BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758281993;
	bh=MGD4KJkTzCth/7GFvWPKIo7d7QYM4tp2oKD4KjZ/rQE=;
	h=To:Subject:From:Date:From;
	b=lpJ+TB/KTYsp2NVbAcR03I4weJwN+ZHpI3FayybGq7AS3wFPCTtB11Jg5DB7ciqFX
	 5Yd7ZoafCnLxeqSd5QdUALZ6dG/P9f5Pdbz+2ln6kWSM6IR9M3RVl1eTfBL32uppuI
	 qZP5RkOScSUd+NOiY0gNN3joCVCaUFMXyI2LoCwKxaslAYPRQbdqxBwpsfxd6idQVB
	 4+eBfsB01F0gsURpj3fXOoqfe7EJQMCj5pgaHY8iZ51jS3CSe2f0csgM96ICXWBVSh
	 USOnmBGTYXDk6QO0n6LrbGYb9jaQVu0Q6n0251jH9QqpcVmG85qbIOOLrthXQmXjgl
	 odjxnMlGdGvGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F794CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828199357.7972.16212230093691122219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9aef8873dd1c22e4b50bba47d128f5b6785c5733891e9b35be17da5b700e63
Date: Fri, 19 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758281993
