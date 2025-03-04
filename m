Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3706020A5CC
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741102134; cv=none; b=Y5iYQ6TpkLdzRxLPe2Aqix9DVib2ULJ9Uj/mMp1gbI5ZlzI3i8puJabXp+vywBvGRlyD8ZweOAF/ass1QS17sZzo2a/F9ZEa+p0lVnqEK1RxLxH/98RwgMPczIOMi/83v3EZO+hKgbbQPQTfujD8wN9d4McM+fva9S1M6NADfiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741102134; c=relaxed/simple;
	bh=h5aKJ6IfOZWlZ0H8E3mF1mjAKh2LzA+M9RL4VXsV688=;
	h=To:Subject:From:Message-Id:Date; b=ptAHvBR48BarqtJmSm/sTHPlyq5y/2YfEC4Q/oYPH9NX15ZX2SkbFKaRe52wmnL1q8bs8zL0T2WTyPGU6yoaAUgZbBrp0fA1GC1tBdFI0smGluQR2A7FY41ThM31IpgQw8NrlgFXWskYujBP6RIbMSGn1oFf2GZREmgKTlXKsCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAB40/y1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAB40/y1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05A4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741102133;
	bh=h5aKJ6IfOZWlZ0H8E3mF1mjAKh2LzA+M9RL4VXsV688=;
	h=To:Subject:From:Date:From;
	b=mAB40/y1OS59SFyzRG5/t1coZxqjWGiXb7ESL+sTJ/7Rc6qii6Fso0qA8n44cb+W4
	 iHArjopvNv3W0oEjj8Hsx2HDhiP+WFLSR3qR05BNhmyQ1YOJYuEc1uWfaMjWV1siMX
	 ph1bo3EVHdzHUemaT8MtIu6sG6ZIbERGTG0ZjwfmwTW05AVD0PwbzBbOMI50STmppf
	 CMimQJH81l0DxotinuX4KsLuFUK0QHytq54spgGi6iFMcxoD3gZvJwT9dQ382CKzff
	 ErHCh/9CuTnSHvdJSUgFRO1H6RghKas/q5FY+jRp7hfFb4GzdMtvKIa+EJ6rmYCYeQ
	 les1KvHWWMgCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A069EC282D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174110213364.12505.9116984812789102987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30786109055d78c9cd65bf16af85a2edee13c26f60cd4ad1e65c5e8afa462d2c
Date: Tue, 04 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741102133
