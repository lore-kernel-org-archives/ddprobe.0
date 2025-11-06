Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC0E26738B
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762425594; cv=none; b=KGXr6X+HatRzqVkOeaYYSwpE87o1DG2KDDFvCTra5cAcQa2ImearlhDV8p36jdyLvgBvaa0NmD7Xhd8lL3+HLFrPJKAtuY9pGHPiMBl283SkGOFtSCDRlSuxcs2zscD2UIP5ANri8xXRx4H1xZl9FxnmQosFQmEJiiUXg9Y/T6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762425594; c=relaxed/simple;
	bh=1woA3r4lZbQOSMbc2EgixrCn/S5e6ayls1yYXobc2f4=;
	h=To:Subject:From:Message-Id:Date; b=VqznZfDOrHiFMwG/Y0xv0C9FkopznbaRBT/Rf0AziKfxoZ5SLEr4eUDkZuAHVnWq+8Rb5vYbyx8nq8HTIpcQZqXfUgYWMgSXxsuaPmKDpdwuYZ4Jeo20wb0R5MG+o9fV+AG2uEU1FG4VK3mt8qa52bxR/fkYcvDsNEGJZLoTKPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXJLb/HU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXJLb/HU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0401C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762425593;
	bh=1woA3r4lZbQOSMbc2EgixrCn/S5e6ayls1yYXobc2f4=;
	h=To:Subject:From:Date:From;
	b=QXJLb/HUtNaswrcFg0EDPKf6HOk8p2Tw7pqzpFX+h6C8FngxCqsBSQTFTpXvCGX3p
	 l9bBVr7r6/CFQ+pMp46exF1VEaA3Y0hQIJ6qDhEvyy43t6rZ+7d0XvTIu00F98dYUS
	 CAZxDICJz7GWISWZaeFUPR9eXqLPkoWYd7ip+B037PeJy94ljzTPxB8LgW7wuBkJHs
	 3AVGMkG26OiukpIIsE17feO2/iwhJwN7LLAwKH4jWafdsqMlTrH2CCBTIf5rjJaPW9
	 c39vHg2BeeoN6RRd+7kA5cAlLVZZfjcxn02oJgNVNYda9Hh3PQkRXqXcKZW7LhH0W1
	 Zc7po9ctXaydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275ECCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242559359.28634.18179225797006469431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786ca6fa316f648d22a110b0df63ed54a6b2d963bf4a2d239e470191412996d3
Date: Thu, 06 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762425593
