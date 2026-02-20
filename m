Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFEE221FCC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771568094; cv=none; b=irrk5Xw6yt41B8RW680mi7+/tJSjBhAfsxtvjR3y+uWlqRCcvUxq3C6wpa8cDtEDmKgmCRMm8ynypJwNSXssMievw6eAn/+lagumK3ab/EE2iVhfKrjH4bbKrQEYqKZWz5ujysXLQFLjzF6KUK2WtCvWstbjhKXkzbfV7hPgT14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771568094; c=relaxed/simple;
	bh=5fEC9/u/V/9eTcRRM5H1yCJXIWE2a3j0IA+gIAJx0Qs=;
	h=To:Subject:From:Message-Id:Date; b=aPOTe4RTcPsxZuDCX8v8HkL2LZmOZpW+Jsv4cv35earR2cIQ4nlvdMNvR+THWg+b3sru3Jd++9rgZrMhpCk3wvP6uInvg6MO18e7WsHKfkrBWzuhMz0S1Fx2eBkOwvV8s/91fn+MyzvbZkTgOEU8o7lwtSpBgoEP6BmObkNjxzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCZ9ZtXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCZ9ZtXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5D6C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771568093;
	bh=5fEC9/u/V/9eTcRRM5H1yCJXIWE2a3j0IA+gIAJx0Qs=;
	h=To:Subject:From:Date:From;
	b=VCZ9ZtXRmbqrY0uhTC7GfO9TOdWdHbboqshamNttjiIVpu7gwSLfp3Q1U1FjCU58g
	 cYEDywKVYzmP9RSpUGlZXtlmF/ZuBr21emgpApW6YhMib/ZsB4XN+mYkTTuY8/moFK
	 sqJB7rWnfRrVEDblSm2mbaPiQ/ityMAaXr4EmcpHCtglSPUj1tSLBtxmDObgi7aQcB
	 8szmdmZw1R+Czc5IRD/6M5HZVyb09eczf2I/14wxLctvfBuHD4HbTTizLJDpuHu1O+
	 KtsICeKAruUmzYMwe23XANSnx+8QXKKGrY2PQvWLGT4w9sQX2O+RMaPI/7Dg+o7UdK
	 ld6OehBzlPhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E0CC54F5B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156809359.8937.13513908931309769619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75256aca06f2c5615aa80ea445a50d5050e0b1f86f880ecf2367af66f3bd33db
Date: Fri, 20 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771568093
