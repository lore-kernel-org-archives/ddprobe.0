Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B102D47E8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759762194; cv=none; b=dLzfsJZyQoE/NMrzkMKoCvgyyJi9ghtn0Of2ig9EYAT+H6MrgMusrtJ/IW8I0N6vx4FuyZ9XIZhagaJOY3E0gmq5hfEMfAvlnskXXy38+qW3WLwC3STL6UJ8c9nnsPLK2kUu9P3T1IMv2+XCvfvQeWtfBgo4w2+OlXmUoptb2pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759762194; c=relaxed/simple;
	bh=SeRXC+FrznXYb4I6gWKlmkVE1KxCKA7xsq/UmE+xrIw=;
	h=To:Subject:From:Message-Id:Date; b=OIpc7gIice4cykwwr1+nN7Gkb3F3j8MvEv6RX+C98ROekcDxpmQCG7LFVW858bjv7RYk17SNyBWJv+1KFBncaZlxfphrm21QiRLKRnpTt9csOPYrQrVcbqGPnVoHPV+b2gkvOPZfaQOL9iGJ61VlM3vi7cAG6kNmVwhimWMaukQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONHxVcGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONHxVcGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E3C4CEFF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759762193;
	bh=SeRXC+FrznXYb4I6gWKlmkVE1KxCKA7xsq/UmE+xrIw=;
	h=To:Subject:From:Date:From;
	b=ONHxVcGhMYJkeIdT3MCo+BdYankw9mcWalumpVttslkh6vbuKYaDgIfON8GgDiTKg
	 Dtjb6dppIaAxBJT+2K/qJsnk8Ot5AdjFBDzGQA4E6i5Ac2C1ltN2E+dhmQpwImr2ki
	 yK6JBcT41knEaAuyhGLNLxdmzTEyrdSSopLb8ZP0QDDFrHn8egIUG3whvJ1uUuZDUD
	 HzPL2msWrrNE5qs/naoFhEoPBXutQ0uDNcGpeMJzNfBukio5HpY1jK6xDR6BW+4Yc6
	 QpUJRaEYx6P2ncMPQiQgxyGajQWCvIRBNN5ZyolDr/MZiJIvHvUI4+3ZEPmpVHo5C8
	 mTp09rV7gELyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9264BCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976219357.2463.15355394360495761677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82eb01ae031f8e96f10dacc40055d71b712fb3b6248a0d1cf4b2b92d4940851
Date: Mon, 06 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759762193
