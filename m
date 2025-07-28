Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BFA111A8
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753670395; cv=none; b=if1ye7yNiPB46tvxs5I1IddzvBVj3W5u1Gg+hoXRf6iEcP9xsgG6vwnlTIu/A3xr45FXLFIZQGkgd9j/5GJu6psrK+b3S9FhT98QXZS971nmSCbFvswA3r2FKiQNznu6VBS92NGzVGhiCPVSfNVwGuXt3hH+/PrJZM5f13fWAMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753670395; c=relaxed/simple;
	bh=9AiDWvu6nSxUeCJL/LJeaJZm3zh19peHmwufDQfFWng=;
	h=To:Subject:From:Message-Id:Date; b=szNeU8UvaD/R8tTOC8y944/Sla0IaKFEbNVPcAyEGPJHz8a5XlDXrLRAT/SjJQV+793wMBs5YrrTvZ0EhKVKr+ZQkEE5/asKbgkERcFoy3LmiSccbsZyJflta6Ge0eCSrxVSUJ4vm+zfk9Ty5y9Q9NNcc+IhlvsIcNeNH/01xfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGpaVdCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGpaVdCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753670393;
	bh=9AiDWvu6nSxUeCJL/LJeaJZm3zh19peHmwufDQfFWng=;
	h=To:Subject:From:Date:From;
	b=RGpaVdCYPu/W6ebxU29i3ohrd5Y7HlQEQsiwHXgN1KphsFoqxT3r4j9VHYGEOFLL6
	 Vrkn3CGDe985lJ2UNpFeDHDtSQcvSo5YFjQN332yMoSxu89tyuXSF99if0xe7P3tJ9
	 9Sl7/wxue2U3oEfK/XWqJSk0PxMr5H6BMT3uWVSvMzrR2wziw+R50I0Pssqhd7rgBH
	 ZfoqHR+HKDfEdeio4QqcW3BixizNjg0Bfe+sH4JJYcBEHq+8gmks4rC5vhAIyyIgbV
	 vinnLljNQfxuoUyFUXlVQlABFQnBtHEa+HHmflywbX2qKp5alG/qcugzZ2D2VvU1m1
	 Se3jY2pXqKGpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D48C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367039357.24050.17711964099711438215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1e217640ef0eb22dc5d5cbc978e9458f6b5707ac35d3ef86ed57df12c12cb4
Date: Mon, 28 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753670393
