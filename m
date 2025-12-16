Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219E4346E41
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765888434; cv=none; b=CM8La/JwuutPMod8ybAWeERWzMOVZ3OufJHH5OJrG53Z5uptJ7wg8OiGHt+8Dtph5D+OFkXQ4C9KmGp+h3qkLnLiqT8s6rab2e6NKZeXh1DBKDeHZkXvw4ODNILd4eOIjkxuiV/yGdXSWzgM2tfenWTY+jekFPLfmqIbNyRRj4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765888434; c=relaxed/simple;
	bh=rJHMrOMPuTSFJZF15jksgRSfazf5+wwoZf7vNcg+5aw=;
	h=To:Subject:From:Message-Id:Date; b=sn7bhOIwtxGDy3Ji7SS5ZurxEQtQCdaX8PvaLKUd92gODX09HvK9wOl13BzAZj0nu0iORkBJMzrbcJ2Jk4kIqSr+svv3ThTCrfrmosgddUPixfpxTY9N54lLlMZHNtcpZMlnM+inyXyhtn6KnVdT49XCP4UvwlX7FHtgQODTeEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jo0nyp50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jo0nyp50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A16C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765888433;
	bh=rJHMrOMPuTSFJZF15jksgRSfazf5+wwoZf7vNcg+5aw=;
	h=To:Subject:From:Date:From;
	b=jo0nyp504e9qmBdAtPdMkLATtle/V/391YRrA1H7WBVjDUlttQi445nIitHE1gB6L
	 oyUxBtOzZLNXqx+aq48Lcao96PPXjIALRt7+WlXA+AH5Q2G6f2NhwlWYP6qxNhto6l
	 /iOWaZcwr7TALiWhDtPhiEeQyETX53/LvTbMtvmj9Z00JkW28fNEAr8MYqk0ECHves
	 QIrSLoi+VN7zGAWfAiGrZyiB/RdRe5l0cW8DN2ZTXQh2KwhYrAC04yMbKpP2p2Hv5C
	 ISQhxalXKMOSdIqQr9joUxMOFf0bIJEJDONfjHUMCUyYqgBk0y3E+bIU0OZ0S2kYCM
	 7Bju9YFWmJsdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91576D5E144
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588843358.31185.10379969096333137716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41e260a408cf701e711558b810e6a2fe7a78c731508250bf809528bc69111c2
Date: Tue, 16 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765888433
