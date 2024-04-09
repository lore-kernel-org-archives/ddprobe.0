Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85F8370
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712621296; cv=none; b=FNyzjG6rNfT3l9sOWfJpaYqxnPeGZQuZFRbY2+FlOWW9RcOpv99h8/wkQhFfPMFABAD7aowKMvGHl8qPWVWREu2eJGNotjl0taedraUh/CNm3tUe8wY780xLhk1NYpL6k/u9NvZH1r0YMSSyRXzEjpTyjEX6C55y9BJTa++tMrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712621296; c=relaxed/simple;
	bh=9QJU5kYR4Sw7jYM9oRkzTfoOAt/dfFUP0K9YL6PJDqE=;
	h=To:Subject:From:Message-Id:Date; b=sYejL3iW3AM/gqxJ9vHQYyCXJkeULKC5Htu6wFLY3C6qdVGdqS1FjlhiLN9I4o97ou0NOXkRB+tHYkZpoJd6k4IApK1eogTqsVIdUc/ZB/sRKZkgxDIqqCMHNdNKnyiMFaw53JUMplWQonqilawD++3AmRKu0qqgiuFT+o5LrTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNusTM4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNusTM4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BA7C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712621296;
	bh=9QJU5kYR4Sw7jYM9oRkzTfoOAt/dfFUP0K9YL6PJDqE=;
	h=To:Subject:From:Date:From;
	b=pNusTM4F9poOuypfZfZ9swSw20odfhW0a1ECl2uEbOsLBHgN7VWC+EDBa83U2c/LT
	 4Qn4C0tHKxWMVZPiOoA8xSAbjy3QaifY0zqh+znr8ctdlpF1AiL0WjrzkkKpZ8t8DN
	 W5pIsaVVosTob9rreEXXmvIGFFtzXhSZtxKdyPnE39r+BsGjJmSMFqKI26cjqJV31b
	 fikF2fjnLgRiOVT/+WTTc8NEwTb1JGGO77Opdt+h0cHNbzsn+NBFr/uw2KbsH4Lymp
	 bP4HCSZEtu5ncmGJ8L1CZYT85+Eni6OJQUFpXrT7x/rDsldtHQdUudBIn2MJWPgAua
	 WQ+iQzKs2Rivw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89574C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262129655.7083.14233682757135805901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d39f38824c32b64f50574578e77e1a001781aef869692f54c3226d7c3690625
Date: Tue, 09 Apr 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712621296
