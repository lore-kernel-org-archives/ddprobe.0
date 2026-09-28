Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570C331AABC
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790572834; cv=none; b=XW6oMm8eQUR2JEbwQnQHwDEnJ4ytspCoSHwdXzeV1c2e5guSWWRzf5NHzCX3q6HlIahUyWbMi6+uyEBCEVDz91rzh490/qA8av1Uq7TO0ZfflKeIX0Lg3UnjKxDRi9Pz5G9LHkf2Q29fSnUtGhKREF8C/mnWDa1cDkSDs6sxvlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790572834; c=relaxed/simple;
	bh=VFlA113dT2v6bP+l6ZEX17JUzoX2+q6DeK/dA4w40QU=;
	h=To:Subject:From:Message-Id:Date; b=FzEo0adcspEIM3eg+S2UQKzFRMFWsIretohjGg6j91qSjU8gPyddwg0DLjTQcWP5B6Y2juRtMCVerWLsR6ZEG3FJZSoB+khJDfUbz+ty6dOsL0pY/sA832ZVc4BshYXGFKv7xoC92CwzH4AkA73st+9p3ClqYoDow/GSDTCm5I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1fuqOvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1fuqOvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0A0C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790572833;
	bh=VFlA113dT2v6bP+l6ZEX17JUzoX2+q6DeK/dA4w40QU=;
	h=To:Subject:From:Date:From;
	b=n1fuqOvOGCWTPAyhB1BAamah+phqluBSBPq8QSRxetknB7PNcNn6l12CpSTwSy+AT
	 16xwO5OJEzu2FHWX+OJfPuy+P/wcfbJxNCSzF9p2yo8VQjB4KMUaJQc8NZyTBTw4KC
	 IoAcgbI+V37ZRpumgufjSJUc5pEwVpwtzzWsG2WPQNDJis/uZuXAe7Qva5ubj8Dhq6
	 NGm/UURrVrRaNIsLMSQtHBW5DD5/08MneOIbAxNiBq0izu9T0qqeadDnbiWXCxvEBE
	 a5luEI6Vlkihr2sVHhb0/CVm2pHIuUWc9eWCU2GOn1luCDJdsdvkzFA8EpazNrRrsJ
	 fmS1oo+T7Qoxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCFCC98328
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057283369.17924.2321221074654409056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8f22a8312a34227c997ac6dd5cc3ee69e0d6b125369f5edc4578e6dfac9376
Date: Mon, 28 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790572833
