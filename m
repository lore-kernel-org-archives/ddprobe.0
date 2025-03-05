Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CEB24C07D
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741205935; cv=none; b=U5wVXPXLZHJ/Tcsg1R8ur0l1+a515zlGr4JC0iAfuZAaRJmIVJTM8YQ3iOIXINKzBobAzlkqjj9ZzA6bR9OGfNolaAgesaEv10tAocRfyDiHpx30mDUiwUZf6R05kyK6VYi26vWHh2XBhpPwb4NJaw6fvxC85VJUBpXOky7Btzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741205935; c=relaxed/simple;
	bh=iSSfLi53ZeGA6D4eTznezd+ENj3KZ3I0LURZivxiyFI=;
	h=To:Subject:From:Message-Id:Date; b=lQLOAskOYlPi4JMP0S+jjz89MuDvI5MsT/voH6pfY2LpvdqSLyysdQ7c9V5q/is2jiztTzYR89yIBEGnwBA59mUhs5oKCZJTqTvLC9kgFFiapyHx4XoWTJylbW4VecciEtb8UDrzcVNjPD4zpfILyyxyqnBD/I+FQxPNkC3qSGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPorLsnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPorLsnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63C4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741205933;
	bh=iSSfLi53ZeGA6D4eTznezd+ENj3KZ3I0LURZivxiyFI=;
	h=To:Subject:From:Date:From;
	b=mPorLsnz1oYda00Mn1RjHsIrh9V5HZ2ZkgdOdDZdHJoLsJ1rF2zwjYX/YDi7raJaS
	 3nukKWX8ijQEz5lIPu2yadFpLJlU/pGqJ7csFc0zclnpnZM6OzFt+5iEPrUnBz0ZnV
	 COdMSdc7kNntPmvfZStUdASDwSouNjAGiCOUA8QjYGNec/f/1EU5/SHQR1SzBJ5UD3
	 rFkDyoG1Bg5k75AV7w6mhWxrzU700QHpdguWcS569iJb4B9tFS7pbS/8Wv1QFsdbxW
	 N6yHyBg2qNF6ZRfuIl//m9CvGED2iVtj/Fr4ij9xTPZ1O8+BLqaddYb8iLCKcYnROa
	 X1L5c+04LnQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA07C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120593363.31715.8304760324512015862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f36759d396e453e49394ad5005d3a427de750c941d94bd5bdf5ddcabbeb320
Date: Wed, 05 Mar 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741205933
