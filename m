Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552D54ACC87
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788375634; cv=none; b=FTHwqOUJT5TQ1O5/sIMbAwWmcedFkr0VxqN4d6hVv9QJsiexjo1wNHbI2Qei0nC9TEdxSK1ujdK9fiLQfNKkutoM0cmqchS+ybaJusRXZuYU8PObp9x0wbOodj70VW+jLGLUAfBckZykQQ1vZcMVUelN7txawSLUWAJnhJUJ66g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788375634; c=relaxed/simple;
	bh=ezBuJtawC+10FrR0/NaIrikWmxB+5r+STfjWHqFGrEI=;
	h=To:Subject:From:Message-Id:Date; b=OaH9RnB0XIRiCQ+K0P9uj7eHUCy2bwNF4qwoH5khEAr18dwpVE0EDSPCFUaM4Rj9SAu62P9Xkc8lNSZ8h3+VYeZjpbGdpuzcHJN+ovBx/ngTn/rUyPnuCiJaNWrD3bAu3PcRvomcM9cAocnrHDn6iasN5K0Ah3U5HUCPeBexRAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CANwau/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CANwau/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD976C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788375633;
	bh=ezBuJtawC+10FrR0/NaIrikWmxB+5r+STfjWHqFGrEI=;
	h=To:Subject:From:Date:From;
	b=CANwau/gBcpp4Ts166d7391XJEoWxbuXkX1eNiKIPOpXvJ0DYtN1H+HXEzEStzsQt
	 nWyCusGMO4UWOy2ZkaNIiZfRkTRZ73pIn0gH5y0C/fkztnYQcMwoY9+Y54vNiuaJdt
	 G7NDEGKup+LtAlxB9EnGQEutZ0KDasmcre7ERlLG3thV5Hf3xkd5v6i8NgAt0B7zXV
	 r+Q+PkiCBROLZ21eZCoph81DWDKZpaIUJ12e5lmrEgJLslTZ41HtwC0Kt0KcFjRGyY
	 ntBZZLPuE8NQvmkLIqpkUT5lsbEbYqWGsrZ9Z04dGYGF/tVHX7yLPhpXrJWnLgfrm4
	 lfA5bi17epyhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F6DC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837563368.19706.5367304790758332803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a899a524165b4db471518b096c08011da9f86af5090e21672e8743283a334af8
Date: Wed, 02 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788375633
