Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3392222D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787457034; cv=none; b=Vsu+ohrGKmnDaRCORPgQKBA+J4N5BeatAzcS4XQ6EJjbR5zU++wgf0xMj7LzlbnJDgQihVKQCD8e2PFvgA7ZE2gL64gvnqHp+eAArfKAI4WCSox/t7hZ3wUtY0z1gRzbjx2xwjGdxRmbIFXKhish2NK4zXzZMfI/39OIy90BXvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787457034; c=relaxed/simple;
	bh=SQPLE/Og+pooANpJ5A8o+9WepzVbx8EkpPZgmDnLkuQ=;
	h=To:Subject:From:Message-Id:Date; b=JISJ7aWx00BRKtBZJcRdvGZAzzi4Tc+FqQP5ohluCk4gtiKylMF3RnoEVpPnbSSRBeeb3s4mVECutCGS+WYCfWEqUIe/xvRCYlC6KfGBpUUNkODjmVUhK00u2jWrhoabpLgGYX2wwil0AeBXi+5Jfvhl4uDwXKoTsNtt87be2LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It8juVKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It8juVKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D525AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787457033;
	bh=SQPLE/Og+pooANpJ5A8o+9WepzVbx8EkpPZgmDnLkuQ=;
	h=To:Subject:From:Date:From;
	b=It8juVKJlEvU82FVfQOIABZ0qlWo1KxFRR6mtL6rrju8Iy/yNqLFWQYHMho5vtO5y
	 LMP1gdZEMYiIbspV5UwD0s52xSThNDu721oQ8WiYFJWFSG6imn8+Jn/T0/+GGnacub
	 S8k1Yy+JD0strqx/0wo8HRFVbPlSguE6h2LkO4f0RsOwtKT2wrvE75w5L0y4+sBgx8
	 ZHwO650fhzQqct8DiwhnzdJJi7IY91p5L/R6geyc1NC9Gla/0YtzeFYg+OYXfpiMk1
	 xedBPupFxaEscaKmd2IO+KKfHaUeIypLO3ltrfM5Ee8z4rt8yifQg5MjSupt+mpgom
	 uqbwOug5/VL2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADABCC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745703368.21433.12212772166772617487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c863d93cc1320634f2c5e0d9bdf5c4bdf18d5de5afc4d7271def261bbd7a976f
Date: Sun, 23 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787457033
