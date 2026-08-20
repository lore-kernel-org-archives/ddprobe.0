Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F2438012
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787226034; cv=none; b=nZ6JEy3hedThwGv6lXQh0TVof5gD+mUGi09QwyN1ipFFrZGVjkPWcV8VDsJxD05mI/00IJAIRXrnE+X3OCDdWr6nbDxfgfURNVXIsEsJPrb/n2wrFhu3feIO9I0gwGg9qeSGw3Yt2Leewi8OastFBuw+jpykQqlbUoLo4zr+1f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787226034; c=relaxed/simple;
	bh=gJT60f5T+OzE7na9C6n3JPKeC+xJkGMai/fNRxluMWQ=;
	h=To:Subject:From:Message-Id:Date; b=BB5vNhI/iJVbhFtWhmVcKKIcAHcpdQwXEnIfnxmU/scaURJFj8FpjGvHJPg15QlQWOIdex86Pb0IHPannP0zuYMc9o+CWHn44qPjGl0EvHn0Vsna0icu/cNcNenLHiHKnufl2BzGhcrlpqr2ToUUiTAcWc0PQPdFO7qiUKm6seY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D42g0qp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D42g0qp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA578C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787226033;
	bh=gJT60f5T+OzE7na9C6n3JPKeC+xJkGMai/fNRxluMWQ=;
	h=To:Subject:From:Date:From;
	b=D42g0qp+wj6tGKtq4J20PfSUzbFT70zpgCKW5QXdD8ceQTkz7sFyyy1Ng9YBKgPt1
	 OSjctiIdIG1OhbqWWu03etvQpRkQ4u2ySwVkuX4HNbVroX1uFLEiF8swEekCxl66TG
	 7twdPWip+nzP7E03BjWGIuzVRr8o3btEevhCj8OJHEFJ6wEk2369XSQHhIsNk6jyzG
	 z1KXVUvDatd+VTCUQWLO+YR/FI7xUZb4wKasFOjtwjgo2bfD+7EKl5yi3Vw4sm4A84
	 K1BP0sfON01ipxnz1J9kZltyIf7IthmXVmHv4KHhDiai+Z785BljlSlpJbmD2WP+fK
	 mp9NvxMYSqotg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0600C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722603368.8616.5050468133511468663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26dc3b44bfccc6e7b735c52d6d2e8d1bc9e00bc501b45c6e00500af733c5d21
Date: Thu, 20 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787226033
