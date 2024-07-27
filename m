Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE962C6BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722062154; cv=none; b=H0tiXfgvZ2/gLXpb0iNYGpyX+GofUFpAwyhM3jxfB4CwmqMFxED96gnDmWW6kbzFTqmMJyG+LPfA4JFOeH46zDa1nwC6zxWQi+s0yb9FKMdac+GIZ+/YTs9Gw4obgdXVnQ+ltgwGcgTtxS9Yw3Pqa4sYYS3wUlMBM2lFGxLFwhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722062154; c=relaxed/simple;
	bh=3UXb/RFQZtSg9DIrGkwtIeE4bcY8k5yEfKVgloR8JVU=;
	h=To:Subject:From:Message-Id:Date; b=fsdx3w27HKPMPouvDN982Kj7JFP+mqyXtN/xCInYiWVaY0oun0CzwKDYfXKo8/BmsgF+z13G8t9DFf8qpwR0MJs7XrVGtzoJnjdejqUFutllSsTH9LLNpDgO+C0dMW7feysr7H1EfN/Cc+WAEsg6083TKsEePPmEB4unszF1FG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=en77q+Kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="en77q+Kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBD0C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722062153;
	bh=3UXb/RFQZtSg9DIrGkwtIeE4bcY8k5yEfKVgloR8JVU=;
	h=To:Subject:From:Date:From;
	b=en77q+KxmARwMcXW2Ez1HMjD9HFQEr2jzzD+LbdtN5X9Q5tqQJP5F3WWm7xLdtj3a
	 qehz7cqP4meaZVbk3bqAhVtth105FPfkEoVdCqZ6ILGkeKUT+iZYlfUGEk+bKGQWA9
	 q6lnMpaBPFWG7VkDDvoCI1qG/me9cB16wFkqKzzcPh3hFlNfyVfe8zllYr3o7gAFGn
	 2Gdk9utGiUqFCnPGCt+SyMnNuy8rLmNzvTz0ndSeVKOaPjkpDCzLISqPlpYNJjeAfS
	 rjs0jkSNwlbcdMHNpqpxRF6S0j02K6EZhc0OhWvzV692Fq8H9aDHtOZL+2wweD+yFa
	 vCQ8bpqZOtD4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAA5C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206215360.29642.6470628276036059169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8315d25fb9a40c439335a556e3229776b96b963e93bc92798648283676fa771
Date: Sat, 27 Jul 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722062153
