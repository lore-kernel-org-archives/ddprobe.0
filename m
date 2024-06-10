Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587B515CE
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717988243; cv=none; b=TkYbPJG/B+E2NjRh5F2CsEIqPIUSQsW087nnpd1miO+05zXCOUV1O3be0oL/7XebRtes+gQTqz4gR83GQLw/kEou00RN3ZXg8zujcKSsj5rhv3h79WccIbcbhR8CdCo2DmXN/1qJskeLgLHWtMbWCORRr+MZERnxiHFGcuaOp3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717988243; c=relaxed/simple;
	bh=9zCb3iqUzBOVHC08B+Ww7p66WwOGE0fjagRjWHQry5U=;
	h=To:Subject:From:Message-Id:Date; b=ArgaxUARE0yZxFluwBGspFuUcFCqoiN+bnllRTO+JpSVi+VQwsDf61YHS/uiDNt6KjfPHQJHrc637o1bAoTz8qzsT7BmKqc65whliAnMpwGh/gmwUN+em3SNfpXDwQD50XBDgALWMHu9xhIauFRSx3oMovNFq8GJftkMnGtodyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBE+gSZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBE+gSZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9B4C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717988242;
	bh=9zCb3iqUzBOVHC08B+Ww7p66WwOGE0fjagRjWHQry5U=;
	h=To:Subject:From:Date:From;
	b=mBE+gSZnV6SvKor2A0X4M5aTCR/8EVn/hdWh5aMVEpqI371RLTJNAwLNb9X5rgKXb
	 H31i+cCHedwmqUO6mLeVBTuhqpVZBRZATpr8MVpQCyn5pISu6doHmK9aSqGWgtVepI
	 onPhqRgsiVkyr7ylzO4509HCWA1GbqlDBZoPxGdkn++jT5zFLSw9nneMZxP+3ocpiz
	 CAE56Z+oOldJA7sdQOaPhluVGyqHdzD1z93alhjtyV16nLbmlk9+fCo5JeQLlGtu5Z
	 27eBgHRr9mpc1RqeEa0Eugkq2VlApIAGtV186A0JLRmDhWILzgbaBDj342se+d1wSs
	 JjvC0PwZP7jYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BB0C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798824279.4145.9258749956519858893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a956469259ab509a37c8442e9bc3da1c6fc7048e197f1dfc2bcbfc5b0f266da
Date: Mon, 10 Jun 2024 02:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717988242
