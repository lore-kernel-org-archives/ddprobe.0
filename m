Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE891F4720
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745635194; cv=none; b=kAtW2NHBNPeXaN94MWRWYNZFsfOxPSxK3/EwZyWN/wW8YhzL5jZdTOcbJav3nqSaHJqfZLnL+XxzeEgRok8pSY61PX8K4ctF1oux6RfYjsWyzc+U1OVpA51P51M/mUgeV5Eyh59W5JwJ1Ikj/0mjn//WVrF4+ZiE0uphOONJBSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745635194; c=relaxed/simple;
	bh=5JCNxfITCgRjU6sbyua8s0ksmkb2zajua9fnEtEssLc=;
	h=To:Subject:From:Message-Id:Date; b=BHVbhtWOGP547zi/JjfjE2Zz/opVW/AjqnhfM+aillxU9ZAQdkA0lJt6N9tIv3IH4cR+DqT9bmocRU3ExblgwsyGWQFX+UTKZZTy4nn5Gl5vdbFtxrJ63qagKq6tNJNDjQunyUeFirCJYL0DdHLlC7Ct3tYZ2A/oXaUz1IcTI1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIJ9/ie0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIJ9/ie0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1972C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745635193;
	bh=5JCNxfITCgRjU6sbyua8s0ksmkb2zajua9fnEtEssLc=;
	h=To:Subject:From:Date:From;
	b=BIJ9/ie00uSWFr8diM8Dtsd9Ag9sWuX7thuvXZ4zsT2HU9sd9LMtqQp36RUY2DqdW
	 SZluJFlCE3LEMsRQVHW7Ac+I9pDE5gRcziH+dG84941+QnP2eTnjNazu07Ja8azZNZ
	 dsZ+u+8EVFWrrLiub+b0gc7wEkg1N2ZxMXu71/bfolan3ove5q8fQtZYmO/vRCLV0A
	 atb3NtI2l73azcKNRoP4nRfbT5VCs9LsmVKWfWPFpSWAg350T2NRm78B/S5uQBH1F1
	 T/b2MFYfcLnFyN1XxLjGf9DNbhe28QvYPlhSfmy5flog9mmMVkq5W4aLk/QClftHPA
	 Ak6P9lF+sKXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF99C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563519357.1274.16584010888373774064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df72f172a0f819cd0084c5cbeebec1b2ea7c47e13a49e4258237cd5cddb8eed
Date: Sat, 26 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745635193
