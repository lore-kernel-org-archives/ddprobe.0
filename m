Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40739137930
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765245774; cv=none; b=F7vxguNsFjh01sthIx9tCHvqPb2FMFYfBP3l2Zc6AMFjb55AXC/U/lQvvAAKrQakHHcLk49yAivEm1U2CBeeMcPb/kQDe4gYqjtZzN3sWwAIyUn3kASpdIWzG0D79CuFCAE+DaTSOuvDrFl618rep5kWzX1RUUPKWQXMgZKKKIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765245774; c=relaxed/simple;
	bh=saEggPQwuEhOHYFNxgNCOxtUNejjmNWeCisawu0T0EQ=;
	h=To:Subject:From:Message-Id:Date; b=nZd1GKJG6gJaA/58aF22Cpoe8/Go6wlISuhSndaoONmD7izmDOGrt1/Jxa+10/W1gcsRMz3mPSCc6Fw3vtQdyn1/u9yTHqIRQC6uZZoWWwLEiIqlxUpgVwUMFGxGz2gkDQESnj79xq/LTTmjCwP6jPmy8OK8D4uDbeEAfTowKIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okuF9REO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okuF9REO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF9CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765245773;
	bh=saEggPQwuEhOHYFNxgNCOxtUNejjmNWeCisawu0T0EQ=;
	h=To:Subject:From:Date:From;
	b=okuF9REON4VaA/sZaMbszIDTMFYqKANHrFrfqIOFDXHk56B1YVo3sjsgGuT+nAbqB
	 dFkvFRIOrZFiN9AfMMngwlAT0WX/yLCAr5ZolgkdO7kH/pDjefecc9L/6yzlt6HJ0H
	 6nYH9RlXfXqutrFtnjao2EhD5/+5SWkTx1osEx7JnexXn+B3KH0vDnXW0i0KZefkXW
	 MilV5pD4amub9B8gtHyoJ1yCx6a4kWu30Ezz5l2XZRW3HmuGnuc6j3MgKj7AnrcvMH
	 ueKH2SKlBvnjj8QBvXoHZFb0Aj4m5xptrR5VL70hWyaGiX76GXBQfjvrIDV8Cl89/7
	 oz4B7+TdIZ3gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9755FD3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524577358.2932.8601833066946613314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119d7bb2b33ff5552d0e23e9971df9f49a1e60cc5eeb116d999a3ccd8481f690
Date: Tue, 09 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765245773
