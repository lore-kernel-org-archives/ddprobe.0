Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E641A42C4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749059994; cv=none; b=ReK89OQg41sCatKCUBHbcAIFhKiOQ11+iMeQ45v1cu0K+gh6wKxS9GbSKShZV6cuVoseDgu3gaY0fjjOfzc6IqmGHjO8yAEzqq4IWmYoUJXoSKETRZRM/AOSuxDHc/49eiDEs4HOPePdk9Bh3M1QZKUmsrX+57UXOPUeqL9Zo1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749059994; c=relaxed/simple;
	bh=hYRMa6upnSr421kqANZpcx6dxp1vE1bZoUUE3xFrHtU=;
	h=To:Subject:From:Message-Id:Date; b=DVuNoFpWP6cZTLELdTHhJ0OPjwV/AJLykV3QfC0+35zkhm2ywTtlTvP1a6v3M1j549Byg7qoRwL+q2c6Ai2svSO37IigE24y/Mi4omrNpMKdzPRZ+UYRC/4U715NZGJz9ELL6vtj1v/Df9ydYWrSy77VZPeTAKzNuT69dqyd284=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccL3RgFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccL3RgFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35FFC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749059993;
	bh=hYRMa6upnSr421kqANZpcx6dxp1vE1bZoUUE3xFrHtU=;
	h=To:Subject:From:Date:From;
	b=ccL3RgFfuKHVx//YMdGrwf9/9yDiILMWJ/tDznrN/cq0JmQHOYcjhQva/pNl2zqbV
	 fNfDbOiwV59+uTKi1HKIPHQuZ2e62q/t+txq8POv9fatvej3pN6Nr7tQs8VFkDCC0v
	 RdJcio8MMRZwGID8hnEptW0U6LN7O7jIE+0MmnXIOEybjgvkQ1wd5bO7NYS5fIEQMb
	 5LLVGICo+/fnPbfUrz/CBftkSSxzWrMdXUxVJQkDoCfGrWk1xrjwLSnXCU8LLyaRRx
	 uLoTNBH58COAtchhmaHZCBM7D0BXSeJLQsnIYnGw8vwqxsnj/Ma6gyEsA6e05Jhh9P
	 dVmsKRcn1N2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B9C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905999358.13485.8482889671347696514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b786ff54ebd9c1587bdcf9e0f0104d320798d1771231abb85b931cf4478a0cbc
Date: Wed, 04 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749059993
