Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CB424290D
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757472594; cv=none; b=tbs5okQfBKbdIagvd6XxGPrn01MUkY4U5Sg9cdpOYFxGeqEtbywBlJ9l1HwFVTIyHe6rfxL9Ry6/HSB84++MJ8TMBlCUqpivBRNUv9novQ2YaZMJvHo+6mFBHQqgVy8l0zSLNTmvcHhhYcq0R55KlYrEjvtRrAnUpquPYm3yYlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757472594; c=relaxed/simple;
	bh=mfBPl1E61evBcOt6QMI0we3UYTKHtFck9OrDJjxttug=;
	h=To:Subject:From:Message-Id:Date; b=OsMvNX96NqS6KI0MCJ3tABOgAAgfU3QkOBEfW3xp49Xe/GOabRxI1yRxjsxPmMtomhbSgTuYPBXOQGHMeKHYxL6WsyoW18RZISopVEm52/j3S8y+lsKJyyXUCJwC2wmvaPvbKiTx1BYuT5ZC1S6/It5a3ldMVHM4tUGSvyduVEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqLmta1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqLmta1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A097DC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757472593;
	bh=mfBPl1E61evBcOt6QMI0we3UYTKHtFck9OrDJjxttug=;
	h=To:Subject:From:Date:From;
	b=WqLmta1LK3o4e8CTW8d7X5XDKD5RmLwwuEQXKLXi+qTaxLlc/NxbXpCi12KXE+lXx
	 JIJLJKu6/9yh0iq6A4lVpgAAg58O1oZ9F9sYL48tB2UevtfsLf52KpF1Q/dxNe7llb
	 IPyGZ2eOP3ETCIIZ2hPlWG64gI6XiDHRm+oufHIBFWxsRMkT6oUlsHshuDz5zjb2aI
	 Zn18eCYoTuC4luQtCJYW9I/H3DfrISArgMMlbWaP4xLqeaemobDChnd6SMf8BFEuFG
	 JPZP+KnMmPBRlZA2DqTn5QDJ2ODJ766c3IhYvq4mm8H+ADU7a7cBbea9AL+rXgtALn
	 SKGwfcOB18Mnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E355CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747259357.17655.3734349259542624625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526ccb422cead4bfc5b7e39de6d588e390b4c018c0a92f27adcfaaab1d915b83
Date: Wed, 10 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757472593
