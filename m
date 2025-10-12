Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D5825A2A5
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760273394; cv=none; b=RK7gkSKrNNAZlz1mKk/LjfeTLdHR8l0ndx0atfj9xhiiZ/Jd9I2/i0e2ogQnat4nntwkfXZaQsXJgP+ueQo/YKSW/s5QKmjfsZ/4zk6fZJy9ieco5frQNh30CNIRFULpCjBQT+Irlx1ieeURDYXC4R4zmVE6vmhNR2f/T2fOfYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760273394; c=relaxed/simple;
	bh=Sa01NQCRy11vZIsrZC1995PUtiEsK+0+V++0PLALTmo=;
	h=To:Subject:From:Message-Id:Date; b=r9wIIUNBWJ+uADfXvcrd2eF6N+C+dlW+Ne9UoSFYF5KRbqQjb9TKmyCIRJAAAIXPFTBBfCA/Z9CxChM/upj4JUZHHHwdc4d5nlT0s/J1K/WHaES5lIu7p9NkJzvxeiG6pcAegoFOY9V1JTCkBLr8AVp+sCaDmkKq9+obDIdb5SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svgy+cmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svgy+cmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A262BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760273393;
	bh=Sa01NQCRy11vZIsrZC1995PUtiEsK+0+V++0PLALTmo=;
	h=To:Subject:From:Date:From;
	b=svgy+cmJijyhwe6uWEZASjnWysy8Yw84EoYp0jvHG9fqbfbelRVaiRR03D5G4sZiT
	 cGpCXCjcHVdAunudgwUeoyxcYftY+0mXAbEw8l3cfDPubjb4PBPkQuwaLHS121b7JZ
	 ksJr4w65iCbPJhwpjfvjAFZttgVt07fnWxKioDyBc/ypaR1CHkQXa0SNbOzj1z5Jvs
	 phcjsLap/WuARaQUR1S8NrzPXg2BB8vUXjtzKHLT15QPC9o9TFXUP9J2JfGcrnBX3i
	 dwnbWssDPlzaO5vFAnCaV8SGLLgOP3gZ2A8kpMAweJqXOfCzI154S5dI/JfCSWOT64
	 JB6HARV5KzvOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F612CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027339357.11070.9127147213851643309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09abfc78864e3e29104b4e138f282f238613c66c1efa25f00d8a7f24ca96a952
Date: Sun, 12 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760273393
