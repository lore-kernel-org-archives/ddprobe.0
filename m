Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F8635E1CB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781207794; cv=none; b=PkhZiyuVYE5WsyiFTORGYmySXkuSgR82Gch/OKz7+KWPy+VG7L4eCQRO9j92I19cJNxOZ9WjPolZ3KJtDrkQLuukNt3N1fjWty7mngssrfBaFwcekGkydtqwYeaK77EyRy7mCI5FEMXwrra7PDqY0+vwIf9d4o2a/gSzvuvffFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781207794; c=relaxed/simple;
	bh=ZoGLWlxc1A5lxKoMqFAa/jp3hWKH92YbjFwGdNQiG3s=;
	h=To:Subject:From:Message-Id:Date; b=KKdCeCRu/cBl0Xs+72uMeB+Ie+JZnMPSwbRxtZMOxIV9h/l5wKCqYFYS4/SsPhZrJS4vbFrjqGcBlvktT1VG9oQu1iMXyBmcGqubjQLPqtZ3CoayhOQIRAv6IHG+pxKz3hszDQM1IBDz1lrjtVNnkyKQP5p3VP1q7y0AdHYpI0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I73RqUtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I73RqUtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F25C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781207793;
	bh=ZoGLWlxc1A5lxKoMqFAa/jp3hWKH92YbjFwGdNQiG3s=;
	h=To:Subject:From:Date:From;
	b=I73RqUtGnCZ3IMQyYbAe3YNKFCPnkBBHKaECjSjpTrHLcv1pVA20iezsxNGwYCzk6
	 6DHr60IHPFBAuimtsY34OH3FpCKi+/BCYcMBx6NlV7adGWhigQ+dKtaqVA2+6MxNc4
	 e5FFfjYrncw5JjLg0gPhxoTKmbGEqL7CC9OhIHICYK+qvjoVBpo592u+JlKbwtRrLG
	 LyRoyeegkfCBn+GyXOK6iDWkrM4rf+6pA44K2vBR1MUtXSumCWDCqM4D8j+IStc3bz
	 NyLmFdCdQnB2kjmewxStuRyMbPRe8kBEnqzvXw2jZaPUpy/UGR7GG695Trb8tXuXSa
	 wG7VBSaiRvJPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB33CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120779373.17724.7608151012109228654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33c79653f0e3476060f3c7e9f75a6607ce711d268921a791c1335621854daa1
Date: Thu, 11 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781207793
