Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E93D30B
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710299897; cv=none; b=Sy/qyCmqEX/fgoH/6htqLzPlT2yz0IxW6Yoi2FULE9eTW5KlF/aVSQJNRe1fGKiI0amI4iMYXXqez3MknuBPpYwZPL9YK0kshWnGA4e9D3kAojO41AO/8Vg8Af0PmVhJIs1PBUdA4A4Kc4U+0YOuSEAVzyEk65JevaYEM6j44jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710299897; c=relaxed/simple;
	bh=59qYiQXNAnV0aC6UrZS6qKvXkoEm4atCsD+/fw4AyN4=;
	h=To:Subject:From:Message-Id:Date; b=UKNRF1X0mdzqb6Fh03dRfJj8AUoGacAIcGNivos8nucs3RxALsY/9GTc+88aMopSm51TToHOceSWhVSPo1mRgCXHKa17vzT6MAFqo66p7MsIpRjzI/Z/9ag5TRFRcuchljCMJTP/PEB0U3S7qK236mIlgSIbqc+T95M2MpwiJ98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPft/Ahr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPft/Ahr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76202C433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710299896;
	bh=59qYiQXNAnV0aC6UrZS6qKvXkoEm4atCsD+/fw4AyN4=;
	h=To:Subject:From:Date:From;
	b=hPft/AhrHY1Uat3zSr2z5dNqEXWCsRPzMrQ6plfbAWOFOMxh9/TkvAvIQNiP++p7/
	 RjKvYTqE/lK6+s/CKbJE1sEaqw/ziEDEEJb11F5DI9Y1lOo5JBe82/tmlLANnGgZQ1
	 HuSV428DYckzDnnneWrSYOW2v7qb3OX9kBV+pWfXpBpHhgHF0K34M65Aenjyl/so2J
	 zAl1xcCurcj7YSESvq9OeW6WpQ0nyBxPjMQUESm4iXrSacs1onRaXEZ10ruyLeZbWT
	 iDZuIEXAirg9m/TVkYAv/ifWwq34OoQKqZTCHbhBYdnLUB80DA8Q6Uy8W+6eg8Xrxz
	 fpAj4Ly46y/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4E6C54E5D
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171029989636.5881.5441883520334113845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864b1517ac2b8d4ec18449222a51b08eaac57e86672360b3170a158bfaba8d0e
Date: Wed, 13 Mar 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710299896
