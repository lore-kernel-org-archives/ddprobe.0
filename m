Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550EF3C0623
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785144034; cv=none; b=PA0jLsJzFAK9vBQVrknkGccB8FPKeDcCvywncX35Dr6bYvQLheocu3Dj8AcAGvxUzJtsZ7ezE5ugzptG4jdJEHRRBd3UmQF/54wCSDr+ughfeHclb34Cf0WvE3ez1+PJtLwpgQwWLXQwmyB0cAhYvTmsZCVVlQKt5KUq0MQ9+Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785144034; c=relaxed/simple;
	bh=hUiGF1n9c58H9sDwZ8plnEkjnOFEnO4QynWXKtphlS8=;
	h=To:Subject:From:Message-Id:Date; b=Se1sQBbBOs6HQCCCIYs5klx8Qyf2FOBInGi0+3SrRWbUBnfKdVYHiqLzxPbbvQbd7ZHlWdfie5Nguxpqu2S3Ztk5sM9eS454EDTxvMjMAUwsDsXw/UfQVBFQQxZ6TaItekyrwF/DUFBW26AawFw+SEyTe0hEBfQgMoXOynRrnwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZE52DQmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZE52DQmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA37C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785144033;
	bh=hUiGF1n9c58H9sDwZ8plnEkjnOFEnO4QynWXKtphlS8=;
	h=To:Subject:From:Date:From;
	b=ZE52DQmY1QpFw2eaCQoHKJNnCYg4m41fxsxD/0kdEpdwQeiAE8947Ffy4upMA4oAw
	 QEtThwke1GVoXcwHdMYDW8EXYOZLC6uVSmhkt1EO4jCh8ORjUv7JUq6tX+ag4TZvM7
	 ZqHrvfCi38SCZ8jbp5HUtYK7qB80fcXsMSatTQ8t5GtEMyscQzbd6VwzcNzxQdF9Uw
	 NDDLyX0z06kvAsBXyfxiZUE6Vji/3XyslAtg8x4PsMivUAMUibtEXdVFEDTRfzznWn
	 Sz0MPe5LLZS6dXPYzLPCkjHDU+sZkAbMLNp0pGNLMl0+IyeaLwsKAy1n9qHlLGD3Z6
	 yYnnSeELrRUCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9672C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514403368.25114.16776422629933373217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e41af83cc1df312978b648d4f9fbb8e02d46bf4c0f58e568916abb195a0a51f
Date: Mon, 27 Jul 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785144033
