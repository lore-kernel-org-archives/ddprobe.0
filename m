Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642F12857FA
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778384434; cv=none; b=AFdTKwBhunqm74soODD5xIh2joJlhKQBd1lATDu89VyAtE+TGmaBaC8HxCzXQkA3gq4WkBFOlQ+9ULRagXumltYPy8BaTUf9oww+CStv3Pxq7WkIEwUOmEfR5WnjjuGgsOmzlU88XVSQw7d/GAnxDOYzZCa2rqD6DDY7v3MJwD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778384434; c=relaxed/simple;
	bh=wfpBguh5EIhB7v1/gMPYLp3qPIkr69hrcTYcvjyTgWM=;
	h=To:Subject:From:Message-Id:Date; b=D+zpjxoROnsht2yEbqPbFbYQoP8QsRpdqNObz5p6D9i6UvrQshr7SPTxsNSQqx5qM00DLWYLOCqZzrcgGocGIRMe3RyoS++AOBqZi+TyGl+WNULvpF21JcyPZrRxuejDbYJFPTXU37hkdCl5UpC0FT9xQZN4QmL+WiS03V41cUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE7rRuEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE7rRuEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C366EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778384433;
	bh=wfpBguh5EIhB7v1/gMPYLp3qPIkr69hrcTYcvjyTgWM=;
	h=To:Subject:From:Date:From;
	b=TE7rRuEhl4YpM1ttF3vnxcBllLU10k9JX813W/mqIDseHzld+qexGVvfYtAyFQ6GH
	 vnKKN6SM8AhocQ4YN9PtxMJVI7Hfqm5FkJkL+9Oas57htH7ZwIhoi9seeIEI1k0Xez
	 bcuLoSV46572JrjfFLsQB2u84PwFwVOlzBLnbzniDEnWOS4yEWSuJCwLIGG0QPzTWX
	 5+r9EoMzuhX9QwS1DCbFhfRMAoq9Y12vIY/q/emS6iH4CywBKAMKyoT0sw2wsVG9vw
	 4f1W6LAjdbIn/q20TF2C087tYS03rjdyOso5jwqTIzmumBDdTdLpmXE/KDfO2F4wIc
	 jj6yKC9gqATYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5E5CD343F
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838443369.4574.4481422807514652314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6a28001ea77124225b5bab0966586dc82a5b21a792191d0556c28c2851fbab
Date: Sun, 10 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778384433
