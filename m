Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4122E146D5A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782521914; cv=none; b=rZRsf8O+A5KODtMAjSaEwTDoW3b6SvK5WMTCjlMZPxVRXFCIqoyS17+AZxu9PKOGVfDLPhKmjk3e7YN1O5PFRwN5miilMPFUYCBIEDgQAbo9F6CsDpXtP+RZF2BVxbFZcQ+AOaMLPOTwrovURAJhBvInrEgOny9IqaiqF9kFRTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782521914; c=relaxed/simple;
	bh=BQISMCaB0E5FCB/UNMRDmtbijwC4+jOjyy20e0EBq98=;
	h=To:Subject:From:Message-Id:Date; b=aFX6mJQELBRWmBrtAZ7mSVqZBaF+3SUI77NbbIq5UL6+4U119JqoWkXqeZwRXbHvjxn8Cpcqy4T3qIpsalrMiR8Y+xrPElIu7hPCuWoeXl6f6zweT6aA+dQMNYh8ySlbe2GFAKhS4Rvh5jNNM5tYfPTnrOVO9QJZ3oMO7iAolGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/MHAWsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/MHAWsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFE1C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782521913;
	bh=BQISMCaB0E5FCB/UNMRDmtbijwC4+jOjyy20e0EBq98=;
	h=To:Subject:From:Date:From;
	b=t/MHAWsj70nC/IPWC6fFK/+scU6ZKBs0F5OzM6EeoSHiAKYqFz2l8/gcfeTAra1e1
	 eM4fXMbcOwcxLKBkYHnmkH10fH9e+sh64o/cz6tb7zBqPRdudJYT2BRQLvdQ32BNxW
	 idgbr9BGDIDDpJejlVqfNzoScsaFCfot9LpzCDYD6Q2E8rJ61F/HH6M2Ry/iNsKnlU
	 mNwCMK7wX7cJZ1epnA93+xGUPZGJuozQRko77lo9c7YA8kf6pBseCzN3avzF6E9Y3S
	 lQ5qUxoQy+ZODR7QWx35/UIu+zUxfbTIn09OPojJQwxGem/sTI/f39Rq+iLbkEa8zQ
	 SDPWPzTn0f2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5953C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252191368.13282.16492497599583306782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9540da111808a505f649ef122bda6eda0e5ca040b42db3763c29d34fe00a999a
Date: Sat, 27 Jun 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782521913
