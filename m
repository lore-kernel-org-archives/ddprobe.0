Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242C634A77D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777842454; cv=none; b=qUwRZ0sBvd2RcV9YcGzNRAcHf6Ci4qWrWSOBBzPqGMRoykj5+HHhrP06myGj3kDdvZ0uufzQfwzwkQr5DRpg2CgDhLfbjMyv4cOcP/QHemietd0hCxV7qXeMrQemkl+WX7WLOH9vtH/IKZYdcpCNJvk8DfzvVrtvv+wF6BlH/GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777842454; c=relaxed/simple;
	bh=eL8dwT/IQwSUcFkLmlu33Uxrb4jaA/npLbTYQxiV6Ns=;
	h=To:Subject:From:Message-Id:Date; b=tlb7s2rUfbd5zuHaJ/yAkopjw6r8CKYPC13VkeNwhYlx4/EOacROC2QtdRI9+cmR0pJs9txaY2g1q5DcQ9NWEN1aekQyxhuQmDA1Rc+oiDtoSkamRRLCNohvCqNDLfMmxO5iGg50WFqBJN9fHus60ne/6h9WhS7k1Ivmb39Wg0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCbUXt/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCbUXt/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA177C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777842453;
	bh=eL8dwT/IQwSUcFkLmlu33Uxrb4jaA/npLbTYQxiV6Ns=;
	h=To:Subject:From:Date:From;
	b=WCbUXt/xArzZBT+X3EVlUiGXzXIl1HrldDNDoDEnTRG1dwTQ4iU9tt5qFnTOYtSUW
	 SgNMNShz3osKBY4uFyRo+nj/Ts/fzM0CNINDAoMVcTCBShZiGL6UJ8sGrGbAR9PTvI
	 UN44pZ/1YUguD5p+ywAWLfB1lol5y42WtVDqMQ7EPd4TE0W3kwWszbU1pxN6fd2VnO
	 SAFdpxrrU8P0aRT2kP9lfrPtnLyboSSkt8tOhnfMQtnfEoVM7DO8GipCnbtbzpXZJb
	 W/sI4hvGQYXeCEmI5dey5HBgxZSxY7vfvNp92pas/dICpcy+M2IJkHXTXGGxWezJLz
	 ehdcbevn0tlHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC784FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784245368.28755.9013646713976600555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b495885c9402aedf8ec34e80c115c7c6e8abf40a3d62eef79d0d131827c6711
Date: Sun, 03 May 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777842453
