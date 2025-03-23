Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EE81487D1
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742765994; cv=none; b=c2xylP2ztHd0FD+xg++RYSHbwTyZodvylD3Oc2jrJ9RiSNx4qasvBMbKXX7uEyotFPYa5k2SFwInJj0QrYz5clV1Y1fQ6ZRe4ykCApq8oTuuoyKsh+KEOrwnNbgs5ODSFIzZEMisLM7ektc0m5SjtvesOBN8GE4KNtMu/3Kx5OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742765994; c=relaxed/simple;
	bh=Khj88YGo89wj+OcXFbiLsqoNdp2FKmaGSSoBKiklkFY=;
	h=To:Subject:From:Message-Id:Date; b=TpZfpKSZCe1pD6wxHtMPmEL+yfsYsPrFqoij5rRadhuZ97sj69fdTzGORc3DNjJ9TS3bSZzyOi2geXz1vu731+bgGg3U8DSg2luSkYPuPUj9SRdqEXUSHl7bo/1I640LThl3Rr2CTT3U4k8wjrbSrq3vd5ReP7QNDDag1MpH1fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvZtC3Hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvZtC3Hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CDFC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742765993;
	bh=Khj88YGo89wj+OcXFbiLsqoNdp2FKmaGSSoBKiklkFY=;
	h=To:Subject:From:Date:From;
	b=dvZtC3HfDDEsvZI/VtR65f2qu/BFv/G7aXAlQBjRNZ07FaJr/DtVefvHGczZKgEEv
	 +poZeZkiQt6JeH8pH1n7YzXPfzvyJs7ZB3iJk1FTlHFeAF6s4uyrIwZkrdylSoVYTx
	 Ybn/2Xb95UpOgMKfRvx9eCUVLRx/3jTJ2IajIFE3AMsTC/ZgITTZyUQcz4qP69ClyT
	 vgNJAGNe8nhXuLJGifeMJEwlERMVt/l1hEujmudX+d+1VOJ1wWMYookrJvPGOZ0P02
	 y0cGVdUOq6g+3/wC5Cll/beDRDvY/g1BA0YrRcemCtswU14zRpE937EECWYxGJfdkz
	 gBL86/SCb0DDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B2C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276599359.20628.10823044097247965279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02f19e97980bfc861bef9ecab955cab57a240d07d182babd1050db5f23109d1
Date: Sun, 23 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742765993
