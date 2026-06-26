Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBE22F39B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782500914; cv=none; b=aiGfxp4sXtOPz6y5GeMnLE9CkmC7jolbC9nxmIlDPc0HybyNAqTDoLpsbO6CKevCutjG5ZtWGAbRnBz+xhqZJ2C6ctAJqknpdwhuhOBwf5gvsUWETXAWYwwzehpJaFl1Wr4EYP6AN5e8u9gymCrn6+t0emoYo1I1/hfvpbHqxsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782500914; c=relaxed/simple;
	bh=vnjJcRX0EPXbq6Vi/DZHh563MY4nJaktRUnC3UODQoo=;
	h=To:Subject:From:Message-Id:Date; b=B3JlF6HEJ4Wl6IAZNdfDM2ToIQwAGEun+2GrlWguEvKT09be7jkZ3ZB7hIhJTSQu/HB2SueY/MJao0nIaihhojRop9ZrVIn/MBUvSh86P2DLb6F1gT9fiFK3ybEGqKF2gASHQvf/HkP+G3TSm/aaSqqoVhTaanqZrgkRJI7ESQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzaeXl8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzaeXl8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46A3C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782500913;
	bh=vnjJcRX0EPXbq6Vi/DZHh563MY4nJaktRUnC3UODQoo=;
	h=To:Subject:From:Date:From;
	b=uzaeXl8OUX0IeVUdSUmXuMtqpt7KPFCYdogsiB8vWVkxq/dA8HjDqUBq2Mvn7O1GK
	 jVn+O3R33ymIrjRhhXmLKtHszf3JrGt1sYDM73C76CHhu2m+SLTQUaBHaoOw5Z6eon
	 C6NMpx/f/3wMtSwpOUzgoKi9occ4/xj+QyfSQ75F78hHXpe/bo/RXYZuic7SnvLYuy
	 u6gfLVwbDSjf6g8VJ7c5wgd82SXCkXXt24nfs7I16Ezz6bI5uoD3/06FuDuU//kfQG
	 btI9awWevRYtN6+oKqmYLMo/RjGWug9k2Tbvxxqpe0aVhXYvawZK9IQTeWAqIfGedf
	 WT/OlAVqWD8rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA119C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250091375.16315.5007990094530498181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fe1baaf8650071ca56e6eb79965820f441616bc2359a55a0e16687081864ec
Date: Fri, 26 Jun 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782500913
