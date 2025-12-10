Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3000B1A3029
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765405974; cv=none; b=YrtEYq/zAFI/zrAKGxUScl0/tolQkNKxhuFyhwIPF42v0SEeXRSZ50GkaYrcU5/1mplh97LlEgQGTY1aMG0UyqZLO9/ZX8444Mb6BxWCdgphp5b/QYGKiAKDZIPWbiodatjRmj7iUWek4EoWYV5FycbCrPZPdbr7FjcafQonPzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765405974; c=relaxed/simple;
	bh=s/CkW7voeulP0w+1tl+Cwst1JNd1LhMULWOZd8zmEek=;
	h=To:Subject:From:Message-Id:Date; b=GsjoSRMsgx47CTMGIrzuskzZ00pNNc1YosCIFkW/8G0lNEY2rEa2zUuud+L8sRMqg5wfVzpAiFl6bjlM162trK6TSdRdJMhNYeE9OJozQlkZDG6eLo3ovRFLS6fjJBxZugWGWyR611FjKuNP8XAyeg6Wt8x5wTBjHsfEL2RfGag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpzeP/3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpzeP/3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6571C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765405973;
	bh=s/CkW7voeulP0w+1tl+Cwst1JNd1LhMULWOZd8zmEek=;
	h=To:Subject:From:Date:From;
	b=hpzeP/3b/0J1tEFVHFcNFxZAzz5zVvKipADxvFlYM7lJwIy9O7ngOQ17bmB5ajcak
	 fL9fXI/zQNRH7aNIgKDweyTZGkzYdBtQsu9n2YB8eOBhCVm8IMOI/UZF9UiwB1UbFA
	 5JRAYrUvB1g5ojrjT6sewT9WbNEGdPsBNLtz/vEhjhp2/qmX8psPIeyvxgZSZ8EnL9
	 KNhYEEp/jTwE+xpfjAr4VHxdUpreN+0AUUCovpsWnlSLbmSnTmJW2/ucGkz3a1eM9n
	 nZresYUJV/EjR34Ab9iY7+VRP8a8p0wBaos31mK2/r+uKQV4ZEABGEB/x75m/RAlZX
	 K9/leo/q3KulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD6D3E77D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540597358.15939.16759797776723734700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04e50530fff0847c4492fa87b698a7932beca160e993296ede7c369f16f26f5
Date: Wed, 10 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765405973
