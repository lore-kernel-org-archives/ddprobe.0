Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4572B427FAC
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784060314; cv=none; b=dHr/KfRFCakcGRWQkY1CeSsSP7TV/lHEuWG1tQTxSeFJPz/1VGogF91X7kIh/VFBlaRTif9SyQH1BT4oWp1oGtwAK9AuMho6R5I6gPCLRO8PScTijwfJWRa8YtxfR+0Y+Q0ovVQUQ4pU8m28/yM2dezNtl3Z8U+cv2b1m2GyLkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784060314; c=relaxed/simple;
	bh=GyRk5hg28nEP3m3N/wL1OOxkfkpf3f/6DyvzRFuOlOE=;
	h=To:Subject:From:Message-Id:Date; b=L2E5CVzXME2OBq5665ClGdtpNCnoWVCo+0YvpBjOYasOih11vHNtLyHr5euMDt3kVM7rHNmk4JKDiYjMsggGAi3KaYPIQcR64cl6N64vJv2oXv6pFWRpfcVRWRPrIjztmtXj7j+IG20ECOPkCkwqfLHYQ5rsi3+FDgDbBh13MqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmeYCx2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmeYCx2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1384C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784060313;
	bh=GyRk5hg28nEP3m3N/wL1OOxkfkpf3f/6DyvzRFuOlOE=;
	h=To:Subject:From:Date:From;
	b=DmeYCx2HrlXgKBMHGQNaszvLqxR+HQKRHvFB0TU6HysZL4Jf4D3QWjHslEGRw75qy
	 o1WaxPbC6CU9lVBGgiOV69o/1u4ui3m5zzeMDtjq3uKZX2F+oj4F3CvnXtfTxiQViT
	 r95daB3P0ZKF4p16T3IqzdekZU0YrR+JvF8M4geJ/ccKEI4gyx53AWZ5XDLs7Tcukk
	 dHJtykhfmND/TpzBf7lmeZXLdnMbgeh2ZgyQ4m2FQTm831jP677flpHVZfHI1hn5J1
	 kAXu9en99nWhzJKBg0YV9yJp5QGYCFnnMA34SnK5LCQPP0O7Aji4UrIujC+dV4uq+B
	 C6PTKrBGSzApQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE106C44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406031370.1493.18289559256864888317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772b1da864b3aaf25a02ba0dd95b7ea6f93a1152376aab9070201d74c22e6cd3
Date: Tue, 14 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784060313
