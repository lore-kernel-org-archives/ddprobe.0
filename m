Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C19420C023
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761189594; cv=none; b=U7/1DSPTbwRpDN6kea/0IUnXsHbwAgEWij13tRcqaIRAZJmmM6id/vGfzhxTYvbcwrMk9EixvkwV+eJkYGmKquVzbIcp268BNN+KayCNPBn3XW7cU4nv4Nmk5ivx0FOSAIg8CeAy/tmh2w1ti/RSTSBNE26ZjnMawnKbEw5hpu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761189594; c=relaxed/simple;
	bh=cLtrbFUFqfgbaF5evpOu+tdwTuJZKG8M8T3fyC3+Ag4=;
	h=To:Subject:From:Message-Id:Date; b=DywYfiAv9l7ND0l7ky0K+KiXFSL4KeEAhWv26mLXPm/JlojR+r6sc2f+X6BVL88ZYlzP6IQrVrNIjW69NzjGQ1jfT8/ByBlumzwmeFiWtJfKYInJcVNhuLvIZAWX1kgsCb0RbKSUicV1ZH9fq1lyoGEuNLaC9+F7fuTJ9OKfiII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=in1qwk9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="in1qwk9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761189593;
	bh=cLtrbFUFqfgbaF5evpOu+tdwTuJZKG8M8T3fyC3+Ag4=;
	h=To:Subject:From:Date:From;
	b=in1qwk9kfjqWHHdSuxlYQXeixc5YIvRurPYwhWE1uBWo20gPvEii7ZODRsPTif0Sv
	 rN4w4G/m3W+yWHKGL0VOh75zQFse0I2l1LrFuZKZv9XKqj8b3EPYSdqwE4o3YLgsge
	 R/E2EAT8mwYvQycq0HVV5xmM+hsaQrmhlyd/Dp/s6uR5lyGSsj620n5HmX8drKT9dC
	 wNGtMHP9kra47wjS6nAzwHtAQez7jJsLh5GqY/ma8xuitwPA3w0M4M3pPM7laN8TtI
	 9mRVGWGTV/a+qtMfIVAfMWU2hIrQm4AQ6xyjsVb+9dHWj9o6arrMI+0H9nl4Hbps40
	 sT5LTKVo1u95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FB5CCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118959360.20944.10128383474264004175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4220c3c334af13b074790b00b7a20cf117b461c5806be173a338ac042c73d15a
Date: Thu, 23 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761189593
