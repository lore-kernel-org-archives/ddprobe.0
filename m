Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A697370AC8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781272594; cv=none; b=WMcps5POv/azvdy3bkhrPIBt+0WqeYlfKhmPBpaNiqmqGFxr3jOSULBmXfvAtnai2iNOaVwbzNCrm/6pKSF9eJkr+TK6bNQcrrXrjbQKcIH7q4TuXbDdZS5Cj1/RauMniKF4VyUzVvo56rBPnqBy0TR9b9a1Nn2LXIBPK0yKtLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781272594; c=relaxed/simple;
	bh=qiFvr5GobSRRYH2Nkvr5lP7n+SqptG79OysrNXLAMz0=;
	h=To:Subject:From:Message-Id:Date; b=o/iLjPanFEO2kYuzVmjaouItGDMHcnk2O7OzMMUu6ta1qvDylM5cT4Xot4LOKKR1V58ucLBs7p+ZVhxptoS4oJeftGrczS2fFZGrJev7AypG4H88fxZleCNCLJUtIQUDVVweF9hkWgVs//ihyRoSgaV9RAQpNs91E6cabJI28wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbRaxWmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbRaxWmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBC3C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781272593;
	bh=qiFvr5GobSRRYH2Nkvr5lP7n+SqptG79OysrNXLAMz0=;
	h=To:Subject:From:Date:From;
	b=rbRaxWmhRZUoBBNer53/PACVsH4WP3mDhdMeYUfPiaz2TWhj+iOuj+9OO/kG/bpYI
	 S5kro5Y9zhG2twTfXxfCv0CJu2mvvG1/Yw0tLff3qUDNplE3+GdIoikJtIbCGmdwwk
	 Nlph53t409z561oVYHpYFEgls7XMw/PhiG0AaYNS1aTVj2j/8ScBjYWAQYsMnzjM/+
	 FncIx+/Rz4KG6uqsFICoBySV7OxWd+KF2FnnpBxrQQShWqPGgBEuTaGDvK4dAAgBdu
	 NxG8qLtAtcOueofCDDqc0oppaejWEjmOLAxXotus8UFBo4xfG1TLCmtAWlzmgPD4UP
	 EIsUpul4gS5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEDBCD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127259370.22778.13608481795623941307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b02cc19f0f50f8949c914514122a303690b7cd5fc49901789ce0cf6cfe50c1
Date: Fri, 12 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781272593
