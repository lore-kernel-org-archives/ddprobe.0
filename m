Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35196224AEB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753542594; cv=none; b=txY/AYUVIQ/6vPhCKXIhxZhIKCHm9kHIJpk7jg0Pm3wySirwGUIeBynr8KI3Hwyww6SZPTSaoYYlzPtXDegCi9nC0bb3DMHuLEjUxPuATr6zbqvqw3ZHii9/8g821WYr/tb5R7SBAnM3BH9Y94YwnjheGf7L38G4FHHSTItsbMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753542594; c=relaxed/simple;
	bh=3SxyWs3GBxr5u7ChNYhRh38oJRAXpG5R9DW6xjf2mjk=;
	h=To:Subject:From:Message-Id:Date; b=Q4jN63V6H3hhM2TInzvvr1ZCqrCicP6r45b9mCewLRO4q+XfmvUp1/FIkBfsLyXDfKy8GfcyALG9QSBp0PxW66dqwIGDOEuJATUqgfDq4QfbZQ7z01xzJ09oMSm4Z+c9+8ayJnPXQuHREW0g3lTpyoroi9R3I+B+1TRpeokWtpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijoD0B6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijoD0B6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8462C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753542593;
	bh=3SxyWs3GBxr5u7ChNYhRh38oJRAXpG5R9DW6xjf2mjk=;
	h=To:Subject:From:Date:From;
	b=ijoD0B6WM+nEGQlcm/vCr4+ojhLWIjRvbVdFr1KXPiYEnYhH50lvsbi/KwV92e/rR
	 hpMzWQSxoSltxtsRFIg2NKJXswi7DiYvxBU6R2JPwfGiPzw2grkj2cWSWfpfN8vF3S
	 GlAC9AnolYSXzxbnKrL9PS1dtrtykRaxLIE1C9AQq49XKvH5ome6p7hSAkpKMxBQWF
	 HveKigqMXKdwn5M/wKbBV9VeWjeCtx185gT4PQmzX5+aMLzfp5mh4c2DkvChpINjco
	 Jac7cDimRhrpJESPWh5onNeou2EVL1yXjaA1enh04lTnH5d8J2OunSwxhS721hgejp
	 zpn3rBTcGrsqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE90C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354259358.9520.3981875095364739351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23cf1973d6db45fabebb9fc5b42d45ca0703b60faa071d638ad938a8cf9aea8
Date: Sat, 26 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753542593
