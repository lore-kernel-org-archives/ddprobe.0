Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4954B17B425
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989234; cv=none; b=tDaZABRT8RdzP15prvGkWcqf4qYsJrDGMHiqh6F9gzkfQlGnsh+rUkxd43RwkL6vLO4NDLQszaCSxYtWcT0nksvzm/mnd50gCiQUhqoe+9ay9aKaiYNsfEiFLBV+eKy0qol7+8I1xDsE4usPfP8Vw51YWDeDBI5YOBQWkc0dA9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989234; c=relaxed/simple;
	bh=jmN6dUurYheP+WqZZ5B1JaZm88kluNW+MWECjDusx6Y=;
	h=To:Subject:From:Message-Id:Date; b=kVaAjISgLNjEOZA89kggJMjms96Y3j1G/O1boP9ous8ECsk+p7JySkyDLbVg8GPc93VqRnQ71ztNYoff7rRYqW3vgbSYt67ckr3Lcj+j9y4NygMcEGC230lFa5PcV1B1OcKAIKJizYBN1WKyO+yixA1Mn1a1PuGQmVNeTlJ5jYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/ssTa1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/ssTa1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58CFC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765989233;
	bh=jmN6dUurYheP+WqZZ5B1JaZm88kluNW+MWECjDusx6Y=;
	h=To:Subject:From:Date:From;
	b=s/ssTa1MIEvfLmipJsJ9E+z43qt8Qk/OjNH6NqzBxxrgAk4obD7nqBlFQcZ/Mcvmw
	 kqVJhLF3f+SHCX1nFqq6SE8NYUpqJlWQaKUNgsRwm8yvyUTJFd3KvAlSuF99zEeSJs
	 9kgMNkhkzgTa5EMb7qg89g1f2gQw40aDYENnBEi9j1KIsSM04PrUHmiJn1KiF6Y+Jh
	 c0R4vWFznddJGper3rrlG5ft17+NrIeQp9MbnohQ7UDVPOzM3BT4GB5PpGZRTvICpV
	 DH+22VYa0zODT9QgOiWrbrCsSGmRvhzs1QzZr71iRPqlKQxGCb6bJsabEogHofbaFd
	 peqeQwe64Q8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2ED0D65C7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598923363.16450.2550686198867890549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92b1ddc5aa6c071692e1cb6da2bdaa18f69614a48ec2a93d9e8886fab9a8452
Date: Wed, 17 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765989233
