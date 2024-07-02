Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9FF1CCCBF
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719946523; cv=none; b=nC1HaaDDG6Sv7cN1DNGn6CwBzbChb34oolublIULcFYTDGMjteESA2VIVBf+QVGtpLkbC1/Pugjt/eXB6o1/7nLNG1vAP6Kw9H9RKiDJnfQfrkbjvIqdRjoHpyQ1P5IE7UEdzmOoAo4rCSWZ2uF20g9s5Y8QakEm1xnn0Ps8aDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719946523; c=relaxed/simple;
	bh=6rnqry/mhnWx4+f44Q9fea8Xcjf0PQLklvYzZy1c+p0=;
	h=To:Subject:From:Message-Id:Date; b=gh0EKcbp+oQrLk21+JYkZDF1+EC7q+8Yre3sf65JvZkt1E3b3YWctS2Y1BAjZuZpPaY35HMvdinRe0e0oc5/oSzWTtSyIE3BZtiboE+YrvoTkJ64G5A6mN2Wk7JByRjOqFdz9YqfO5sVIAqwpmEAFJ55414cWlPBnxUWyQMXtKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifsTx0v9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifsTx0v9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DBEC32781
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719946522;
	bh=6rnqry/mhnWx4+f44Q9fea8Xcjf0PQLklvYzZy1c+p0=;
	h=To:Subject:From:Date:From;
	b=ifsTx0v9qK8T/krisaCMreHrRRL9gZBHnuxM9quRSDcxQo+pAVwAYwQGnhYJuHMV6
	 +qwthnTTMcjKD0niMdf7XEezHLecyPkuZgncwPXSIMPUHs0+ThJhoBILJWtCelVi4H
	 06jUYBPpsoLUjIr3yd+MBYUjRIAYsa3dX3WpR1jF4h3IVntTdwUiLKtkHNjcJAbdAv
	 xuij4EFKv/iPIcxFrdnG62x5sMz5uog6U2j0y9POJ7XWvuwVN3FBRg2iYrOtl8Fw9f
	 CEtScEoQk3l/8qazkXE2qA8vmVqBSbNX/fvycGEM/9i6Akgn/kovqDwpV1l5UQKnFI
	 mXh6lME1eyxnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1065C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994652277.10380.10159350232608077028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8284a90f38665282b44f5998e6a37b75b489d88a3fa2e4eaa7e730f750e9bb86
Date: Tue, 02 Jul 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719946522
