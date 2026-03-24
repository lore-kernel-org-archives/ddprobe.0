Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC572248B9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774311894; cv=none; b=WlpgYskkafGFXfYwRENSafHY8Qe4LLFLEE5VBT4CPrOh/al+jq4oxBfy68K89is1VAFPPdzIYApiFyfcR98SKckxrmcRRwuMUXM3m7ftAcR4m8wYasPPkjBtbNmNuQpV4XoH7taUzgQFugmHpcpCAlMZ5fPkQT+6bz553EjaV0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774311894; c=relaxed/simple;
	bh=bAWOVfrlxX5NnX5UxhOjocqL3C1Z9UBlKfUZpmkTyFY=;
	h=To:Subject:From:Message-Id:Date; b=SbCMfQ+dURetWJxydlufhSf3bQJjzg7//0BZzmoXMpThpV98lrOtLus8XhIY7BcLsWKas3gqc4+m7VT5wL3M2iPqyS7U840yPUXsOY3vrxEjQ6rg/v+hBQBJjamaPzgIuWxOTzc7kTMUBHk5I41esFAkk/J2eAYMBBYan9WMGsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaEVoBuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaEVoBuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774311893;
	bh=bAWOVfrlxX5NnX5UxhOjocqL3C1Z9UBlKfUZpmkTyFY=;
	h=To:Subject:From:Date:From;
	b=ZaEVoBuIR4E6xeRL870D+xO4uYZcX3MuN+sRJZ/UozGQTVRlaiD/BHcaZxG2Kla2d
	 sirhnY9JY2I804Gn0PyrzJ5C1iAjmOuC8CFAk1XSIEKc2H1RE2E4c4jLFlSyXTDOiy
	 sCFg9MCfniLIe03BA10mqAZyiVuMmZ3g4P1xwhj+cpa8wdqgor97P6x3fwXEe7m3vI
	 +Wi6tgDNbAJ+h1URJIviVfvtUl9/xF9sasWyYvseujTeZGBqHoe6msqFLy5rk3T+8y
	 EaOx7ULk1bC+aZSE04r3AvErsdbmzjrHVl8ARRT4raZS2MIPpT7AbpX5/X67gfy7yq
	 90n3jCAs6V01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBFF532C1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431189359.3586.1426559620512663104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9899c73ed0e622503823b5959048da02d80d65e788378c9ce8a07cf22cb7051f
Date: Tue, 24 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774311893
