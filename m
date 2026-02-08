Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF7C1C3C1F
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770575634; cv=none; b=uAl6R9fS9vBnqfhn5VVwg8m4unCthQNmoAqaspwkNh/lTY42S2uSuub4sSrVzJeiCoaNSkwNQYXs11pFkL2g46QC09n1Md4gpwBJOaww9Nk0L3hxtRQvF77tipEQgIJT3C39Xfo+ApG5c5meVaYFbaFqR1Zc6c4zyI/XXVVrDT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770575634; c=relaxed/simple;
	bh=Hm/Eam6Wle07et2YDjDZm90x8eD/B2V4ZyDjpXD+M5o=;
	h=To:Subject:From:Message-Id:Date; b=gjVdz0qT6CwY/TBEISWoab/5PD7VPk39xjUkL5wkJ1rKIESPb+xnffko2BksDhMse+HbCpkJaeeWAezjYuBSTY9uAxsOqhZQF9mgnFo+eos8ORedkObBI5sBBGYoLOEZzNR2eKCqtyS4zuTLX0+rWo4CKxAt+q2HEko8sJJ6qOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyWIxbUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyWIxbUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1D8C19421
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770575633;
	bh=Hm/Eam6Wle07et2YDjDZm90x8eD/B2V4ZyDjpXD+M5o=;
	h=To:Subject:From:Date:From;
	b=SyWIxbUJiYjOnmDqRR4LR/5yNr9b4k0KGIBkTciyNDCMvKMZq5pRUUAGC/D0bwVoW
	 im88nMwFVVbZ5Z/GdNmRi1E3sU5UOmceiGvHqzzP2LAX3ENoDeuAPuQKJ9qjGEoX5D
	 KYTwU04sVErTeX/eqcE+O8vsUs5yGzoFisayS5glCAJTFDxde1B3ntFLDQJlEe/qtk
	 8MgcRjN4mYRPBTG3gRjFBe5OI4JclBUMEIAUwLRP+31vsKEk+M1HZtaQxT2JIr5+A+
	 aZ8/mf7/iizMHTegOjAvfI2pUOCZMylxtiUbM9I/HemEGJwpBYxmBLdHgXjeML/LjV
	 SJlNAvnj3kbTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99568EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057563361.22420.11123544215548481567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607415e93ea39d89ab912f9c4bc2bc5bbbd28e1555c90ada6d14d29c37c2aa96
Date: Sun, 08 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770575633
