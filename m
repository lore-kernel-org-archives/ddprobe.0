Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82DCF36B934
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787390434; cv=none; b=nhNdHeT56n12bbAZiaCoIWKmDrFf3WSSDtO/KxZfq5HML9VfCmrL8BQtBEm7ub0S7pyv32/hEmf6QbZi8ZH9XONB/0aGVbw1Y0+ZLrOJJyBJ8jC1OefBD2NIneuZKJO8Ke6bZLVyjefTMEcb3EG/z1DJ0tRGUpV1+FTA2mRk0Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787390434; c=relaxed/simple;
	bh=daseHnbam/YLdz3WZISDlIx134uR+MQDhxj7G8l4Iq8=;
	h=To:Subject:From:Message-Id:Date; b=MOblNxRXtX1cCpntMwM7oZZ0u8LEbKgolsU8gSdy/gLzMegH+4A26g0PcKRK/73vucn523jAP7F2SISvRkAXtRfJKk58oMGKjlqJ7sj3i4CtixZrcDVACgTwhyUAxSJzE87UUqVaax3G9PAcwCCoo4L2oL7qpzveETsssLL1Ppo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDqv6GBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDqv6GBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23DEC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787390433;
	bh=daseHnbam/YLdz3WZISDlIx134uR+MQDhxj7G8l4Iq8=;
	h=To:Subject:From:Date:From;
	b=mDqv6GBgOwwMdGf8iONIA8TGCNMMk5e760ZU0AdTnDgbLtYSn4vnAvC1WU2Yut68n
	 5K5AWYywDB953radQhLj2ZqhKYk3+Xv/aKkbujA2/UfTmAGNRgB45zHZMEvHMCFcXh
	 iNzpfX7MYJ6cPTMNGgGwnByfUUrow2yRaF8gVRGGAIQP4VDKzbNH6IL3vn7x3EEmQS
	 3/Jx21yRt6EDZIlmsrNhJFaVgMhPQrR1TeJmae0IJEsQyfrv8jNBYaiSDjtul4E8WD
	 pJ7EqsG/qAy1tTcM6NcWRyrj4hqBHCJViA+cWq8TohGCkFF8PY4u57viIhuO5kI3Uu
	 084y1BGYXsSrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B474BC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739043371.23216.11164424845218864766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c31db7d6e3f27ea878c1157bd76c628d1926c0bcee7da14a1ed656e04649a71
Date: Sat, 22 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787390433
