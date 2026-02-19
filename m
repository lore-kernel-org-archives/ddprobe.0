Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B921327C09
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771535694; cv=none; b=fCq3b3MyvX5mOKqYA0AQGS/GUl/Ep7Ij8D4LaLMXb7SUPoQMHeCq3xr8LZVL4IWfF/v5c+jpOosw8G8vJ80yIYth1jZlLNlqcXAOAJmF4EQ0PU4cZr68HtBeISIdWgWvV0D/ebKDWQ4P0fpXE5OX2CKfBvAya4vx3mqqiF42H1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771535694; c=relaxed/simple;
	bh=82zMkCv9Lt3nltnt7FSZjBW/NyN0xxfxoyxh7WChOg0=;
	h=To:Subject:From:Message-Id:Date; b=aPfj9H7iFKwDfVvP9wA3+AtYg64TB1aj3lnJnqDG0Ef33DHkAYnsuXyD8pstE41F3Pdp6uW6KD9jKjZSeWmIpR8ag0kGpnDXqVGGYxDCgigFdIooNbne2Ox92lNafXr9fPn3pRM4mm6rxczUBIFc/C34wOTQNotKxyrdVV6Ofok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m22tIxaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m22tIxaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40B2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771535693;
	bh=82zMkCv9Lt3nltnt7FSZjBW/NyN0xxfxoyxh7WChOg0=;
	h=To:Subject:From:Date:From;
	b=m22tIxaU8XBiaSYL/SMjCyWQJlfQNqQPZAIUA6z28LV9/AJRYIxylM7vvoXjaaX8n
	 OSnBY70IA4q4FRs5i7eYKAGXeGWguW6LrK/yAAVkxQbhx+akAPetMnUqyuOP8h6j2m
	 GlWRQPRLXugbkEwQLHnwXIgXaYlesn9NabvU39lBH6Z2j7JWvi75uF7Y8DonwL+s38
	 VQrbYv+6idglWnVxvKlMLvWf1LYxnCt9osk2MwE3zb1QvbR4UIlEm3yXrqL3J4LWDc
	 k21KH7gq9JPTKPsmLnWE5xkLnCpl0RAie1zelLP6kqS5b1kuDoTNXZAIV2+v34QqJr
	 /fmrqkVpA+dHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93479C531CC
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153569359.15697.6670523649019933480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855f034d52d8b15805e371b181d555bbb2a0b591e1edf6523dd9ca0f1fed6cf4
Date: Thu, 19 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771535693
