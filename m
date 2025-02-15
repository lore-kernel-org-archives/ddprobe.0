Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DF9D531
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739586534; cv=none; b=jKTW58LoadLyi3NMml+JNL79Dye7kiuz+epUfRA3x9UOqhA9lBuqXHbyBjfg9EJp8inYagSnmFS8qrgqClXLvk5bJ+KWuN6NZWWqY1asib31lO0XZnDXDUqPS1CYWBsghEEe2PZiMkx6nWaLpSbp2qEt9ncFYFunSw1LcMy5/BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739586534; c=relaxed/simple;
	bh=OtWGDDrjSSlmwKYmC7Q6XP+vRsooBum2WwIsutn1sbw=;
	h=To:Subject:From:Message-Id:Date; b=cADHMsegUKR3oa0VSJ1MjBXiwt8oBC+5Thjf9V4dC6A0tDMm7PuHKmHGY8B1RqQCeAcli1ck0W6ThhlMQasj9vuB3TTMDW/YFnbBJ+K+RoMarxaMp7lv3ScSjOBFiJaFbbivfxiHZyRsaaLBIwCzV6AoMA2/WN5PMpkg4lJ4G/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OboguVtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OboguVtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4853C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739586533;
	bh=OtWGDDrjSSlmwKYmC7Q6XP+vRsooBum2WwIsutn1sbw=;
	h=To:Subject:From:Date:From;
	b=OboguVtjI1lKUmH9ewHISFW3SbEkkNwOl3RPVedHEeNKOpm42FXwEw9oR8UzZbf3V
	 ajjuADXuJkxrCydUoHTpF3nEdv7NiPG+q74mjjrBdaa0mnHotm3iJX9T12jR5qrVKN
	 cIsg7w/YaeJGJwnYIuQ79L94XYMTdIPQ1neTSDKrVkQMcllJPenAqZIg5QXIAbcg2a
	 5gAQp7iXBeUJnOZOw5YAvZ2NU1RdeuDU5m88tYeimMCWGuduUUNG2QN4bUqW5XRUFp
	 wlMFYuC5k+1eeTEcGbqOQoamZJq4NkyFRQxSJ8iU093Lmf3c1P7hwjcuGeDKqzByPL
	 lZw+OvfBkDthg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09B9C021A6
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173958653363.11724.8926238493222101819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bf0c06b9f9310ee8e63eb24ca66dabd283bb7c1b47e4c8ec32057e2f5ad5db
Date: Sat, 15 Feb 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739586533
