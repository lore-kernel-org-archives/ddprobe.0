Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3202823312A
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733808354; cv=none; b=mBUgKyfDrLD2nNMEDP7cqAuMMuPMpnvNhr9Y7aj0orP4IC1EZh0/lJifhSN8rFnQTgA69l/K+AChGPYQJPOqBYYfiPOqp+h8gZo2ssJHIc7fxbPn5arEWgFtLXebBJHse5h4ZPH1bH1iDlAqdHI0oFeKlX+BAj3NIt6OVke70Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733808354; c=relaxed/simple;
	bh=dIWvvE1nhE8VEmWKSXrlloVNWip3OUqIm+BAlHDm7SI=;
	h=To:Subject:From:Message-Id:Date; b=YOHJDASbO2SauWDNkjtk1GHTZ+6cTJDpvyvHB3H14wBDlmszgmQyGqsmLJ80tbA1hdZouWloFKg+N4uOruYGksSyc4OXwIgX7St+OR2F8HbpCYjrj9U4ufuovv8CKEdLYXa70OU2KmkxJwX36puGkerPMousZbpOWTv9jlaKyyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUhwOCmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUhwOCmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE76FC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733808353;
	bh=dIWvvE1nhE8VEmWKSXrlloVNWip3OUqIm+BAlHDm7SI=;
	h=To:Subject:From:Date:From;
	b=QUhwOCmZGNvEse2/W3WXlp5Iqep1eexwkrZ3nm7J9pyUF+enW6x9TpHiPf6O+4TtN
	 B022Va4HdOxPw/khBfkP2UcIHpdHPoWvLBVt9VVCZg1giWjNv0pKdz1rBix1t0SPKP
	 tjMNnqhrz6T2t2Ju8LP2mW8eg3xmKrdXiLiiqCqdK1myKr/y/9c7FKo0mWKEyXxq5y
	 qIM2N+hbnJKeH9LfKphNnbHAPI/rYn7diV5IYvLTl8Zd2o+44DEAAinHqXZC2hkD1Y
	 OODE8DD1xWWoQchSrnNSAq6Dw9xrKTXkv2cAyczgdnshju/ogTCTz7avzgX0rWgsEa
	 9x+ud8j2fgeuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FC5E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173380835361.21607.1560947187150152154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5932e9f0ceb13bdfa603e693a42a0508ede9b24219bb25f4263b24d84e34285
Date: Tue, 10 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733808353
