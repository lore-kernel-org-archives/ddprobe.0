Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C63021C18D
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746134395; cv=none; b=B+sSAQRfMeX3tDhVF2t9XB+ohJa+blrMYYeCYgvG888bpPnzANCMmsCjXp/SjSRIK9Gu92dCWlX0UoRait2P+cryKOByF6ErtoHC8XdzYO/bLo2GZJbUl11kykDGm2uQjyAwfoOvEl+pkj5Q+yAkW98CgHRepyNksm6ySX7VxZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746134395; c=relaxed/simple;
	bh=zS4jca7gqQjriUPOkkda/k9m8qOco0vvi504OGuQ+Ag=;
	h=To:Subject:From:Message-Id:Date; b=Yd50FJeix+TeTK1dp1st6+FmHe9bBAKdlOJUrwf4jMFuFGervAThe0pELRND7O6kbq1Sf7AU7cO+WMZ41sVO9nQFisr0yMUTbmAo6yseN5sh+az3GMJDNsBPjkRivrpqcO4P7zMLItSKtS8HOJGa/F7p4LnW450M+cZKwCWfFcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkzeXGKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkzeXGKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED51C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746134393;
	bh=zS4jca7gqQjriUPOkkda/k9m8qOco0vvi504OGuQ+Ag=;
	h=To:Subject:From:Date:From;
	b=hkzeXGKCp8+zQAy051OVqZ+d35Hh77FoU22sjd/SKqd8tOeJRie6g99RA+d28k9/C
	 mSvxZyspXVyl52hl5FyoOH5mwXrKurJxcyLfC8qoV5Hv4pMsuZJFuyrUQGNbqVR860
	 TpK5xZHT9hE6KRA3Hm6UDndXgcCqnJS4UE3hoKGVZLG1sncNz5ytKOslPrqprvTkvh
	 QJzUm4lFpvtlAMJnOsnKPHiiHrZ+y26Qi3KVkDV1x0ZtsXMAqrrg1Fs8AWYJ1elCVY
	 wNgEiBWO370vKnyrdM6snuvRJp3rpvGf1lYBK6L+y+6E8iLYT+76AFG4fTyy2Fm748
	 Exi6yve0lXo0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE89C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613439357.28326.2460378593442917849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18cc7cd1f5409abc17ff4381da3e36a781f2fce927245ef5b6a59768ba3b1b2d
Date: Thu, 01 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746134393
