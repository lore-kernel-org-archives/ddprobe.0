Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2909A2E54D9
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753441194; cv=none; b=ip2T0qFmKMiv45n5AZ1RLSUlT1LIh5ACf84RW4H6oWK7uP3ocagAwHVNzFyA0xWYGB1Stt6zMkpNRp0L3j1Mb0zKl+Gl2K8Ulbga5qU7EECGpdmll9Vw3Ql8EULw/opuSMrKRpJxSYvvuN7NMTWFtlLeBeF93+vlGNQh36JBq1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753441194; c=relaxed/simple;
	bh=KOIyyqFrY0GbgZCfK6POjBwzjdU95oGAxvc4XvaRQGo=;
	h=To:Subject:From:Message-Id:Date; b=SLswhmOhwhMAlE+yGR39LCKwuQhpnjPfx135+WuLTwKY/0gtDA8EoC9uhB5xPPQp7vMUcHuZIPZFhqb/Xkx0cV6Q47b8h3PDx7lDk7Ov1WDmr7FTyIHCE9TOlfKURV2QbCd1aj0iQq7YPU9+LGFEICKF+upNtEkp4Kp+aXUWmT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cln2U8TS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cln2U8TS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D192C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753441193;
	bh=KOIyyqFrY0GbgZCfK6POjBwzjdU95oGAxvc4XvaRQGo=;
	h=To:Subject:From:Date:From;
	b=Cln2U8TSyBvKAkp6dE0S6mjPLfvJ6OUL7dNBBvqwZYHMon+Vl5kq2LqISA7Y5MR3P
	 JhA076/Q3dOxbjxmXNTKGGbyMHn4CycF6LhmgGDx3BhiYcQ2lk3hT8HQ696x/cTuUp
	 tKqm7MPQ+AhzwZzIxGvPeM9OMsR+sxowJhQ4R0wJSAzdpRhww1wnuKRj4b8qzQ07JN
	 LZVYe7auPI+5JkRORrul/zntSQY2gh1nXXJILRKnILDFc5HDuMT/4VKiHPF1LRNozB
	 qHeWTLP9HaxZ0aNxpBzXLWStT+HIoWl0KgE4ijFPj+MVoUZ5nm9ai/bPaNrKAHf29v
	 FCcIW7hrAjd6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3AC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344119357.2146.447959952087995168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5cd6bd71dbfaf2f74c753ff68cd8218fc31f0878fc7ac0dc2ba0644545ce57e
Date: Fri, 25 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753441193
