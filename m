Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C115418A47
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784068114; cv=none; b=X/387+Mkjm/7FLFSOlsHeE0qqXDWB4Y55keEW92QKrLRCwTfE9lgFTnwvOu31dbmfvmGm+SYkpoPYFdudrXYCKFrgQbHnTuY9jwZoqh5yC+G7K4JBuSaB/16R4ks/DYAUyZsX19pHZJP1TwOqOCaWSNb9EbxWZ6aukoSIyKVxqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784068114; c=relaxed/simple;
	bh=mLPK2VLoJWDQFeU+SKVWGmYNRuSgW+t6lnmwF0IYTnU=;
	h=To:Subject:From:Message-Id:Date; b=bxNg4Lj7vYAfma2dMNac/jlvKypjy0zj+5AZshcVPaHxfaKegWJp4pnNL5AM/iNugJIb8uz/LlzriNjJtKEUK6B4kXyTCBh/55WkFZ75oAR/d/m026al2hGuyuq5CEYGEYNFhfnvTkZvguPGPD/BK9llviAcyo5bnmfEC0Z7igo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oG17rRRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oG17rRRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF04CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784068113;
	bh=mLPK2VLoJWDQFeU+SKVWGmYNRuSgW+t6lnmwF0IYTnU=;
	h=To:Subject:From:Date:From;
	b=oG17rRRaghfIdqHsBUF7fZTKpYysGkxziSR4NxquJcViXGADGePTveCJGZga4PfkP
	 6N3pRdkRPx7fRVQ8CeKPNu9CIvBe7RDR13S+K4aU3o4/ahpdlcoFjO3/70WHKim644
	 kLhvCh47Jjvttm/0G6tIh5EA+uNcW0KiF2aJDLb82wx51H9MTOGh8lj2HGYziDS7ro
	 hqwZLOq6DDCzXQ9QGAbGJgGcbMWGUQ8UDGorZ2J4FX31Y4F+sh9N8QQ8Rxo9DGlfAS
	 XYy/5yJwerLGJ1JSQiYOaPRu6GywYVoh/4H3OzJl5aqPcAoHQkKHesZY75qU+a38TL
	 bTXNQyDm42uxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB83BC44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406811369.31303.17981420139009829563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b694d4f07e6d0328b79bf08967adcbb4e23645f3d94633e514508fa988caf02
Date: Tue, 14 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784068113
