Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA3340DFA9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774752294; cv=none; b=bSeL1VWOToU7XvyMGUQrJMpZtPYb3JrlV5lzGHcGeGkyx1J1RL8PPIotU2TrXUYb3+nt5eM5ZFUcWkZdyEAHqJwYTNAImPSnWq3mdH6tU8xar9S1hNJEEqGNxfia9tagxarkQcvB+a/34VPZaGhu7MLk1x6z7cs72JGoya9TjpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774752294; c=relaxed/simple;
	bh=9iknhmN5VgkF9OwdWknZW5HKGWloPtxGQgCss9hJiRc=;
	h=To:Subject:From:Message-Id:Date; b=K9tan1bsGhBAHqRpypTZ961vmPxxcH2+PF9lHk1xHqM09PJ4YL5nNBPXeUw5icSNjgz5quAlwM5Zx+tcnU6kXEaIGkJh2GRfcFtJ8t+pVmbV9zqlOostrjoQ6ElfKFB/2AedFfvc07G7Yk59Zko3wpEeheh8omKTQCUueZ325cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBH5I4qW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBH5I4qW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D53C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774752293;
	bh=9iknhmN5VgkF9OwdWknZW5HKGWloPtxGQgCss9hJiRc=;
	h=To:Subject:From:Date:From;
	b=GBH5I4qWSj7IQW4IUgHAOPnjEg/WLN/pJuDODWX4fQHseILbbJsInKW79scOwDh5F
	 QecQrxYBCiUv3ah1qaeB/pyWQ4PVTKwHzQR6LldJOdwXz2vNh/RaKScjxl88LPvJjB
	 PMaHGLDeU8PNqTOxXZLcP7/fD9kwmQ1txXHxK4aWARxisr6tezsXElf/kX2Amr9Q7e
	 zMiFwSGN1psEfsgHWaE7+cf9pwEjO9/2v2AiqQ/tlto2CK1N1ItuWWk06BH8dwjXhi
	 brXc/CxQHrjoOr9MUyo7tdNSmun2kavTYRN/X+u3129vvHLmJsX1We36eFgS7JpL17
	 5Ss3YNGP3Wctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A8D10D1494
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475229358.21579.5611394642161466335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500b5a005d84f65e165c9151141a3b1687a5d493362f1d2cdc85f510bc88d7de
Date: Sun, 29 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774752293
