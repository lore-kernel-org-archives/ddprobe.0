Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FAC377004
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774007694; cv=none; b=arv4kiRsIGmwUf1e9EubWaFxypTcstpQBYceBAGzjrjBuEnjXu2BqPgqj7PN4251lzf0MzyDDlyYOtQwC+hwoYXR9qaNXuO0IIG31xD8nJN4fBHnWbYsg2dKjQIxZZDXocM5Lr+n8SBB1quSSxeXVEHcK8R9ivQeJJqw7+a+//M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774007694; c=relaxed/simple;
	bh=oKHyVGFOjkpT2lQ11Wyg4KbwYT4YiGMxpqtSBXTASwg=;
	h=To:Subject:From:Message-Id:Date; b=AWCxXihklIr6EuLk/4v/qHxwgcHIt4wPNwpnVnXSWBdIMxEkc/e3NNVph7rKkGtBvFYuJlF0PyAO0fvPIWI35O/Mr1P1QN9p8i3S2Wn/hTBqq6565XjfyjPNM789bqGOnQYlc+UX7iLh/V3lkMFIiHUKBvGFgNSwbV3No0y6dQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK705/NA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK705/NA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4031C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774007693;
	bh=oKHyVGFOjkpT2lQ11Wyg4KbwYT4YiGMxpqtSBXTASwg=;
	h=To:Subject:From:Date:From;
	b=SK705/NAJrdn3aFip1W0YJ95WR69idaqpX8b01Flm8XuxyOyNr5hDtTHvQO9gDU5g
	 /NaNvx3tGsVlh87of04YMWoCF0ww7ifc3ylrkAoyBwrGlhopf3AvH764IS1uyjGA5C
	 HvsMwRlrdEa0E2YKBAfPjNRHVSh8YlI/MbSo7F47CSomHZRnPWDa2PM3A1yDGpmz2W
	 eusNxBxLlrai13WiZs9lJwgspTc3VGEqobWC0lmIxclTVNvDeHL5DkkSK/OCQZumdf
	 hfZH0xY75wcZHnFOH9Dt/U0o/h2+9ZVtitHlASKcsP4Y1uoqtm+1ceAib0QKhduDIy
	 iqdREhfnuh4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBA108B907
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400769358.14644.4193952722606809909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54554f0ba298ddbf62b38fd8388dfa68cb6929bacceffaf779d259000515ee2d
Date: Fri, 20 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774007693
