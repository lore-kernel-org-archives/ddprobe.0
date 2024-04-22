Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461D550271
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713810023; cv=none; b=ViIqoLq6iZ/DBw3C5AgT/vozZbd99gURxY0xLjhVX9V/2rafHpYRuZezokEqcOnYwJcr/KhKDod6L4oGqz7JH2RvQtF1hOEiQh9NChGCXga8yJCZHQrE+7+sITPJmE7hCwPNbTuyFY7Fce5sOioleP9ITsJZEU2X7uJlwOpaMNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713810023; c=relaxed/simple;
	bh=M4t1E+CfFWLTpbzbbGzWVebtxJRxrjgn6/ermML+Z+Y=;
	h=To:Subject:From:Message-Id:Date; b=ht+GyGQL1kn4xEuZmy5z1QatHJUnOYMPV9L5gShhuEGAvxF/nTLmkVEdYRZ0olHVvdLbQZuxsjJG0VpXrqbgqz9vcJ63wJfMsReCkvii0IfymgAzl/b3Laemv+M+O7V6FapboJXSRXM1PTsVqYyYWNMDCQV/0goTa6xku3r+wvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBR5s74+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBR5s74+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D681CC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 18:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713810022;
	bh=M4t1E+CfFWLTpbzbbGzWVebtxJRxrjgn6/ermML+Z+Y=;
	h=To:Subject:From:Date:From;
	b=ZBR5s74+uU4YGwt5jmeuwGQvVsc67ucbB+CdyUu80cVtJRJFApTWx/fNPcwo7TB0R
	 rS17lEf5y4Lx6JA4eqWxk2j2locnIZQt3Cue2rIQvFxfvSX8oyqIx21ofuX8WR6jrp
	 aOBktyJkttYf5UelLn9HuT2RyUHAuvmJs9kJBcRLsHxZQY8djoHdXT1Tw6ydLCz8l3
	 DHonBCSPAyM/lL46CsQIRPMzuWslyzqAc0kBn2XTOBP1OG8buEz6hB1mT+ZtHKT63P
	 Cjprd9sSeeZC3GylDT6eiuxwveZIs/KgvezQUwazjd4r00Oyv8bslvpbLGsFi6ROHQ
	 ejt47Raawo+Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBBDC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 18:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171381002277.11085.14252896783969263192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c10189bc1c99b4f09dbec957215b3ac845d195425429dfa4d80728a7ec9481d
Date: Mon, 22 Apr 2024 18:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713810022
