Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439AD14F98
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746763194; cv=none; b=WJ04WPSbiw/NNZzDqbTirHN6umhmCIllRvP466WLgyFR5yRWYI8YQosG/g8X7YXnNEDGT8bJLmVsce2VRdRRi6gDSmYPL4awtlQjJlMZTMmRhf0hUSTkmWfwwkCYkt7l8jQaRxa1wxP6drmJH95L9uKdlYFeJCso/ld9IZf60ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746763194; c=relaxed/simple;
	bh=u1Jd33Qb4fJbXnXHQuuowKcPzEBCOws6H7wrtvyk4pk=;
	h=To:Subject:From:Message-Id:Date; b=XIMGeU4b6hfY9FpeXCs6f/+mMV62sRE2g8+txnu4hwZMcv4V829qp42OJg5hkcXGR2AhteJwNaUBbI4vEClmj+Oz+IPsV9RuTUQiFTavob5WGtS67ZurgjQ7MzFGBUEZRenTGT5LKg9AhR4hCOUzCn9+zBk9lghMkPLtIyEEEOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6rqkooK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6rqkooK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746763193;
	bh=u1Jd33Qb4fJbXnXHQuuowKcPzEBCOws6H7wrtvyk4pk=;
	h=To:Subject:From:Date:From;
	b=P6rqkooKTvA+GTjF9foFvE+Sbk+aEbG8YWwD82XU7NuG1GLORa0zzjYkKIVfXrEtX
	 E+wrlQmpFxosXHpeYYjCVP0hbbDH3SkB8fQnHe3QOTa8QtYUAwgzdJ0bxmHRx/Mua5
	 KHAgN1QBosgo30ogM0lA2BpcM8mClbyGMyXKxapXafLTvriW5mHly5FFlxstMfgNvL
	 3O9tOdSdjDd8nbofHqyj0h2/aywGJIH2+peI+Ez0qrbtPAeTQfRKqIyVrrvOtsXXwi
	 2cJR1QzPLGaHk9qCf18RL74jxupqMEjp82786yeksQfZmzd8YdLdD5P2MfuQlYWCBL
	 cDBxcrvnagdrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79EC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676319357.14715.8861172133798200977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2ec4c3cc99af57b1ea7bc523fda6be2d79b232f14089e208a7fe5dd22f7bbb
Date: Fri, 09 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746763193
