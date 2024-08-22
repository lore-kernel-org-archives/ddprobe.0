Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C361CDFA5
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724345754; cv=none; b=LRsDGIGIc4by36s1C3ZVqv+XwElQGknzrSDqcy9w8KBcN0FN3gLjXmkhOe/+HvdsO2N5k6RiElcvlA04cjAspR31g+fsbQo29IUVWGNRq6ia4VzbDHrAl40scRXV0e5HPQPwJCSw3UPQXthngg1Pqj9tZHarhNFP4ZNuSpaM7GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724345754; c=relaxed/simple;
	bh=4PYFyLpEBUFe7G4kJFjwJkZI4OQVRCLF19b5NpXUFAY=;
	h=To:Subject:From:Message-Id:Date; b=rg15n6KVrrahXjLd9xl5f0CHHdgVhRfcW0wozqhbmHg8vSbFOdzrc/cFXL+SlVXIF+keIiZezm68I8s/iJwLettKzznd/+4Y1TIqdfAt45OxH1M3TyNuUVSxaKq9uFDyGopVNEWW0ubhjyv0bwIXJ58sHzt9uM4DfMlMNc59HTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ushZ/B+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ushZ/B+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3D2C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724345753;
	bh=4PYFyLpEBUFe7G4kJFjwJkZI4OQVRCLF19b5NpXUFAY=;
	h=To:Subject:From:Date:From;
	b=ushZ/B+XISIG+ByE6ec9tFObsbfqB5hOoJ0oyXnOVjEuDUNANh/dOFe1PaUGyjOpv
	 jIEoap2dFdSJte3AzBLEsj1cpzHw45e2aWYr4DSyLq1ccdIljkK3nML1K+EAqQ5bu3
	 xsWXmhFDww4E1QTtlrtHucNJBPXfJpHrabmTnXsLvfZQA8U87cTrSpk8o7URQr+QYG
	 WZMiBz5yEbiztOffZLFyeorH18Dxj9wYUCvoNmodEmaotisJ9CbbIyaSsKMfKqj/1a
	 BKSEjIZMc5+CxRGo9WXbzWiP7U/ItgYVamM7rv74sRmikMoXmWZQbrhEnPU8bem1na
	 ZKFkInDT8SDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9664CC52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172434575360.28034.13880092830217938327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62204262230c8e375aa783519dbb09b3f88920a1b6668250c4ad8733155711f9
Date: Thu, 22 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724345753
