Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CC9378D9F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780750474; cv=none; b=FMFoDZgpxeYeMHWUFn4snO89Lt+L1C0RtLLWNLaaxbwyOJcearMvHADNl1XGAhskSLyO8qaXEFm9Xqp21fORKgC1T0PMjeCnbcN4Mqu9vmm0PdV4RYNnOZJk+PgUEa+4gCeHXJ0BfHEj8b2tnsBkRmAAippYMGIV6Q7FV7rr8lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780750474; c=relaxed/simple;
	bh=N6ewuUC7sktBef4BscQRv0Y9hiVcxbFg+a0YqPHFa7k=;
	h=To:Subject:From:Message-Id:Date; b=fPJJB5CGRjd0YYxjYLjA3hX/+jAH8Ap5UwbLPeZiUhSl1cuvUB+OucxZDvqjkZOveRFmBfPT1KI8T6yrlKyD9pb7jgHgR+1PwQc909nFpQgxkD8TZWPfe1l2iAN6WLTKQeDbzsSuzvDY7Z7bTxdfJBObUrK/Vz7V3RSJQQZ3e6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYrZN6I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYrZN6I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B1CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780750473;
	bh=N6ewuUC7sktBef4BscQRv0Y9hiVcxbFg+a0YqPHFa7k=;
	h=To:Subject:From:Date:From;
	b=IYrZN6I+rO6hNF2Sf3fB+pV1ApoDM4OwHhN19Q7iKyaMoVEfK4YAjokqabjbUZfOM
	 QZUYypRVF/9Uq6su/Q9pvVHynp+ZLO76fZW+sEWyHodmIFYwwIqZc9pMahUVTbQkiX
	 o0GUJUFvq80f1v7daLkPWBdEkHTOS5s1rUCrMOVR1qfQbg98OpvhXeTahIi65md/6M
	 JH6YYZC7ZcWHlRyBUiBRjBNTT2bmy4FbO8k7beTUYicMeX3TJRtzVA19cj0b6xZpAX
	 VX7ek5ozDls/4hB6eSotTF+LLxVzWFzHTWdboKrXcYCzN0nAA/clo38oRxP75wbTkg
	 bmRJNMBMnItHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B006ACD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075047368.30147.2369666934789622006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04eb45f7090e43a96dee497a6ab0061abbc92e972e7cb168967dced751719fab
Date: Sat, 06 Jun 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780750473
