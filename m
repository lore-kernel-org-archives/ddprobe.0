Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242AE312837
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775409934; cv=none; b=Gq0KCxiE4J2esYq/Fdww9DoGl8PjKa8ItKuiasnCvIh9jf/SOMks6NO3Z0UCVkAvAQqv334SA7TUK+V1vfZqQJ0UkYXmmrQLaRWTsHhqRMujT8SVXj4wr0fh+HCJRMfj7RPqDymSzecpJ/XAG2wYNnoOGOJiTozDEWhfMfdLxxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775409934; c=relaxed/simple;
	bh=P1xEQr5AvGssTf1+3QTORtkZ1nmts3VCQzXpxHwhxV8=;
	h=To:Subject:From:Message-Id:Date; b=NrciRgM915bxrS4hQvVKHfJppGo0c+xnbJkuN03Eoev12NDsZqeuU1RSTQK4NPzQW7lfAvkyIxBh3PZ6LUVll4Xzi7IeiXtB9duWWE7qeJ3alh6hmY5VXiJsDFGB6QqpiS+1Lqqv702bgpHgXEdQ/vLlWb/nII3ATgBOUnOjWxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3EBOPm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3EBOPm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B73C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775409933;
	bh=P1xEQr5AvGssTf1+3QTORtkZ1nmts3VCQzXpxHwhxV8=;
	h=To:Subject:From:Date:From;
	b=P3EBOPm917kmC9Lq0r6oR8Rs+2FkdM5W0nVcnojyY8rfvtAHSxawE8WxuHRXK1mUF
	 3d1NtKf49BX1ppPQoN9CBs4+3HgKfOvD/oan69GGBPi1hKIybBGSDS59CobhDcwjVh
	 WpJz9LAOnzmx3eAGHB2b2wsA61zu4gYdYYc2p3nt/ao1VU9FUvUNxNKt6uppNJ9CEA
	 vh63YNXlyRSlxeIPNXpQDld5adjMmeRgrdBD6pWuIB6ZdK30YV6pGuO9MGmTGN0zHE
	 znryrJng6B7rJR3Gr10WSFfdNbnk9m6gSoQiVvhe/hWxK2UXvp4QJrDK91HLKpHXWq
	 jSEqUJ5NOm0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00AEE9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540993368.30445.1616959256593687444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2648e24fe8aba3568947f9e1fe0d27c3aef81f5505aa76a7c4f4e33acfdd7bb
Date: Sun, 05 Apr 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775409933
