Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304882E40B
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758425994; cv=none; b=ZdP/boJVYghG7icw533IAqktpio06ojiUgyiwx1YRrI5IwFNwe1xk+2Z0BFXPI+LytjG0EskeQV+jOiGLryLiHLJJEoWL2qbQPuVkatiehzvCW7CJ9hS5YPtpB+8X7ynP2LE7tEdZ8aiqdk4LCc6pNSXG52RQXm7w7XlqCUeWT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758425994; c=relaxed/simple;
	bh=7aBp9h+/Sw776cJqT++fdHkd+iUDMGnU3XN06ZcbXlE=;
	h=To:Subject:From:Message-Id:Date; b=CzvOofEn4Weklhy1Lk3ZnRLE/C7nsCVmU4YZUZoaY1N7anN65/BWv9qjP7SebXfij2Z8rwxWUwVzpUrU8wlZqmMpk8JcsgD31+f1wCg5+oaH/gfN56same2FV0pOTjKV8oeu6CFlgyorVTM74fYdVM7XMWUXHRfCMfLXiFhdMbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ax7eJygT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ax7eJygT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F0C113CF
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758425993;
	bh=7aBp9h+/Sw776cJqT++fdHkd+iUDMGnU3XN06ZcbXlE=;
	h=To:Subject:From:Date:From;
	b=ax7eJygTgviglBARApA1XhaiKNmkGMQ32MS4PoHkbR9L7Ew4SvWuM2ztLnxUf0FHi
	 WhP+gXFUEw9Kwp/36owYy9kTsnrUfOvZwm8Jv9ESk0Y5SqGF/GRcRNNE2MLdhFdazj
	 V5ssZzYNiCO5zNAB0TWs3mGPheL3nmWnksCSlKDcA66FeQZbrdf+GSYMg1YN/ljj3J
	 7nZuo8HvlbEOEzcn/RjePhQ14C7HyeS7RjMTeEkI9caERO5qDk18Yt4L7uK7W/T8Pj
	 UI37mfkyDyWCjpOCYEwOtIM0L+XgqdH7dOofW/n1ifi5+wKNRS7FL9p9WDKU/S2eqO
	 89uB72ssl7lPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3A2CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842599361.24811.3694173952771346863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb0b19b5f2b5ff248a1dd052a99d75aac3a55a94ac362ae817557ca8b0fd997
Date: Sun, 21 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758425993
