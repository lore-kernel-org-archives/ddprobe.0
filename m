Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8541465A5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753824594; cv=none; b=kUwkINcZOYSMjgL4awRjqIptWy1VZEibx7bUECbLEuSkQLmFQ4jFzo+LMYFQ0hv+DVcOzeKBlBqD9NXh31C9+KsDqbAAZnRhhZL1y1c65Yf/9Dhu0l8x457ZNm7O8JWJQhlRURPM2tF54coU1pKXP6Q7LVtfwdVIUn8SE80U40U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753824594; c=relaxed/simple;
	bh=mq+3fBdhoTkrgFmxbLXP36ylu0FnKs5WXIjpDbxcbc0=;
	h=To:Subject:From:Message-Id:Date; b=GUpm8/s+Y8aX07Hz4JC0h5gGKIKd1uyqNcKfzZtBqw2V+bGmZT1DRXLFS216NjHtVTBQlpYxBOx3B+gQ+KaSkq8+p65XCjt2cfhSEkbgWF1ZawxedCJsRPFIH0pJcZ74JN3hdNBhl6OQzvyPBmNzlvA/tQsRTR2CjM6eiJ+wXxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXDa4XS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXDa4XS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7263C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753824593;
	bh=mq+3fBdhoTkrgFmxbLXP36ylu0FnKs5WXIjpDbxcbc0=;
	h=To:Subject:From:Date:From;
	b=sXDa4XS2ukVxaaDi/OLiNIG5oBN80qKxiWqZffOrGLgNmixXRudo0Vo9YP8UafwY+
	 FpvhPuKv+YUxZ5n8DgqDiVibqkq7fgvGC3WLnt/694hLRb6biHopYfwyIj/qYFLc+6
	 K1mgefmkgfgAQ/RRJoEqkN8mj0rxbSTT+OdLApAGctYe0jjozSj+jzSukfFz0oNZFa
	 xvQhNNRoOoHgIyCyoabfhj99pJBX6AesunI1UTuWRTPI0/istiRx/HElwbdDJ1loWu
	 I1tq+/Dz2JRXP0gyj//R/+3uRKqmG6tH9cwldVsAqExwVsn1LdZBpaW/2eyTEQ232f
	 c4hyBg5qix5eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B0EC87FCC
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382459359.25506.8076584629655212666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49bf8edeba11f67d670546329193910fc1b3008b52c59de401cf6d2fb00d1688
Date: Tue, 29 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753824593
