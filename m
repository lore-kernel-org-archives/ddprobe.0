Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2F313B59B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737133554; cv=none; b=ppGM4Kmz+UCRLEbqi2Q11lrYQIk2/t/EIVe24JM5kBFD3+dIn4+Yhwt4R8iZCjHpXFZCD2FL9jwL//+D/axXVgTBjJTk6nxjHVDDsF6ri9Xlx0n9z9QjrgmeagfTwLS5SDxgXgU7I26xz+muSVu50i0sxx1YE5GBml/KQBLs1UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737133554; c=relaxed/simple;
	bh=b2KUmklmQ3K4aeExQ0OSAz4dd0ZEV+viHgf49wYAhsE=;
	h=To:Subject:From:Message-Id:Date; b=NnrAku0uuIJql/Od8hlFXFCT0XqF/8taANzw8wwqznJObr+HxASvKVjAnO3Sm6aALu/DeUHnD79icWuoiGQxqaMUhbdIL3iA+DqVCscXlNvlE01HbYFqpUq116KCRa+mWfMIxSZyc368SKJulWJXq1yuHcaiB7JxD9dbi3Q21kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN/isjTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN/isjTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41E0C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737133553;
	bh=b2KUmklmQ3K4aeExQ0OSAz4dd0ZEV+viHgf49wYAhsE=;
	h=To:Subject:From:Date:From;
	b=SN/isjTcFBPc5LLQqB78WvPdnWO3KoVtzex29UBONagDRe9hJS6f6RhvhBkOwyQf7
	 2mJEk8EUNhE7Vhl1PjLCSXi5Jy+zuwzlnyFeTv25EtcUQeTjnx4CPt1ry7UCBylDXC
	 wBxc+4l0ToSsomWaBUtty4gCKIu8zu938eIvFlhiGZIv7k7oqpswiQ02ElSUSapeg0
	 h/j+iK5G0vX5aWUju5XyUazssHhUBAqnbhmPHV9audjo3/TG3U+ITxXrLLRFmgIlLi
	 hjcGasx/XwMqKsJRKXZ3qG+m2zQyWE1rAFpiOxmp7nweLHKcIQfQsAEysalh/nMawW
	 hqj2nxrTr2yXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987F5C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713355360.10746.17687947376012093144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4cc62caa6469932b6ef88e90749de14379681e36486643b43aa7c176089e29
Date: Fri, 17 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737133553
