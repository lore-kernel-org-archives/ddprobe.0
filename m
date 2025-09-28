Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373301E22E9
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759042794; cv=none; b=UKeQW9ncuCNhxE1ooDX6DRPG3ISM2u/xSJdY+wMvs8JKR8ZP7kQ09z6BAa1ulkdoc1SJV+jfBya8TKrGasJ0YNMG5/NWeF7oC657UT/LYnOFfRfNgNKyeDfGTebKsqYQYpcW5+to8QmXqxIho+7LlwzQPLS5uQVMFjVDGVe5DaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759042794; c=relaxed/simple;
	bh=cuUbyA+mSx8Vts0ef18aI7egjMj/bWBAR83+it8eUUI=;
	h=To:Subject:From:Message-Id:Date; b=b16KmGOoX9ooU7ach+wNa1yPhXR5xB1NQQ10LtkcG7IqSDlfJrbel0AY+YQEembGcP+IIqxvEHamgiIkoEMPhK+HKxhIvgAdudFdjWYNT+JNB3O8s9YTw99DqF8UxV71lpwysVNzSIYaOOyYMeGK0ExfAPveXqVVitY/GFo0cW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4QoW9/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4QoW9/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EDBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759042793;
	bh=cuUbyA+mSx8Vts0ef18aI7egjMj/bWBAR83+it8eUUI=;
	h=To:Subject:From:Date:From;
	b=G4QoW9/IvIAfjCOwzjShW0XW8uZlY9gSI0bvlMGxpwBZOmDn2ZnKLqee76u67ENKd
	 2jj619ReyKfJNQ99S2V3aTFgtiWhgDx8EpIk7LdiKZOy03qnVm+UDjELIsVh5z6PL9
	 DaPFdfp8EID81WR5DqTbydFWZeKSz7gAr6M1GidF/r1ze5L/8CYPHLiuMMigeWg9pw
	 DiRkIUMAwkp/9GNt9xNYyVrphjkN5AdgS4yQZh/he08mubJUmb27DhYSKm7XHVEquv
	 GoBU9NFA0C4ZARA4Is4B4ylNo14JXr4VOspsLWeRbIv8twK+DGHyYbDvN5DUuff5qj
	 6p/Epae43qVCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E49CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904279357.24293.8922105023320464297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f32c7d4814f2e2bb56abc5bac0b4d6991b06ebc989922e0ea337e5aa9283f8b
Date: Sun, 28 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759042793
