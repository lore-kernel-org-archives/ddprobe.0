Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223DD32C936
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761801594; cv=none; b=okV+Tx0lY/33EzpZfNm+zRXP8gpwdOwLc+L6yRM4jRUHehtF4k6uQWGFBLCFmRXkjNrxiDUtGmvdc77jBH2MiYCiU6Muv6bMrmEn0I5V7a1Z5sxQNvZJVTRjuBV4+9TxdttJLoPO0fQlkuKEW+sbQloAT4xGCPVHhba4T/j/gig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761801594; c=relaxed/simple;
	bh=1gRuwkxiHKUdJnkp8nxABriNRUSZJBOyh4VgUixDJD4=;
	h=To:Subject:From:Message-Id:Date; b=UjqAjldribY4NCChFFO157p+zQTEkOVcu5xexeQP2JzNEmaJ+kOKjz3ktM31yumPA8vVnQEfpO8i1ca7uA7896ihzRiGqztQe6+rZMpAy4onwFo1YeqrfcHNysZwevR0Ladum2Gqv4c3gAztDmCC1SfGElUTv361WZX+fA8bQsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pt9n08Ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pt9n08Ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8F0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761801593;
	bh=1gRuwkxiHKUdJnkp8nxABriNRUSZJBOyh4VgUixDJD4=;
	h=To:Subject:From:Date:From;
	b=pt9n08TiS9iZGAzgH3lcNvsRI6Qm/+mdrGgIKESTHOCreGdXHQbpDx+bzpyLjhRUg
	 JI1ej6NXd1Ou0irAUSwgZVws8EEvw9z+BnrIQPGyAgo2MAqbP3R/VE6C6si9JAvQl3
	 SVnTGNjRdqPrhVe7SotUdoGmwdw+1gT9oDp/78wIlc0Ee5m5Fz2HUmlrfW3C3BiKwr
	 81vKpuxUWMrsju+eApcA0yckUnGXevl09KvEkJypEuPkpfvo0SohxSHHzCbaZqAUuH
	 zthRC8x9nZQLU4/bbZ0N9VfwWZuIC/zulM5/+v0iRA8pldke4xqyALKKvmz38qFwR5
	 Jfm960lY5yWmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99632CCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180159361.9609.2084035459821284968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9b97674c4fa1217fcabce19f5944c2061096c6527368f465b0be5db3b854eb
Date: Thu, 30 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761801593
