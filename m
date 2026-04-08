Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5763B3893
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775647534; cv=none; b=QOL24EkP6bQBzKKMaMyxjg29qQVieD29xUgcJkpsNigV9vaFZ1LGB0Kw7SKrboxl3n9Ap3/4Nb2kcUlPDhAn9lG0VymG0jDBFo21/RuW7EaqRGi6w+Cc4Oxxm0gnWumme6aeBVhrKuPEiNkkabQt5CdAJC6G5Pf6gjzSgubbhBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775647534; c=relaxed/simple;
	bh=rzNS2V4AhA1FZ1LaptTZriNg7I/YODtrWQfZRCYaXCc=;
	h=To:Subject:From:Message-Id:Date; b=f6Yp2dz5wHUokrbumKiNBuKgob2ONYttj8o4fUUocQITtc0q3G0rQDm0/yqYiaomZx9+z733QWooH9NAlmvORJE/Lp04dND6ZbvOX+WCUZiwHX6BNIr9nkThvPzFb66Bve0n5s6PomCRHrlbNU7Ia2V4iU8PrklQFMDtAoLFENQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKnMPJdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKnMPJdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3914C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775647533;
	bh=rzNS2V4AhA1FZ1LaptTZriNg7I/YODtrWQfZRCYaXCc=;
	h=To:Subject:From:Date:From;
	b=GKnMPJdnotVbZXxK5KE22ODglqOPieFcrcr62tP9ksfb07L+80Q5XdIzbcDdS1pH+
	 7elKZaz/J/XlU8MsAeExLNpn6qv/jBnk8VXXPlMwOdJ9kwXTkaYfipZjaEUKAVJAe6
	 KL9yHwzDYlDf3jrKJHQk/qZ54iKBnQsSLAcUvcx1uJ1wnFygZjwFsEW+XgY1PBCM9E
	 VINuBI7MPOO92Ottny+z+4gYmXgf6MKdK5LJsJmA+uOl8eTNE7oXz9dUs5bR9+l3du
	 zZl2twy5iwGuk/PT97JaWZQDPqol/+46wLILSE9jgXDxOmAMwWTRG8iwjGQu6ImbJS
	 2bDFOgV8IeyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE61AFD5F79
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564753369.16566.9280599839061034929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1a38ae02bfc551d9d15bc6c44a912634ea52b70deecf3755624afc74e25923
Date: Wed, 08 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775647533
