Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E9935946
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752358794; cv=none; b=m3oPlNKcTnIzRCn8RJbkPqiW5jYMPAOvYhew5bncDayLWwb3PFmqAyFcR3VINdSzwC6w1kEblt0zq14BeHU0zTb0NnBhp+U9ol6nndJJ0Fg2nLEB9W0h8IeFMK15tYOSBUiA72gKWzC8MeZxmXcap5RXXjMfEZCRZPAo+7NT/Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752358794; c=relaxed/simple;
	bh=8PvLvkDDYokoZyg8Cj4F7F3YyLlmllTKmcyIMzk1nDg=;
	h=To:Subject:From:Message-Id:Date; b=Ag37jhi1QAByqCQGra0qT9ZrJredzFgp6OdPo6AG5GqhEEITsI6ChHVux1sqk1HXpqt05tuKDB+47z+sl8kDl/PXxHLaaAjgS/SZqmu08krmbrnXnl3aHHv0cspyDRiAD0siz6vesCVWgFiAIEdjZCrPjYupolDtSDdx80Sbi0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS0Cg3Aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS0Cg3Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8509C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752358793;
	bh=8PvLvkDDYokoZyg8Cj4F7F3YyLlmllTKmcyIMzk1nDg=;
	h=To:Subject:From:Date:From;
	b=jS0Cg3Aa+89T8eOctQaaH3GMSHnQaWaQ6+6CQW+WwXUwEvgCqOPNIB78xMQGN7uzb
	 EWBynGW3qaEj+l95kKk6Lt0amQ/ZvPcM8HgFhCVGwj8OKTqnD1+uN9rtcrA/EwXkzu
	 hucy5ViCm065qIwDRQurKShX9MTWjsdVroYmbAJNiYpcH57QrQFqfA45aZzqXqPxG4
	 WnIDwZcIsWJX7I0zcEnZJrd0AIIYe7ohoZ017n7yC0ukyfciEOJwpxtpvdgZ5Ar+Qs
	 olberVuw+LXnUtGY/id26P3bKf4riLMM7rAZfVna/r525kMlApHHGMv6IzPnrf6zSt
	 jzn8IJOr0qVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A2C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235879357.17000.2147084033013090087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6510f64acba0c9bf134011e68e4f8e22d72e2d84ee60fda9589881153818803
Date: Sat, 12 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752358793
