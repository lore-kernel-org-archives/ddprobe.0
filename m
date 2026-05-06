Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7048E43D4E1
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778078254; cv=none; b=b4r5rzRYhxgqr9DojWoDAcsqAVykc1yO9Zel9OaKnXxn5UQl6YVYeHji7GrJfcUV7rWlnDT5mhb5kocSoXQ7d7V1Tp1NWVQtrpQh16w95PTb7mZ+htGIkOmrFva2bvkEndt5trMKF4yuj8Bk8wWKb8/4gzRoRwjam19nMxrXtj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778078254; c=relaxed/simple;
	bh=gsglYhUsqINf53Hw8I0N9V/TKKbBlTY18id3U2E6Zag=;
	h=To:Subject:From:Message-Id:Date; b=etycDRbaem4bZA1rYdqStKw8Yxc94wuM3fCIIyDk4M52qQ78+YOc6ykPV6PRQItT6g9cwPVPnvjjanIda1fDjzPQ9a/Lvjn6aBQmhAtkgr5hbV4AZiBsTz/2SRgtObmoKxFIZFEHh6f/OEK6DPzfpF4GNqK+Lt7h7uCULdcncFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rB0u0yCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rB0u0yCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA59CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778078253;
	bh=gsglYhUsqINf53Hw8I0N9V/TKKbBlTY18id3U2E6Zag=;
	h=To:Subject:From:Date:From;
	b=rB0u0yCAExMJ0W12ZaFA8KSsHKfbzzEy/7dzZEeLhDa7Yd7JlDiR8hB+pVGXukOQf
	 /ifbPzzJTX3y4nr+jBZMU7gRyjmkIHf1zufI2zb879zyMRUxXeXQaLugs0rNNrpsjb
	 xRli4wNfV/+2SAD7mJGvMUmWPQwXHM0RcPloh6XkVSQBDKewPOcvQ2wrDd7cHbPdkJ
	 Q5iWiJStXIi9+PUxuw2DcGowPVTpe8hmvOwh+pSe/JBdb8ZpjgXVZn3suane8ySSZp
	 LgtWAdlnNTLMxKSjl23h8vZT/pAD8EKJGhy/jysLR6nCkxOmWGFCRT1pkj9uR5GZzu
	 7owYXMlnquECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C1CD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807825369.11594.12148692534431920942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70867a2de0b0c22bcb385d506b36a4d422d582d54728582d61aa414c8465941
Date: Wed, 06 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778078253
