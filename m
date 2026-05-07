Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396D7346E47
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778192254; cv=none; b=d05Ljyq3Z/HiYwcba+3m7uUng6AitzwInqheHdLuAxxmoWyfDh35OzWkm8Iymh9h+pYovVAOIa96VWUCjkjA6dL5Q6LrmbRrZ5djBAq+5CWFnfPpdOj1GULoR06HHyPr2wJVdcXuF2eS5nKhhr/IBiNU1yfKIudgdNZJCT+5/CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778192254; c=relaxed/simple;
	bh=ew/jvtNjQE478v/kubxhHpsx2YymeB/3j/VQaL8DUU8=;
	h=To:Subject:From:Message-Id:Date; b=KdBkK+EQasiXZM57iWIkaz2Va2X+Q6nC4Y1Bfo+M+y2mShcdMYRZcQyCVyyZhESP3slfSfR2l7rd+ecDbMi7Ai63vxdE41lzMonlK5ViPKTyf8Z3eR/979Q2A1xhlmyJc+6EP/2SGKzFQf4N07kjX9uA4ZfYsxqV+to9zlaBZu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncdfpRaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncdfpRaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AA6C2BCFD
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778192253;
	bh=ew/jvtNjQE478v/kubxhHpsx2YymeB/3j/VQaL8DUU8=;
	h=To:Subject:From:Date:From;
	b=ncdfpRaORLCVnUd9ql6pLtYDZRuEsaWwcAgG+/pYZmMy+6LbZxC3UIOs0SjR4PT6x
	 17KltTtwh/M9wh3DNQMcvZdTAPtSbmBgyG4xm3r+dYP8rVkrmqp/V+ydiEzQSweA1p
	 4F3MvkEGRw41HoMYSlARiYEVqMWVcE2nwTLZTsFHv92+k7nEaXwIqRTzaY9ylx1I0Z
	 qulopdsKf9lCnryd//vaVsO12wq7H9Lk95Rh0P8nTujJDl3liKcWo63GXDRxWpuBzE
	 4R1dcqA5Lu5D955wh71e4ahgfeuwMmwCRwklbe+14h5IMmTVwm2XfZfqpNY+d0kQZM
	 mjRmTzpzxSwUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA0CD37AA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819225369.18440.2543797901294014932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2ac48ddf3774ab900272dc7c65f71ec7c5f4fed933c3722d45fe0608f25894
Date: Thu, 07 May 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778192253
