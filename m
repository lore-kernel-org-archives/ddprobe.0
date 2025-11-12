Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF5287276
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762957194; cv=none; b=AUv8oRK+qe/msyE8/LHDcrEwdb1yWOgWuptTTuMo68ybXg6M4cgnQmAvjJwW+I9Lo2m8qyKsFJh1uM6UKcj06eJLnI9kiVrhNNQOfir9j9qLtQGxPimuNNOpIJqEiUE12heZOMlaInr2ub516p1wmZGxKW8kYoI3HFePlxrv920=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762957194; c=relaxed/simple;
	bh=80YyCZSJ21QWzYRzupWcuC2VUS9f5hfLFfTPX+UiP98=;
	h=To:Subject:From:Message-Id:Date; b=YjsdfK5g4AJZ5O7FZiL8i4CCk92ZIOQ54t+er9OcYk1VEtFKmwp1yZ8lOvBFnyPZ7CUjAayA9b7OMrAbUQ2/HIkTLzmc4b0AH7nKvih3Xb6yLuoCxpzElX6S+rrAPikEX2uVTiKqiBArlnr48qONsAGQHqaMLhbJoMQ2uB+BtEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bE14jf3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bE14jf3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB323C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762957193;
	bh=80YyCZSJ21QWzYRzupWcuC2VUS9f5hfLFfTPX+UiP98=;
	h=To:Subject:From:Date:From;
	b=bE14jf3oPEn92Ye0O6BK7KOcxWKqMMPDzGdjzQZYg3gyyiv3Uj3XPsn/99ftD1tFa
	 2NwgTsw+qqSwnhFySbjT7D3+b+Wmve6QXs/wLmW1nrR5Wh+tZjSzkoLfzgDitoqJ4i
	 s4jp71hudhenkKnsO9aaZguy+b/A6noJmSIPQyF4MnSS4yXXVm5MFYqB2cWk8B5Ows
	 c2xZxGlJ6yDxbJeTh90hE/XDakiz44C568r3Hryr5YohWB//Ru/xpRopIWf3sMpgCt
	 yEHgQjDwWgoqEfDuU5kSHdsK3FD6Fe1dPinR2CtSkwD/Pz7ftyMdbrUGHQTjWVlan/
	 5RXCCPPaEAFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C90CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295719358.11736.7990112324717199907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e5735c2740d61a6621402cd91b2ee43a7c93988c03e2011719521836346ac1
Date: Wed, 12 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762957193
