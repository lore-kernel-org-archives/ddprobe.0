Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B23B2F5A22
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771368294; cv=none; b=Mtqll9e+2m7fznB3ZWsNjZ9pbmwWTvcduvDgz06QTfFm6gmFOwMZOKUSW3gzBQirH/YnuuOOE5aWN9AfiIBv5oIUbu+KJNlDOSxqJ/yJ3ygHUGKryDz4JeOsgs+uVxfdHF+CkUHreYD3dVBqdH9Ve3wpMPnO343d2WIwOS6PuwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771368294; c=relaxed/simple;
	bh=Lp2j24hBkv8KaZzzVswXr/Fvhm9TAPyRPo2jO2/n4L8=;
	h=To:Subject:From:Message-Id:Date; b=pyQQzm77G+XQ/pjeBLDqBzZ8Sln3Zx+lamzhUEMIUdwLTFRyTbtIzcgralwUkGiegcNkpKeFyoBs/ox3c1nmf7lQyp8BaLLdAzCF+k+jliMOWaoVg4AWgVbM2eP72t8uFFDXz8MuneXWkUljdBjYDSoFOypLNvA5odbJazONsG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4SeVnyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4SeVnyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48FDC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771368293;
	bh=Lp2j24hBkv8KaZzzVswXr/Fvhm9TAPyRPo2jO2/n4L8=;
	h=To:Subject:From:Date:From;
	b=O4SeVnyo/yn46eA4/iKcsW1Y1Q+5b7OFeZWCQ/S7+Qcf0tyVV3FrmkyCtUzjunWZy
	 QPDYpcBzb4cVgKCoVZdiMmisFunV2scyTYaxnvwrir8ciLX1bxboijLzAGEs32nrxj
	 wZZ8l1w4MgbRzxjGRQLcSKuJMCtNA5gGE3HefPPEAE+4WQ+CYYNp1gqGcdETuowN10
	 cJmBYmgTjPNsRhyPQhxsZ6oOe4IQ1KlSCcollIftMupH237QidPuxct89Bnob5sWXV
	 wGjPXx/usKea+mqeD04QPNK1hU+oMcJBm7gpzyD809g4rh++MhtG5udaHOYakoSDIG
	 v1c20aJNv01eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B53FE9A03E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136829362.9834.1067569548600732317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e84c1d1e1d791a8face710c472e129e3be9b53b6a0afa0986b7dd2bca01f6f
Date: Tue, 17 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771368293
