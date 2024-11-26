Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383921885B8
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732606554; cv=none; b=OL+KvH7XhCbofER2Oe0rz2YXJzoILGwZGt/V9Sx+QP3g3Ep0O02uL7CIjB47U/YiSR3swLO6ZFk6/iGbgeSbSW51+0eAe2oWKnK9An23Ns9exqMk6ZA4J4bWK8CUOB0GsheDWmzwHYrP960p+LZqHDS0nQigegoB8lBPvfVX9a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732606554; c=relaxed/simple;
	bh=2tlX9iNuvcOhphC8AK6inW/rEb/+pRJJnLHx01axlSw=;
	h=To:Subject:From:Message-Id:Date; b=lGNxLUBcENM1ByAuYqlBm91cQasfWSIQcAGY5i89hj3FdOBfVrYsG7i1leQ1B1v+pJON7msWCKZkWbiHT2n9qX/u62ZrLoseoFimRwvfHWBsdfJH93TM3p1Jp8y4wLqljwoN7CerUrLn3aCqQJxwar0znHNjA0I/cB/u5bZL2L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLsyw4Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLsyw4Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2551C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732606553;
	bh=2tlX9iNuvcOhphC8AK6inW/rEb/+pRJJnLHx01axlSw=;
	h=To:Subject:From:Date:From;
	b=KLsyw4Dwx3NFgOUAi980GB5Nw/Xos/3v/xrNlgIz0qM7dn82eZ/S48vhojMi5sIx/
	 AGcCO+SC0KUTEgvDJN+SKSWNB02m9UKq+oo0pxfB0TUDwxVMjridvvgOUFZEA1+nws
	 mBVsdaU3JaDSrjGz2024HU+hghOrwA1NjuUTYHF0UAA+49ySrI5HT9cWR+MeKM2HA5
	 nTJeZfA3+tN299mBl6cAPaLiHgE0wgSEf5yfsfyRf0pwwpt5tQMVn4ooF1qDaz/jX2
	 Ry/R94KYhBzauZMkqpmeT8VCvNzPIsH+FEYPQem79HA4BY+6g7xgnFn2AwbUNabeiS
	 A416UCCJwHj+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E67D5A6EA
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260655358.23850.8540019916947401536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bf5128161a26c39608ce5da92fd0995914a1136ce4a4c187b40cda86989c76
Date: Tue, 26 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732606553
