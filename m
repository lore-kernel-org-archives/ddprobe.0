Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BCE3C108F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782913114; cv=none; b=Oeg6d/yeOEEwM36FUGwfN49+zXPEX1KeBUZ49lg0Hjd/Bax6LpbuE4dXNdO3b1Qe51TbziAGqzAxxqVnCTBH6IKwfLdevmqRqw6ALn2p3FHmZ4MpgBxL2F7uW/wC2y+p4W+ztkBKz26nmInAlcBqW6GJ3Ah1Iye201kqIjPVg6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782913114; c=relaxed/simple;
	bh=EJDQkHM2wK+ttKjk4BtZj+nueXIG0RGLoF6NliL3b7U=;
	h=To:Subject:From:Message-Id:Date; b=uz0H2za39eJy4h1F/yxdRNmRvU8mMaoR+bJBnGHclxvkI2Z045APSeFpVd+TW4h/U8dzp/rg8HZUeXUMv3npuIT5W+8R8v1BO1Y7J3MPtFEWk5N0K8TeLb3BmLnuJbJsPxVDEIfdNsDFfuu+LL0wQBw+7iaZCtGzsVfUOgG8/HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ng5XVZbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ng5XVZbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C728EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782913113;
	bh=EJDQkHM2wK+ttKjk4BtZj+nueXIG0RGLoF6NliL3b7U=;
	h=To:Subject:From:Date:From;
	b=Ng5XVZbRWXz5dQthC9ptU/c96vJYfhLJ3R844zjc2xPuSg3Qtm3jd4h8CjrseBYxQ
	 ozrsIW3oZVjRrn1NfMqyskTOL3GeTid9FjhDcRiDr041nLdBsdUsC5RyvIlEE4+YDH
	 SCHPVXYV2/WcRA2UWdFtQ0s+pkZuRDS79x/uFjWDKVBX3zPnPQWuHG3KyiPQxNuUVE
	 mnndfe8/qpYy3W9Ow04oQkT0q8I65c0+WNCIYPpYE6Fcnge5M3x3AY2xx7QMWjvNKP
	 dDFJ1xbxQ1KwzbjinaWwLjeki51JUi8gg0yXLrGTSrrCT6s72CZQ1bek+n4CaEdzo9
	 0l8BkGvMdz7bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC552C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291311369.26970.3047949671141140150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c35bb40b8716c460db4e690841b96300ffa5b4b5ef0f5c6c09196812a53dba
Date: Wed, 01 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782913113
