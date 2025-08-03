Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F8B221280
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754223594; cv=none; b=aVn9jOJ4byNDyUwQBi9zvcid705+K2VFO5bTMiYBCAa3QY42RxNDUdbJnjbeIOOkbOI6m2IzlHJmRm0aqD2b+jks500jELkAR09Q8/licnY41snWddg3+x8mWvP0igwHnl7ZTDaQQQlmnEem6yu+xuyOJqhd4EQ6sGGHlsf1V94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754223594; c=relaxed/simple;
	bh=wUGh8JkF/osD6rS0NjJP+VuQxO36/yM86k9z/asQPXg=;
	h=To:Subject:From:Message-Id:Date; b=id9XLKi/TzJ+WqlNZAX16r4/bB+yIHtE6LiCysGo5d+k7/YlUJ9nH0YBbjjqqk6dyy9hcJ5HEYCrwuHnpdWnoM+RYKNl5GClzxoV7s5F3DyrOrv+F91hfE1vBJ7sEHWKj0lKlwIjzasNuB30ihBNV2D464F7wWYVndWb3LRyvUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgnueDuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgnueDuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB412C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754223593;
	bh=wUGh8JkF/osD6rS0NjJP+VuQxO36/yM86k9z/asQPXg=;
	h=To:Subject:From:Date:From;
	b=qgnueDufKYi/edW8i/2GkAYXLjAag5+dbQVYhjqDJA72y7s3+ANOQ3VpV5rIMOjZ7
	 ACXrfq27tg7eBgjpyT7lEVz83FxSi2Fteslo83scI3ulj4guC5xZr/spwETP8H51tx
	 CnBCWhXDp76X7K8h08/N9mcKfo/aFDG9kfbvHRj0r2aKNlocz4MsbG6Z0ffbCMY0B2
	 nSoxLeVWRQ7qf8Hekby9x7T/Zdi4/oQ9lDgWOtKahCAmveByEh5813bOykuUKiYZpR
	 3nr5CAQFr5VrdQnmgNTdS4DAF2dWIvJuYBXzixiBwASbssL1OaeDzvJ5cGNDM85LUk
	 KS0h+cHVdyoqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C5C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422359358.31322.7752276003741796341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68123b02a868f0fef00df46624eb1d498873c2b11b66a1fd20f0dd787815063d
Date: Sun, 03 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754223593
