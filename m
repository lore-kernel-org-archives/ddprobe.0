Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5B618EAB
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757209195; cv=none; b=bA6vPqXlkJR3RulOgdSHo8WzIa+qAuKrNXiQPLHfmXDyPA5V2JniGsqoxIvDQfd1bM5+A9rv9IE3KJgWVUlmpcogBpNyt20QixLvP3F+v0iGjPMdzl8rTzc4dCMuSUdBsRktGVsWXvRsNXnv9DA4e9gcKwzkDR3IjjiS373wchk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757209195; c=relaxed/simple;
	bh=fiB3l/auO/dUTwYK1cE0+3uDEjdysYjqoL6gi34TZBI=;
	h=To:Subject:From:Message-Id:Date; b=jFuZrcdhgHwDj5aIj4XUyCPd0QXzp4s1ZeIGby6SFkeCXTqMPu5GFPTzWiFke1JFGnKtgewfgWbcAtGVGg76qr9vKANHAtvI+QoktErNlLce/qRaxmgv1903eDyutARt7FOAE5nKw9ug2nYIQB+gYGBF2vxbGEVtyji+8DtzhH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fk64wxGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fk64wxGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757209193;
	bh=fiB3l/auO/dUTwYK1cE0+3uDEjdysYjqoL6gi34TZBI=;
	h=To:Subject:From:Date:From;
	b=Fk64wxGlpUyLWqofPgLYdDhbWhHfYzv/xBCmU77tLP0S1J+BRmTwlrFKa3fKR7pFw
	 E/KH4vnwflAUIzcU9muEZuKUfvjTE3MjcSgbZqau1AUUToC4XTBsL2V1VF5M5uN5YB
	 Ou4OqmAzscswXOkN18soFaV4JYpsVVmXosWwPZrRerljzuOU07YHbcWTrXVsXTwXz0
	 HWfkTuC3RABVhkv5vlHRjlCwl/DFdJRs68ddKeRxIHQf7UBGyYMJWh4ZmVefFMLxtY
	 mVYDQ/Q0L40/52Y/Tt0W4QJ9+5YiSOvveDgaKRbYbgzkERkfPDlgNInoEr62pd/dZU
	 ICwByIMLdBfuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F487CAC582
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720919357.14801.12501169985103604085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1a462f5b191dfd2a00a4cb43ccf47bda53dc5c81a17b6be6ac11a993ac55e3
Date: Sun, 07 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757209193
