Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6104F347BA7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789895434; cv=none; b=GWmrgotbFDj29c3fsAG1m7ZfAfx4V7eG4GmnAUCWsdUO54yuwbSXvCKgSOg0IqTOQ028L85Vop+wrjhhNZQFhqdapW2hugPlzzxAZ4ytNWexjGNhUq1rngw5oGmWfTRUELCZajKkReOL+jwWroegm0DeLoNloscC2Ba1yIjkKqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789895434; c=relaxed/simple;
	bh=klev2Tn0YKyWETv7/fA0tZYa4AyoZbzy99Qdu3uBXUE=;
	h=To:Subject:From:Message-Id:Date; b=tv8dkj74jqU2tQQo3aHtnG4JXHLkbJGT8IDDFYlrf+weSb9EhEoryWBxnbNI8YVNeiZEvrorL6vcwBG4e3h5VgQNBYOTNX2I8PROsyYrPFcp+Lm3E599r5i6SSWDKppVzmmPlUlEHwLw0sv1wkj3Plg5pN2G5MpgTGQK7gLI0cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx7MZX+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx7MZX+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2753C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789895433;
	bh=klev2Tn0YKyWETv7/fA0tZYa4AyoZbzy99Qdu3uBXUE=;
	h=To:Subject:From:Date:From;
	b=kx7MZX+xg0UuYliQcTytqLYvr2tf/QmobxVSg9+XZSOnwWTi9QV5gH6Xc8QyMNe+p
	 YzqbSN699E6Asuo/cbBPVN++akgfm+Cx8VHoP7M0uBQjVM9lWwEY4te79w+/droiLg
	 V382yueWXUKTXuxyWPkEt0HuREMlvSuwcIUsOlxu0i3cy9NZJXTbhnsdZCZGH/Ljqo
	 Icoa6ywOysvprprGO4hMcbYJ63TIQ3yJKrMAFnc1XZRpyrx+I9I2hNjBNKfrZh405Z
	 uELK2rsbOrIrT14aswsLP7ykoEWhDclKen8PFhlk43+uOHNTSKjqp1HlWIjUCJ7Qqw
	 p1o9srlb8J1og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE51C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989543368.878.1457748825244661021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360d98c6adeb9d6312606a87ed423a92c517c0c4a9d4b6b14267020411cf5033
Date: Sun, 20 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789895433
