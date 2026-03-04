Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C2A1A9B46
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772628294; cv=none; b=Q1pIynw0vD1Fc+C6atUKtglm5G0Qe4Q+qllhzF6QByxM8cMEHfm4VB4uarA7kcq9kMDv2oZUwG0wpJHKY+0IFOpfpR0ndTkfrEI0x3QYWZlgrVXZ+0tkemg5pR9q2mNhjCV3U711Q1E2GHr3t+5YWMnbYJaJN+4qLJpiOFnqflw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772628294; c=relaxed/simple;
	bh=/Y94E5vbZ37SDcZ+F1OI1owCIlPOvSS5Glf9ucWYHsU=;
	h=To:Subject:From:Message-Id:Date; b=qXLZv+aMkOR5UJTE/m66eikbLAU0gkb17fzm/FffmUh8b4CBMeGB4nMi+IMvXP04r1ajQbL9S5mJ3nLE5QKpYCpfXSbcXQbncGoL5n/tMSNb+LnnmmxY61nsxiBMZGQ89xO6rmbfHbl34b4FPLf4j0Q0edOoWaD7X7JFhnu/9W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvB2JKCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvB2JKCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE84DC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772628293;
	bh=/Y94E5vbZ37SDcZ+F1OI1owCIlPOvSS5Glf9ucWYHsU=;
	h=To:Subject:From:Date:From;
	b=fvB2JKCCm0t5zsNC3KO5A4QnfRY+Va0i/o6Vxkz+PKP63lQZ131yFtjt12UyHzjjD
	 aS0siyKnSprzfTQMBAYtMWFp52bmJzJFhI390jjEyz4OWOLMsjLZ6aI5bS9eNOd4pu
	 nMj29Zm4qElBBjm9fxYwzhb5GZrbkrLaX2mhrog9mOJyVw8Odzy5b7HKgTIrncmViT
	 x3H3GWPydzy+n+qLvmOkq/rNvlswKMFsh+siw+JZgDPslM1m3grlsnpbeEjBupq6bB
	 ASEzwMVn/5bnix52FRTArl0bFM8ce84hIVYo2EuV4YQCimh/mptytyel1D/rAoyQrD
	 4iPRvdvjcmU4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A60EB363E
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262829361.3419.13930035276764493700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804e2cc95e7a049f6761cfdad0088e12eec6c958ae024b57924072ddb05c5fbb
Date: Wed, 04 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772628293
