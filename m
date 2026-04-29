Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2269C3FAE10
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777466854; cv=none; b=gmklKi0WoF17DcO4VsV0pv1G91YR+wrQjQgjkcXJZNMi2wroiGhupLyT7AAvlKNN63XP7Fm7WNk3pjCZTnYLBnvF0Vr76is7i4p9KAftQ9vbRqrOfuUtpRV3B8fSTs8ekQT7bbYtD4BlRs52T+keYwEpc2ya19JkKfeHI1SJZ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777466854; c=relaxed/simple;
	bh=kCdRDK/bZ/Uu6qq77PxL11MRqyf/qYtUceheD/zyud0=;
	h=To:Subject:From:Message-Id:Date; b=EgGCfvs1oLR5WXgdTrufeubNSouXk3miBe0OMe0B3NRxcACrUW6K3LvoSyUkXSDKzDqwMl2PQqZ+WzNPB9T2Ux3kd6Z+p17YM7+AWNknlVnIcaD63BqdpK99+sXJzmfbymQlW5Jg4NXSlJuUh/nGK4KQuJm+COyYCoyJAP5lmIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgC7xNF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgC7xNF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF164C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777466853;
	bh=kCdRDK/bZ/Uu6qq77PxL11MRqyf/qYtUceheD/zyud0=;
	h=To:Subject:From:Date:From;
	b=GgC7xNF9RqtNWcWaKBkmNy5Yk8OURJjNicHEPTe5oLXZh62KnxvyQikVAfBRrUShh
	 VvPmAY9OBarKOtEsIwGWejHK3biTpQmswMIGgTiLOh3zof2y6lKKs92PZSzdDk4X6s
	 5RpUgxHKnKJ07geq/Ys9zSX2yilhbkluCQLqEnqirF2XbciaCXkTa0bdnaQSQfJ1de
	 x3FcEgKbqrurxWCh6qVKjIak5q+fQ95vvlToEFpNCXLysbyCR4UFhbL4xiHU36ghlh
	 K5jPNP4toYqabQrLtPCD9OWr2A/VAfirJCBj8Ktdt6m5HGmHRhgOew3Y64OZz1P+BW
	 dPMkLx+gXxZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4FAFF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746685368.2758.1895173617971251008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820f21d7fc4a9b7ec970651906d5911a11806843a8c38a435071914cc8817809
Date: Wed, 29 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777466853
