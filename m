Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E25492180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784041714; cv=none; b=rZiJTjTQAyllWGqYNiRjfZaYHl/wNb4Fb28yyoRIhdV3dbmAZcTj2O+xos3NpNM73jRUAF3ID39Z0QQPN2FAB7LkLslDIrBhfiDJJ+rj49DBsIi6/ubcFm28NEUjyaRqfOoPFRByZHct94ZrzyeicQAGKAyl0K5LCxH4hoJpOJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784041714; c=relaxed/simple;
	bh=DBde74BHVOOpyDnQrtlPavxLGGtMaWv0XpGHbopjx5E=;
	h=To:Subject:From:Message-Id:Date; b=YUscy/M9YSjqWnbgHemqWNHmKeEvfdCCYGHY+zz5Jwj9YhE2SjbaKydQZsbMtwq76pF2ASLXLFHxIocUSyXsC+NI7JS0LRaKoqvFoxVUogtwM4o7B6P51IJUbvJ3Zx28IamGXd57z+eo1QYok+0mzRZ5rrqec+iINvXcF1b7y0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ag0V7sK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ag0V7sK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFF4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784041713;
	bh=DBde74BHVOOpyDnQrtlPavxLGGtMaWv0XpGHbopjx5E=;
	h=To:Subject:From:Date:From;
	b=Ag0V7sK9R8Mnn+eMxzb7VSXOZIvYr89QLk/KPxuyLi/+6Q3wQ/rElf3f6LXhEVOs4
	 Udl/SwkHPA0cFM3ZN8Evv19gNNpSfh5z9Qk4DCk85qPK9uMRynwnxqFOVqvFcKsRot
	 oczZLrW4VM9YCBEtShapcaFVWA1MJiO2MU1AOsE0lYa/SDVjsGOMZSKehZUJXueADp
	 sxdSpNKyNq60+10Kl1HZO5c+xaWDQLGii1ipeNlR5yNd33Gk1sXfR7ENTkxMjeoV7x
	 Q0EsuRi0VxqxI2W48KQ+0aDCjW1qDUCMzBxr4KHs9ILSjVNeLN0rHCt8r25n4OvlhC
	 sjsCi89tNlvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5593C44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404171373.16919.14534570444392281016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae62bb3e4e87492adfb6a84a7b4a15a61cbdb8ede335961926b4c82f224a83f
Date: Tue, 14 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784041713
