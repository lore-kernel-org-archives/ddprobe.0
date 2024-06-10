Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5881780BE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718030243; cv=none; b=kiw2/pg1/ItJwc/UUagAQiGY9BOBmx4zJ9QVQrtN/iLbrJtzFCQBfwyKM6AONvwG/GK+XWliRlkec8Htx+IXWgtb1K/+8TsSMxPpZQEdWVX56clwBhyIoNeRbWsMolVtZCJ/m4baQLoqmHKWXdwqXknlTAxA1EUv7xwf9HxVmBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718030243; c=relaxed/simple;
	bh=0L9u8owJCKjT4xSjvg/kOq2LVIKQI7kadA+BrL6fTo0=;
	h=To:Subject:From:Message-Id:Date; b=RVWSpIOHToFvujb62wq4x/4TMHcYM8fro9V7mdsQP04CqzpJoq5ZsaPD/xTWvaEyE+kFD5vCA7zoWhc0JNeEfG0TEIi+6ybYjJKNjsFAOYnhvQP1Lpb/4AqNT0/DMflOtOXDWv5QBCOXg48xd4lDQPx/HQDhX+hSP7tgjgfLgt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys0nDaiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys0nDaiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAE1C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718030242;
	bh=0L9u8owJCKjT4xSjvg/kOq2LVIKQI7kadA+BrL6fTo0=;
	h=To:Subject:From:Date:From;
	b=Ys0nDaiDGHq0kX+R1FgoAHNYfzjblrynC+zCKQtwwVGqzDfqx3V0osCSIb5jfDcUD
	 JD8okyt+DFS7dyAvGYGID1lRUw88MDtAT9OvmHH6MOk8yOUMs4mtWsWzws7RHt7OhJ
	 ps79VZPMDI607H/alzmbk9YUhz4P96BSBXFJ2LW+LO7bv+6ERTLLAfcIMDyc+b2tTl
	 worTX6WCl1rHED+MyKZaUUno6WvKPReqJkYgPhPHXo5YXpqdQRD7t6+aABt6eMXGfx
	 zukwe3PAGhrVwdST8dvM8A91qItmg9pypdlds/O3Yo3d+o/PKkDLMcu8ERuOwpZ3KJ
	 UaF6TgYAT1X2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC04EC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803024282.27994.16153326458186698661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409d9cf25213b743b58be36b3486b52e24808000cfb0dd23484ef157ce3413be
Date: Mon, 10 Jun 2024 14:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718030242
