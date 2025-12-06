Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AB518871F
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765023774; cv=none; b=QCofHdGtvGKmcuZQB5BjAG3J8pWeU3dBiMLqC79IfwkChP4SlwhvC7Q4lDI9SVmUFk3g0zs1KtSf3EYhI1vnrjfFr+lLZgdwVfgpDZ7kY3ltkvdpIyjoaAeBwna8J92XEF98GcxqxjU8DPsTDGOznlYBiDxA3LtlnbKqdqX1Zss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765023774; c=relaxed/simple;
	bh=nJ4bNW1ugUgl33B8hRz4XgpLtlYD5138hXEuWTePXQo=;
	h=To:Subject:From:Message-Id:Date; b=fNE1uTOWyEmhvo6u5Ax7//94iGTPabDGVMbd2+yR20Kg3TwLnPkic654vMGuI1GV+en1L/rlfFw1H+P3p+V12CcRg1dpnu5vpOfurNF21Mq56e4q6tZD5OTvqjkepqccWuL08oS7xdZU5rEz/fltkGZqAd6CzJ4e9n4O+27mkKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKYph0Gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKYph0Gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E27C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765023773;
	bh=nJ4bNW1ugUgl33B8hRz4XgpLtlYD5138hXEuWTePXQo=;
	h=To:Subject:From:Date:From;
	b=PKYph0GbJllkaJeZkC7CjKnJncUESyx5w55nR9NpeZUOv28pwJiRLqbJXb91gTgzO
	 3U2j4ITDS9/OEmBXqrhc9czCRi+5gf5pJmLsVvaV/J3wugES/RindYKOwfvvNkN1g/
	 0d9DBb7xVN2luTOoqT6mE6DZnbmLCSjw4524Ieq3cPOPbFKTN5Hc799DkPuiMLyj1p
	 AgSBcZwafqUpzKS04ca+tbg+m2Ev8hxSQBTN5wdZHM+ZWig2E7sKCIDkC/FeLWACaB
	 rXHUo47HX/QLpMgVhLLaSHRPtTNrhB/5xZ/Uw3WN27LcQoTYPK7SZU1ame26m9JuPt
	 n1uvstQ3kBtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95637D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502377358.14238.13433918016101073486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd80c0c4808b94a326941edbe9219ac2ce6a9edd56c0ed715abdbd4c46cb329e
Date: Sat, 06 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765023773
