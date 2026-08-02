Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E89532C8B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785709834; cv=none; b=oOoZvG9e7OHuaqF8qcenTq6NwECwKrSOfyesxjnNFPb8QBQ3FoULTA3QSo6fUa+5Nnx3hoP6Xm/PLbe3f6u+FliHc4GdNk5PcWMQzMB2bS624i/6ewCV0uQZ53IKtqM4J0IBPWPoPkOaJcqU0uYGGag6BDGqo4hC0OdUT1zQIPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785709834; c=relaxed/simple;
	bh=OBMogHbph7R+849N1uzxPzACLJaNXEmOT/7s/Q1KNco=;
	h=To:Subject:From:Message-Id:Date; b=FpgHa+Q9+Nu/Rwy5Esc3B+XKmvxly4LTQailfH6cwLWmvbmb2MPhebxN0xDA5lE6ljm+O89EjF/oq9IFStXU8ac/ixPsQ3J8GupFVD/LpTHeGJcH6CSDUJl0kU7I5V0Ib1c3ewskypg6bHGhBgoUJzcrpxvtpbf/Af9D8dN72jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZfb4vmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZfb4vmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45E2C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785709833;
	bh=OBMogHbph7R+849N1uzxPzACLJaNXEmOT/7s/Q1KNco=;
	h=To:Subject:From:Date:From;
	b=iZfb4vmf9YehIAuc7B5MImmy2+yvwesvwdtWN3mvItgI65IGFo9UgOBdPW9aWFQ7T
	 Ds/uzFPNHH8En2Jo+fDGnnv/ZNdVaNaDx31wsNb/TvPyngpUfOxRiQWQ8Au+YHapeo
	 HvzJbjj57UFlXvVe9WsRYMHPFKyYHheHTwtS9bqCE0+17zbnyv07Jw+xJ7LBIKMTe9
	 Q7R/evi2ZkNVCZbrH43PZgp+ovL5AW75hJnDg4HKY+BFnPrUhxOg3zqjUAELR6hj/k
	 78yog8g8AbcpTGJ80kgkrCCIk4Wd+rB8Y17z43c4CjVaeXxllvr0ZEkSUQZqEmUSU9
	 NCMvgg81N6Luw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0D5C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570983368.29214.8728863138767688287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d195a322ae865df4959ecae518e0e602bb2fc6204c31ae7ffb907a0a0c41b59
Date: Sun, 02 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785709833
