Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D076215055
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768519434; cv=none; b=UJxAPsglFTHUWeAT8FKjvZLDHPDrWHS2G8aVS3riMUSiQvuBrWkstK6rU/Zwxn0PfCcpYAIJkwUDdlyMoXciZkfGWLFinLeE6WNZuZqHiZ/RtC7vkDlLbnE9WGEmtOr6T0Xa+vN+qGVPpOB4vg+g+oAy8hU92gbcsTNmhz+fWuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768519434; c=relaxed/simple;
	bh=H2NzuIX5ahcUuMj3gfNJrhdNpHAIbqzyO7xOy2aWNbU=;
	h=To:Subject:From:Message-Id:Date; b=h+iXI3qK3Ejp2SbGnMNRrsCc4r/Ae/lh/oOnECC4FuzZHuAUAuQVerAliwUvFecQ8mv0AIaCHT4oyceiLtuLNOdqUqae8+4NJDT5yHf2tNguA5krM8+wBn2Pbt511exqSCisz0mdTGLaIiqqOZCwl6kPyA1Rueu4tS56gqFhV8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CriNYPq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CriNYPq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE9C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768519433;
	bh=H2NzuIX5ahcUuMj3gfNJrhdNpHAIbqzyO7xOy2aWNbU=;
	h=To:Subject:From:Date:From;
	b=CriNYPq0EYGVJ8CwcVHEfgVXhmHC9R9Jm1c1AdTPfmp+3PyCW1+PhQj7HsebjRpbF
	 043L5ieHPYHIcKNTSgCmTuVtKj9Ql63wxhuDKrSquWCj2mlvRysp1VbWPcqeyWsfJc
	 g2rNZFXNThn+U6ENoRT958QhAa5rxhNhSOSR3+Rri3YLAodmtm6Mjqe138Ld+xp1+O
	 ep+BRXIDK/D5sEMJBdRvjvSDt1wxvTPJV+QGUptOOwXWjU+GPmi5FsdF/B0/pHeqVA
	 VnJUK5yOpPsV0960ezlPaepC/zHjSEReRIcIyufdQSvRmRzyvZxhbjwrMPTdy1olIZ
	 oasG7sCe8yMKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A9D46634
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851943357.20667.13766379068565200120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1c1fec01b9afaac13d27986d027726d95aeab29b7c7084187c0ab45b8c520a
Date: Thu, 15 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768519433
