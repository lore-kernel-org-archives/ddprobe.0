Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367F510A1F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751962194; cv=none; b=klxTA1y0XC6KY1eJBV2mp+j4qGLHNHRMrI2IV/zHp53vdfL0Znayx4ISSTXlfP6An8nqdeZ/9Lhuzc3jOlmdZxOPrdqvfsXkorAdU/OPIsuKxvLaPCXdJLsGjU1Gi9JzquwyOdQUQOAKAJiNNauG03W7nQBzhq9SbNa3RZQ65xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751962194; c=relaxed/simple;
	bh=NDPzq5vovu8aO+ge5mJFk0nhnBfAXjYC59umgHSVhuU=;
	h=To:Subject:From:Message-Id:Date; b=KZfD1Szpc0ULmJbtbfEZtT7TtRBkl9S/hyQxBx43BGG9iUzlZn0kxTe7OpTic9baUHHBX3d/KcC3vbXyMw0ZiJC7u0E6RZt8FAwaezpDSBBExWxXsVq2FK7zdIwkXXdWAGAABbWdsqA0PAoWBoLhvPnAiySD0cVdhe1ca9y2W88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lxl0XPtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lxl0XPtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C8CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751962193;
	bh=NDPzq5vovu8aO+ge5mJFk0nhnBfAXjYC59umgHSVhuU=;
	h=To:Subject:From:Date:From;
	b=Lxl0XPtKEO3nMiOLbc79HveZH8Xf+0U2WQCHJt56lOOWJh26wbque32yWHzfGDKQW
	 yZjmy6G6w2lOGj/QQ17D0Z4DGfuYdX3StUjOFm/U9kMx7LlpjqrD5S1QauF5L4IHts
	 dJ1cKjkvpBWeOMFjJ5ADa3VlK4DJfuxcXemMkUdpdScwKa17QGsYyaUkfGJz6rxiXQ
	 t9+3g8n3KsI6Ota7SQ+O/DnWyD6FbdF3X8J0pbyuXekJwD1C+ojP4EE7H1U0V2gy9B
	 6r2BXlWTTVvUnBXdDkCkg55cyKvl4aLJHENTxSJJCFaoUHT0SfyAefQZwJy+I+nRaw
	 mshK2X9Tot8ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93288C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196219359.6689.10798512062567517333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28aee28811390f347deba2bf899bcdfffb17a312d1292f1565496f42be1d2820
Date: Tue, 08 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751962193
