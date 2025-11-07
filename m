Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B773303C96
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762498794; cv=none; b=ZCvZfijQLmVrF2CWp6y9Oq8v8Oio06ul3XgIC0DeOWnWLBiHX6DBozjgVVyG4kWDmjFl+a5vRo+KUJaQ3vdcBK7GpcYsjeZT8KTu2koFPrYfcP5vnQ3Q4IASkgM+m9tCDntEtGC0q0TMmycnOTAbFNMRan9XPjUcpcd6qprNMy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762498794; c=relaxed/simple;
	bh=3aSu/cWN2s2flGMCHnMltBomb+DaYrY0lAo+oDt5XpA=;
	h=To:Subject:From:Message-Id:Date; b=MBv31243w+U0gDl0ywc87P8FCZp81yRp3hrLs5px17jWu4870jENaKH6e2VKz0axjESbIgNzoJDfMZ+SnWSzVjG9lB77+SDEhuHtH8QzFTccuxprcHeWwgjkF5Vq8nIfHdju3BdjUPuRUIVvqzLR8IBQi+xk3QU0L2/YDY0dDPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Icgipz6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Icgipz6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8EBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762498793;
	bh=3aSu/cWN2s2flGMCHnMltBomb+DaYrY0lAo+oDt5XpA=;
	h=To:Subject:From:Date:From;
	b=Icgipz6LQhRaMt6pcxaCIEjvrWmGt3QvwC2GvM9b/iS3mCB+jsnDFzQOU9MMA9Az9
	 +Swc9pi/63S6o+2A6jsKxsPo669vbroFUy44nTadOE/jnAXKRmTotUHCq7If3hCsJe
	 TrqDGOpzfVdEISVuaQZRXPWnwtxPwQkXQzZqzxSjpbjS6lQHSyuKcP5EewLjs55lqG
	 ToGvz9zVAKG5kCibpwB6sBDseOjjL9g0Kql8hEZsgAJxfuARqRi0Ky+ECDocM967J2
	 eIGeHMQ3kXMhjiqc7LKKAdnnBovTgl2opXQaF5HGuwSM8f2ONfK2+asS7D9nuqfx7u
	 ENtfbCj/TisOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0BFCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249879359.14414.5266238659794912119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e5535958f77ff362ce3835d679eff9ca24044b68a31b37491db39da3e7fb92
Date: Fri, 07 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762498793
