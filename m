Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8396FC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789258234; cv=none; b=c98+iFcM3ibpEHR8yvlKByNZJKrpwbbWecSYMn9w3UVFvtAlXTNU2fEqfiFg00rkIPxzWObsXKDwE8E+fCwLALT1wICPNkoIdbjQMO7ZGdz43qcXr5pTU/7mFA+H31iHmxeZK4Y6NsQSI6lRFYbDZP4VZ64ztMt4QHh2c94M1bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789258234; c=relaxed/simple;
	bh=1iyNh00CeqjL2zemh0MTwiPvCf3UZ4ItcFMN8j6UB3Y=;
	h=To:Subject:From:Message-Id:Date; b=eLDZ+2IL6kuwHNpH7MrorD9GP9uPK/pB1bM+PTr8ksmjAn2YZAU0cZeBSaGm1n/Hp6xOEKZI32bgRT6ItdCFA4CnhKmLqC6lvUDGJBHPgpvzD9GPhLvygvJBpifYaKlaX5rBdRi6DwTHwYxYHWGqEY2Nllj5LZvFrqlIfmyCUFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSy9TT/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSy9TT/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED840C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789258234;
	bh=1iyNh00CeqjL2zemh0MTwiPvCf3UZ4ItcFMN8j6UB3Y=;
	h=To:Subject:From:Date:From;
	b=DSy9TT/A9BInPhc0RZzR/zc2TS/zZLpEsoh31RfXdDMY2C/bmbZqFmLWHG8qwf6P/
	 k0wrhWRsDA54AH3Au0A0vRcJaEhy38RQrxyNNxxJnzFVAODOUG2d7kOjfetEiNCAGB
	 1KVjxsVEv8LC6+golcUzcdWoMkEoepNRhENgHimKB8oGN1aWiGMn3dmQsJOZR3GKo7
	 aOi5UZ8HXvZHMrwha/BvW25cnXMO9W44Mc2S0NnLvk2u07KIglYbkHlNLB51+x8HTg
	 VosV4KKPw83NfJAofT1nd9nhfTH8RdLsvvOKrKo34+nclIuuu8b0T9oDCEu6noiWXg
	 n9zkokNQU3fdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9D1C88E53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925823373.15598.7821726224415267044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665e6bedd3e0fec92ea70a6b0769fcb3e74c60ad0bed760be36eee1ac119315e
Date: Sun, 13 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789258233
