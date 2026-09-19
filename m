Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F863C3F66
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789809034; cv=none; b=Q1WF5EMx20g3lwkUEvSe3hdhoefEP0ay5dRbWZDa94B6JBgv3S7EAOo3ds8eCSQHyGUmRC9UDIvts9IStJye/SxP0M3WG2FqNLnSNM7yyXxnSaSg416XU4iW3OUzn9+fQupSLjc7aDtcP+SBdSf/Z6WbvMnVBYKc+zg49jIRzRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789809034; c=relaxed/simple;
	bh=CmYUKcqBfeJZ0J0yogVl2Hwh98vKW7xQnD+HcpO8XYU=;
	h=To:Subject:From:Message-Id:Date; b=gY5I/bSfSAqqBRah8NNi3lSYMfW09mDZcGf03GJfKp0D5u/hSv1Brz6hV/XhHBvOcKMfWAMjeI9kr1nhLapLKWYjtiwIn1rmfZgUPjV4WtSHedBR9Eau5ke1uKudYbkSEbNSig6908WbKHgLk3gm5pA4zqJWGkfZcBPx2VaXrrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZO2Q/tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZO2Q/tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1623C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789809033;
	bh=CmYUKcqBfeJZ0J0yogVl2Hwh98vKW7xQnD+HcpO8XYU=;
	h=To:Subject:From:Date:From;
	b=EZO2Q/tjejJtHRm/J3lrCqppMyyG43VHBRL1N3OFn24F8u8pf/ieIq3jpZzN6wtcc
	 wcMSNH10+i+5mP+5nsscceTj1OnQQyTerRYohpX6sd/DLOuKXkeuW6DyvVq953oa4P
	 6TODskpR9upD/Zm/mejeZzGqcpqWxYCHmqSamqW50nTtWPTTniXwZq8FrZk8PbV+xn
	 +HwYI6RK8espFlRS0momF3nklNcXhir9thWnsPFokSrk8IZvzmfsHvT/znko7/eP8s
	 Ped1n0Lh+m5vTIPUofkjVeYvFWf9Uannfa9c9SnPP1BKL8aimV+xxN1XMhXIdaTRA1
	 LU2NzZnKNgldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBD5C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980903373.18282.1069444209714129000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09844af4758c4d916f870c6b6128aaa1501f3577459932a253ff15daa4593828
Date: Sat, 19 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789809033
