Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309D517557E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785640234; cv=none; b=AqHgDJIOL5VxlEFS8tENG3Ej2ghz52H2nGZ/8aalE+wfSkQkC2j3ylwzpg1toKvnuNAeheuzdho3shFUuwQsj3rxrut3WIobAbCFgPbDKekW+uIf0ui1ZuRI8xq523eI4+6OkzbX3UVjbtGjKJvNDPrNIuSqrXG5Y1CKdKtcEE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785640234; c=relaxed/simple;
	bh=gFF1gqMcCQIWpvPEnZZTKAL5trP+j9P3S+VrUDvoDsA=;
	h=To:Subject:From:Message-Id:Date; b=MFxvTjvVU7npW6P+1kCmv90obJSCJGhttLBS81p03/CIEO+en/kXRSiVeJSRG5d/UCEPVFH+nmxjCt2IIeBrjo6ykut/KINcA5Za2SWiJujLUqOaNcUVQS7W1dI5N7BUg/XNAosCzO4Ivac3GenbSDhYf+EcC6iCoxQOOaYn5hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZ81wSc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZ81wSc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EA6C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785640233;
	bh=gFF1gqMcCQIWpvPEnZZTKAL5trP+j9P3S+VrUDvoDsA=;
	h=To:Subject:From:Date:From;
	b=oZ81wSc0ZCoWhdd+H79Zm03/p4fZnnpinCxMarB69eV/7EYE1n0l+QAwPQgfJLYen
	 ZPYTrJG7qIlMG72IlyJLyPaN6I5cayMFAOQO9+oFFl6JOnAt7s6Z09voEFHJ9Stf+V
	 IRWlzehwc4T+oucPQgpBqSOGBHdBCpJSr42axpS6RCbd8HbRdUI6816uGZH9/8JCmG
	 shvD3U7o9KtXoEp6rImPZt0+8vWi+k2avFi2rtlslKNK70TI7UCHUGrt08nqIsCjOV
	 8HWEg+TPQH5QL47iqOFAX8jLY81DjCcGJa8CdXngD1/00UQvTzOPfg8TZQnq0szsCH
	 3OrXdBNJt83EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9592C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564023368.18903.1836607181329955408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5365df7f284033e991871b805dc1dd47ca859fa69d513d3b81e330a7e179fcb3
Date: Sun, 02 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785640233
